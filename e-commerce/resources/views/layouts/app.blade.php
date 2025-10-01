<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard</title>
        {{-- @include('layouts.header') --}}
       <!-- css -->
    @include('template.css')
    </head>
    <body class="sb-nav-fixed">
        @include('Layouts.navbar')
        @include( 'Layouts.sidebar')
        <div id="layoutSidenav">
             <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="{{route('dashboard.index')}}">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                            <div class="sb-sidenav-menu-heading">Panel</div>
                            <a href="{{route('products.index')}}"></a>
                            <a class="nav-link" href="{{route('products.index')}}" >
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Products
                                {{-- <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div> --}}
                            </a>
                              {{-- <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="layout-static.html">Static Navigation</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">Light Sidenav</a>
                                </nav> 
                            </div>  --}}
                            <a class="nav-link" href="{{route('categories.index')}}">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Categories
                                {{-- <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div> --}}
                            </a>    
                            <a class="nav-link" href="{{route('users.index')}}">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                User
                                {{-- <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div> --}}
                            </a>
                             <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    {{-- <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Authentication
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a> --}}
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="login.html">Login</a>
                                            <a class="nav-link" href="register.html">Register</a>
                                            <a class="nav-link" href="password.html">Forgot Password</a>
                                        </nav>
                                    </div>
                                    {{-- <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        Error
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>  --}}
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="401.html">401 Page</a>
                                            <a class="nav-link" href="404.html">404 Page</a>
                                            <a class="nav-link" href="500.html">500 Page</a>
                                        </nav>
                                    </div> 
                                </nav>
                            </div>
                            
                    </div>
                        {{-- <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Duh --}}
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                
            @yield('content')
{{--             
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Dashboard</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                 Commodi ut quaerat reprehenderit obcaecati? Atque, ex autem? Pariatur eum voluptatibus sint,
                                  architecto dolore, est magni quod aliquid ducimus a asperiores corrupti?e</li>
                        </ol>
                        
                    </div>
                </main> --}}
                
            </div>
        </div>
        @include('Layouts.footer')
         <!-- js -->
        @include('template.js')
    </body>
</html>
