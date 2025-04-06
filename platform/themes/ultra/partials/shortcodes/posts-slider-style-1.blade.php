<div class="home-featured mb-2" style="margin-top: -10%;position:relative;height: 400px!important;">
    <div class="container">
        <div class="row h-auto">
            <div class="col-12">
                <div class="featured-slider-1 border-radius-10">
                    <div class="featured-slider-1-items mx-2" style="margin-top: 1%;margin-bottom:1%;" >
                        @foreach ($posts as $key => $post)
                            <div class="slider-single " >
                                <div class="row no-gutters">
                                    <div class="col-lg-6 col-md-12 order-lg-1 order-2 align-center-vertical">
                                        <div class="slider-caption">
                                            @php $category = $post->categories->first(); @endphp
                                            @if ($category)
                                                <div class="entry-meta meta-0">
                                                    <a href="{{ $category->url }}">
                                                        <span
                                                            class="post-in background1 color-white font-small">{{ $category->name }}</span>
                                                    </a>
                                                </div>
                                            @endif
                                            <h2 class="post-title"><a href="{{ get_external_link($post) }}" {{ is_external_link($post) ? 'target="_blank"' : '' }}>{{ $post->name }}</a></h2>
                                            <div class="entry-meta meta-1 font-small color-grey mt-20">
                                                <span class="post-on">
                                                    <i class="ti-marker-alt"></i>{{ $post->created_at->format(post_date_format()) }}
                                                </span>
                                                <span class="hit-count">
                                                    <i class="ti-bolt"></i>{{ number_format($post->views) }} {{ __('views') }}
                                                </span>
                                            </div>
                                            <p class="excerpt font-medium">{{ clean($post->description ) }} </p>
                                        </div>
                                    </div>
                                    <div class=" col-lg-6 order-lg-2 order-1 col-md-12 align-center-vertical">
                                        <div class="img-hover-scale">
                                            <span class="top-right-icon background8">
                                                <i class="ti-heart"></i>
                                            </span>
                                            @if(is_external_link($post))
                                                <span class="top-right-icon background10"><i class="ti-link" aria-hidden="true"></i></span>
                                            @endif
                                            <a href="{{ get_external_link($post) }}" {{ is_external_link($post) ? 'target="_blank"' : '' }}>
                                                @if ($key)
                                                    <img class="img-fluid {{ $key ? 'lazy' : '' }}"
                                                         data-lazy="{{ RvMedia::getImageUrl($post->image, 'medium_large', false, RvMedia::getDefaultImage()) }}"
                                                         src="{{ RvMedia::getImageUrl(theme_option('img_loading')) }}"
                                                         alt="{{ $post->name }}">
                                                @else
                                                    <img class="img-fluid"
                                                         src="{{ RvMedia::getImageUrl($post->image, 'medium_large', false, RvMedia::getDefaultImage()) }}"
                                                         alt="{{ $post->name }}">
                                                @endif
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
               
                </div>
            </div>
        </div>
        <div class="widget-header position-relative  m-4">
            <h5 class="widget-title mb-10">News</h5>
            <div class="bt-1 border-color-1"></div>
            <br>
        </div>
    </div>

</div>

