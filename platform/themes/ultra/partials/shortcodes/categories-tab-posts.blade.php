<div class="pt-50 {{ $shortcode->background_style }}">
    <div class="container">
        <div class="row">
            <div class="col-lg">
                <div class="row d-flex justify-content-between">
                    <div class="col-lg-3 col-md-3">
                        <div class="widget-header position-relative mb-30">
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-9">
                        <!--Tab Nav  -->
                        <nav class="tab-nav style-1">
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                @foreach($categoriesData as $item)
                                    <a class="nav-item nav-link @if($loop->index == 0) active @endif"
                                       id="nav-category-{{ $item['category']->id }}-tab" data-toggle="tab"
                                       href="#nav-category-tab-{{ $item['category']->id }}" role="tab"
                                       aria-controls="nav-category-{{ $item['category']->id }}" aria-selected="true">
                                        @if($loop->index == 0)<i class="mr-5 ti-pulse"></i>@endif {{ $item['category']->name }}
                                    </a>
                                @endforeach
                            </div>
                        </nav>
                        <!--End Tab Nav  -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <!-- Tab content -->
                        <div class="tab-content" id="nav-tabContent">
                            @foreach($categoriesData as $item)
                                <div class="tab-pane fade show @if($loop->index == 0) active @endif"
                                     id="nav-category-tab-{{ $item['category']->id }}" role="tabpanel"
                                     aria-labelledby="nav-{{ $item['category']->id }}-tab">
                                    <div class="block-tab-item post-module-2 post-module-1">
                                        <div class="row">
                                            @if(!empty($item['posts'][0]))
                                                <div class="col-md-6">
                                                    <div class="post-block-style">
                                                        {!! Theme::partial('components.post-card-1-block', [
                                                        'post' => $item['posts'][0],
                                                        'categoryInImage' => true
                                                        ]) !!}
                                                    </div>
                                                </div>
                                            @endif
                                            <div class="col-md-6">
                                                <div class="col">
                                                    @foreach ($item['posts'] as $post)
                                                        @if($loop->index >2)
                                                        <div class=" d-flex col-lg-10 mt-2 col-md-6 col-sm-6 sm-grid-content mb-30" style="margin-left:-4%;">
                                                            {!! Theme::partial('components.post-card-1-block-simple', [
                                                            'post' => $post,
                                                            'imageType' => 'medium'
                                                            ]) !!}
                                                        </div>
                                                        @endif

                                                    @endforeach
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                        <!-- End Tab content-->
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
