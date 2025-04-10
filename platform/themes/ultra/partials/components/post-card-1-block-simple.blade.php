<div class="  post-thumb d-flex border-radius-5 img-hover-scale mb-15">
    <a href="{{ get_external_link($post) }}" {{ is_external_link($post) ? 'target="_blank"' : '' }}>
        <img class="lazy col-lg-12"
            data-src="{{ RvMedia::getImageUrl($post->image, !empty($imageType) ? $imageType : 'thumb', false, RvMedia::getDefaultImage()) }}"
            src="{{ RvMedia::getImageUrl(theme_option('img_loading')) }}"
            alt="{{ $post->name }}">
    </a>
    @if(is_video_post($post))
        <span class="top-right-icon background3"><i class="ti-video-camera"></i></span>
    @endif
    @if(is_external_link($post))
        <span class="top-right-icon background10"><i class="ti-link" aria-hidden="true"></i></span>
    @endif
</div>
<div class="post-content media-body col-12">
    <h6 class="post-title mb-10 text-limit-2-row">
        <a href="{{ get_external_link($post) }}" {{ is_external_link($post) ? 'target="_blank"' : '' }}>{{ $post->name }}</a></h6>
    <div class="entry-meta meta-1 font-x-small color-grey d-flex">
        <span class="post-on">{{ $post->created_at->format(post_date_format(false)) }}</span>
        <span class="hit-count"><i class="ti-bolt"></i>{{ number_format($post->views) . ' ' . __('views') }}</span>
    </div>
</div>
