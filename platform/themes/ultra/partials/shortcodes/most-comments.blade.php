<div class="pt-50 pb-50 {{ $shortcode->background_style }} d-none">
    <div class="container">
        <div class="sidebar-widget">
            <div class="widget-header position-relative mb-30">
                <h5 class="widget-title mb-30 text-uppercase color1 font-weight-ultra">{!! clean($shortcode->title) !!}</h5>
                <div class="letter-background">{!! clean($shortcode->subtitle) !!}</div>
            </div>

            <div class="post-carausel-2 post-module-1 row">
                @foreach (get_most_comment_posts($shortcode->limit) as $post)
                    <div class="col">
                        <div class="post-thumb position-relative">
                            <div class="thumb-overlay img-hover-slide border-radius-5 position-relative lazy"
                                data-bg="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}"
                                style="background-image: url({{ RvMedia::getImageUrl(theme_option('img_loading')) }})">
                                <a class="img-link" href="{{ get_external_link($post) }}" {{ is_external_link($post) ? 'target="_blank"' : '' }}></a>
                                @if(is_external_link($post))
                                    <span class="top-right-icon background10"><i class="ti-link" aria-hidden="true"></i></span>
                                @endif
                                <div class="post-content-overlay">
                                    <h6 class="post-title">
                                        <a class="color-white" href="{{ get_external_link($post) }}" {{ is_external_link($post) ? 'target="_blank"' : '' }}>{{ $post->name }}</a>
                                    </h6>
                                    <div class="entry-meta meta-1 font-small color-grey mt-10 pr-5 pl-5">
                                    <span
                                        class="post-on">{{ $post->created_at->format(post_date_format(false)) }}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
