<!doctype html>
<html lang="en" class="fullscreen-bg">

<head>
	<title>SMA Tadika Mesra</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
    <link rel="stylesheet" href="{{(asset('admin/assets/vendor/bootstrap/css/bootstrap.min.css'))}}">
	<link rel="stylesheet" href="{{(asset('admin/assets/vendor/font-awesome/css/font-awesome.min.css'))}}">
	<link rel="stylesheet" href="{{(asset('admin/assets/vendor/linearicons/style.css'))}}">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="{{(asset('admin/assets/css/main.css'))}}">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="{{(asset('admin/assets/css/demo.css'))}}">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="{{(asset('admin/assets/img/apple-icon.png'))}}">
	<link rel="icon" type="image/png" sizes="96x96" href="{{(asset('admin/assets/img/favicon.png'))}}">
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<div class="vertical-align-wrap">
			<div class="vertical-align-middle">
				<div class="auth-box ">
					<div class="left">
						<div class="content">
							<div class="header">
								<div class="logo text-center"><img src="{{(asset('admin/assets/img/logo-sekolah.jpg'))}}" alt="Klorofil Logo"></div>
								<p class="lead">Login to your account</p>
							</div>
                            <form class="form-auth-small" action="/postregister" method="POST">
                                {{csrf_field()}}
                                <div class="form-group">
									<label for="regist-name" class="control-label sr-only">Nama Depan</label>
                                    <input name="nama_depan" type="text" class="form-control" placeholder="Nama">
								</div>
								<div class="form-group">
									<label for="regist-email" class="control-label sr-only">Email</label>
									<input name="email" type="email" class="form-control" id="signin-email" placeholder="Email">
								</div>
								<div class="form-group">
									<label for="regist-password" class="control-label sr-only">Password</label>
									<input name="password" type="password" class="form-control" id="signin-password" placeholder="Password">
                                </div>
								<button type="submit" class="btn btn-primary btn-lg btn-block">REGISTER</button>
							</form>
						</div>
					</div>
					<div class="right">
						<div class="overlay"></div>
						<div class="content text">
							<h1 class="heading">Pendaftaran</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- END WRAPPER -->
</body>

</html>
