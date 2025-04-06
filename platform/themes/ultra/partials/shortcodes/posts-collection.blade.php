<div class="pt-50 pb-50 {{ $shortcode->background_style }}">
    <div class="container">
        <div class="sidebar-widget">
            <div class="widget-header position-relative mb-30">
            </div>

            <div class="row">
                <div class="col-12">
                </div>
                @if(!empty($postCollectionData))
                    @foreach($postCollectionData->posts as $post)
                    @if($loop->index >0) 
                    <div class="col-lg-4 col-md-6 col-sm-12 mb-30">
                        {!! Theme::partial('components.post-card-1-block', [
                        'post' => $post,
                        'showDescription' => false,
                        'dateLongFormat' => false,
                        ]) !!}
                    </div>
                    
                    @endif
                    @endforeach
                @endif
            </div>
        </div>
    </div>
</div>
