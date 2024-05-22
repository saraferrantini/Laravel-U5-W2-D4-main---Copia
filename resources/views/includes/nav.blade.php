<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
     @guest
         <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="{{ route('register') }}">Register</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{ route('login') }}">Login</a>
          </li>
     @endguest  
      </ul>
      
     
      <ul class="navbar-nav mb-2 mb-lg-0">
     
        @auth
     {{-- se utente loggato --}}
     
     <li class="nav-item dropdown">
     
      <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
    
      aria-expanded="false">
     
      {{ Auth::user()->name }}
     
    </a>     
     
    <ul class="dropdown-menu">
     
      <li>      
      
        <a class="dropdown-item" href="{{ route('profile.edit') }}">Profile</a></li>
     
        <li>     
      
          <form method="POST" action="{{ route('logout') }}">
    
            @csrf     
     
            <button class="dropdown-item" >Logout</button>     
    
          </form>     
  </li>     
</ul>     
</li>    
     @endauth
     </ul>
      
    </div>
  </div>
</nav>