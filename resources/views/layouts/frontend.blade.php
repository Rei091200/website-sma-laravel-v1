<!doctype html>
<html lang="en">

    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="shortcut icon" href="{{asset('/frontend')}}/img/fav.png">

        <meta name="author" content="colorlib">

        <meta name="description" content="">

        <meta name="keywords" content="">

        <title>Education</title>

        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">

            <!-- CSS -->
            <link rel="stylesheet" href="{{asset('/frontend')}}/css/linearicons.css">
            <link rel="stylesheet" href="{{asset('/frontend')}}/css/font-awesome.min.css">
            <link rel="stylesheet" href="{{asset('/frontend')}}/css/bootstrap.css">
            <link rel="stylesheet" href="{{asset('/frontend')}}/css/magnific-popup.css">
            <link rel="stylesheet" href="{{asset('/frontend')}}/css/nice-select.css">
            <link rel="stylesheet" href="{{asset('/frontend')}}/css/animate.min.css">
            <link rel="stylesheet" href="{{asset('/frontend')}}/css/owl.carousel.css">
            <link rel="stylesheet" href="{{asset('/frontend')}}/css/jquery-ui.css">
            <link rel="stylesheet" href="{{asset('/frontend')}}/css/main.css">
    </head>

    <body>
        <header id="header" id="home">
            <div class="header-top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-sm-6 col-8 header-top-left no-padding">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></a></li>
                                <li><a href="#"><i class="fa fa-dribble"></a></li>
                                <li><a href="#"><i class="fa fa-behance"></a></li>
                            </ul>
                        </div>
                        <div class="col-lg-6 col-sm-6 col-8 header-top-left no-padding">
                            <a href="tel:+953 012 3654 896"><span class="lnr lnr-phone-handset"></span> <span class="text">+953 012 3654 896
                            </span></a>
                            <a href="mailto:support@colorlib.com"><span class="lnr lnr-envelope"></span> <span class="text">
                            support@colorlib.com</span></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container main-menu">
                <div class="row align-items-center justify-content-between d-flex">
                    <div id="logo">
                        <a href="index.html"><img src="{{asset('/frontend')}}/img/logo.png" alt="" title="" /></a>
                    </div>
                    <nav id="nav-menu-container">
                        <ul>
                            <li><a href="/">Home</a></li>
                            <li><a href="/register">Daftar</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>

        @yield('content')
        <footer class="footer-area section-gap">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            

                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </body>

</html>