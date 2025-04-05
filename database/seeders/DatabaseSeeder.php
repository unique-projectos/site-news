<?php

namespace Database\Seeders;

use Botble\ACL\Database\Seeders\UserSeeder;
use Botble\Base\Supports\BaseSeeder;
use Botble\Language\Database\Seeders\LanguageSeeder;

class DatabaseSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->prepareRun();

        $this->call(UserSeeder::class);
        $this->when(is_plugin_active('language'), fn () => $this->call(LanguageSeeder::class));
        $this->call(PageSeeder::class);
        $this->when(is_plugin_active('ads'), fn () => $this->call(AdsSeeder::class));
        $this->when(is_plugin_active('gallery'), fn () => $this->call(GallerySeeder::class));
        $this->when(is_plugin_active('contact'), fn () => $this->call(ContactSeeder::class));
        $this->when(is_plugin_active('blog'), fn () => $this->call(BlogSeeder::class));
        $this->when(is_plugin_active('member'), fn () => $this->call(MemberSeeder::class));
        $this->when(is_plugin_active('comment'), fn () => $this->call(CommentSeeder::class));
        $this->when(is_plugin_active('blog'), fn () => $this->call(MenuSeeder::class));
        $this->when(is_plugin_active('post-collection'), fn () => $this->call(PostsCollectionsSeeder::class));

        $this->call([
            WidgetSeeder::class,
            ThemeOptionSeeder::class,
            SettingSeeder::class,
        ]);

        $this->finished();
    }
}
