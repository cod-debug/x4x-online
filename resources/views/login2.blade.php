<!DOCTYPE html>
<html lang="en">
   <head>
      <title>...</title>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
      <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7CSource+Sans+Pro:400,700" rel="stylesheet">
      <link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/fontawesome-free/css/all.min.css') }}">
      <link href="{{ asset('data-login/bootstrap.css') }}" rel="stylesheet">
      <link href="{{ asset('data-login/all.min.css') }}" rel="stylesheet">
      <link href="{{ asset('data-login/v4-shims.min.css') }}" rel="stylesheet">
      <link href="{{ asset('data-login/style-basketball-dark.css') }}" rel="stylesheet">
      {{-- <link href="{{ asset('data-login/custom.css') }}" rel="stylesheet"> --}}
      <style type="text/css">
         .loginBtn {
            background-color: #58D68D
         }

         body {
            background-image: url("{{asset('data-login/swcslasher-background.png')}}");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
            color: #9a9da2;
            font-size: 15px;
            line-height: 26px;
            font-family: Source Sans Pro,sans-serif;
            font-weight: 400;
        }
      </style>
      
      <link href="{{ asset('login-assets/main.css') }}" rel="stylesheet">
      <link href="{{ asset('login-assets/main.js') }}" rel="stylesheet">
   </head>
   <body data-template="template-basketball">
       <div class="background-wrap">
  <div class="background"></div>
</div>
<div class="background-wrap">
  <div class="background"></div>
</div>

    <form id="accesspanel" action="{{ route('post.login') }}" method="post">
      <h1 id="litheader">WELCOME</h1>
      <h1 id="litheader">MEMBERS LOGIN</h1>
        {{ csrf_field() }}
        <div class="loginMessage" style="color: #FFF !important">
            @include('partials._message')
        </div>
      <div class="inset">
        <p>
          <input type="text" name="email" id="username" placeholder="ENTER USERNAME">
        </p>
        <p>
          <input type="password" name="password" id="password" placeholder="ENTER PASSWORD">
        </p>
        <div style="text-align: center;">
          <div class="
                      >
            <input type="checkbox" name="rememberme" id="remember" value="Remember">
            
        <input class="loginLoginValue" type="hidden" name="service" value="login" />
      </div>
      <p class="p-container">
        <input type="submit" name="Login" id="go" value="LOGIN HERE">
      </p>
    </form>
      <!--<div class="site-wrapper clearfix">-->
      <!--   <div class="site-overlay"></div>-->
      <!--   <div class="site-content img-bg">-->
      <!--      <div class="container">-->
      <!--         <div class="row">-->
      <!--            <div class="col-md-6 text-center justify-content-center align-items-center"></div>-->
      <!--            <div class="col-md-6">-->
      <!--               <div class="card" style="background: transparent !important; border: 1px solid #717D7E;">-->
      <!--                  <div class="card__header" style="border-bottom: 1px solid #717D7E;">-->
      <!--                     <h4><i class="fa fa-key"></i> SIGN-IN ACCOUNT TO CONTINUE...</h4>-->
      <!--                  </div>-->
      <!--                  <div class="card__content">-->
      <!--                      <form action="{{ route('post.login') }}" method="post">-->
      <!--                          <div class="loginMessage" style="color: #FFF !important">-->
      <!--                              @include('partials._message')-->
      <!--                          </div>-->
      <!--                          <div>-->
      <!--                             <div class="form-group">-->
      <!--                                <label for="login-name"><i class="fas fa-user"></i> YOUR Username</label>-->
      <!--                                <input type="text" class="form-control" name="email" style="color: #FFCC00; font-weight: bold" placeholder="Enter your username...">-->
      <!--                             </div>-->
      <!--                             <div class="form-group">-->
      <!--                                <label for="login-password"><i class="fas fa-lock"></i> YOUR Password</label>-->
      <!--                                <input type="password" class="form-control" name="password" style="color: #FFCC00; font-weight: bold" placeholder="Enter your password...">-->
      <!--                             </div>-->
      <!--                             {{ csrf_field() }}-->
      <!--                             <div class="form-group form-group--sm">-->
      <!--                                <button class="btn btn-primary btn-lg btn-block" type="submit"><i class="fa fa-sign-in"></i> SIGN-IN Account</button>-->
      <!--                             </div>-->
      <!--                          </div>-->
      <!--                      </form>-->
      <!--                      <img src="{{ asset('data-login/login-logo.jpg') }}" alt="Chat Bot Query">-->
      <!--                  </div>-->
      <!--               </div>-->
      <!--            </div>-->
      <!--         </div>-->
      <!--      </div>-->
      <!--   </div>-->
      <!--</div>-->
      <script src="{{ asset('data-login/jquery-3.1.1.min.js') }}"></script>
      <script src="{{ asset('data-login/popper.min.js') }}"></script>
      <script src="{{ asset('data-login/bootstrap.min.js') }}"></script>
   </body>
</html>