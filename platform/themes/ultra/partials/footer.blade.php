<footer style="background:#005236;color:white;">
    <!-- Footer Start-->
    <div class="footer-area fix pt-50 " >
        <div class="container">
            <div class="row d-flex justify-content-between">
                <div class="col-lg-4 col-md-6 mb-lg-0 mb-30">
                    {!! dynamic_sidebar('footer_sidebar_1') !!}
                </div>

                <div class="col-lg-4 col-md-6 text-white">
                    {!! dynamic_sidebar('footer_sidebar_3') !!}
                </div>

                <div class="col-lg-4 col-md-6">
                    {!! dynamic_sidebar('footer_sidebar_4') !!}
                </div>
            </div>
        </div>
    </div>

    <!-- footer-bottom aera -->
    <div class="footer-bottom-area ">
        <div class="container">
            <div class="footer-border pt-30 pb-30">
                <div class="row d-flex align-items-center justify-content-between">
                    <div class="col-lg-12">
                        <div class="footer-copy-right">
                            <p class="font-medium text-center text-white">
                                {!! clean(theme_option('copyright')) !!} {!! clean(theme_option('designed_by')) !!}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End-->
</footer>

<!-- End Footer -->
<div class="dark-mark"></div>
<!-- Vendor JS-->
{!! Theme::footer() !!}

<script>
    "use strict";
    function setCookie(cname, cvalue, exdays) {
        const d = new Date();
        d.setTime(d.getTime() + (exdays*24*60*60*1000));
        let expires = "expires="+ d.toUTCString();
        document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
    }

    setCookie('account_logged', {{ auth('member')->check() ? 1 : 0 }});
</script>
</body>

</html>
