<?php

namespace Botble\Comment\Providers;

use Botble\Base\Supports\Helper;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\Blog\Models\Post;
use Botble\Comment\Facades\BbComment;
use Botble\Comment\Models\Comment;
use Botble\Comment\Models\CommentLike;
use Botble\Comment\Models\CommentRecommend;
use Botble\Comment\Repositories\Caches\CommentCacheDecorator;
use Botble\Comment\Repositories\Caches\CommentLikeCacheDecorator;
use Botble\Comment\Repositories\Caches\CommentRecommendCacheDecorator;
use Botble\Comment\Repositories\Eloquent\CommentLikeRepository;
use Botble\Comment\Repositories\Eloquent\CommentRecommendRepository;
use Botble\Comment\Repositories\Eloquent\CommentRepository;
use Botble\Comment\Repositories\Interfaces\CommentInterface;
use Botble\Comment\Repositories\Interfaces\CommentLikeInterface;
use Botble\Comment\Repositories\Interfaces\CommentRecommendInterface;
use Botble\Page\Models\Page;
use EmailHandler;
use Illuminate\Cache\RateLimiting\Limit;
use Illuminate\Foundation\AliasLoader;
use Illuminate\Routing\Events\RouteMatched;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\ServiceProvider;

class CommentServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register(): void
    {
        Helper::autoload(__DIR__ . '/../../helpers');

        $this->app->bind(CommentInterface::class, function () {
            return new CommentCacheDecorator(new CommentRepository(new Comment()));
        });

        $this->app->bind(CommentLikeInterface::class, function () {
            return new CommentLikeCacheDecorator(new CommentLikeRepository(new CommentLike()));
        });

        $this->app->bind(CommentRecommendInterface::class, function () {
            return new CommentRecommendCacheDecorator(new CommentRecommendRepository(new CommentRecommend()));
        });

        AliasLoader::getInstance()->alias('BbComment', BbComment::class);

        BbComment::setAuthProvider();

        $this->configureRateLimiting();
    }

    public function boot(): void
    {
        $this->setNamespace('plugins/comment')
            ->loadAndPublishConfigurations(['permissions', 'email'])
            ->loadMigrations()
            ->publishAssets()
            ->loadAndPublishTranslations()
            ->loadAndPublishViews()
            ->loadRoutes(['web', 'ajax']);

        $this->app->register(EventServiceProvider::class);

        $this->app->booted(function (): void {
            $this->app->register(HookServiceProvider::class);

            if (is_plugin_active('blog')) {
                Post::resolveRelationUsing('comments', function ($model) {
                    return $model->morphMany(Comment::class, 'reference');
                });
            }

            Page::resolveRelationUsing('comments', function ($model) {
                return $model->morphMany(Comment::class, 'reference');
            });
        });

        $this->app['events']->listen(RouteMatched::class, function (): void {
            dashboard_menu()
                ->registerItem([
                    'id' => 'cms-plugins-comment',
                    'priority' => 5,
                    'parent_id' => null,
                    'name' => 'plugins/comment::comment.name',
                    'icon' => version_compare(get_core_version(), '7.0.0', '<') ? 'fa fa-comments' : 'ti ti-message-circle-2',
                    'url' => route('comment.index'),
                    'permissions' => ['comment.index'],
                ])
                ->registerItem([
                    'id' => 'cms-plugins-comment-comment',
                    'priority' => 1,
                    'parent_id' => 'cms-plugins-comment',
                    'name' => 'plugins/comment::comment.name',
                    'icon' => null,
                    'url' => route('comment.index'),
                    'permissions' => ['comment.index'],
                ])
                ->registerItem([
                    'id' => 'cms-plugins-comment-setting',
                    'priority' => 5,
                    'parent_id' => 'cms-plugins-comment',
                    'name' => trans('plugins/comment::settings.name'),
                    'icon' => null,
                    'url' => route('comment.setting'),
                    'permissions' => ['setting.options'],
                ]);

            EmailHandler::addTemplateSettings(COMMENT_MODULE_SCREEN_NAME, config('plugins.comment.email', []));
        });
    }

    protected function configureRateLimiting(): void
    {
        RateLimiter::for('comment', function () {
            return Limit::perMinute(20);
        });
    }
}
