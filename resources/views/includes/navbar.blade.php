<nav class="navbar navbar-expand-lg navbar-dark bg-dark py-3">
  <div class="container">
<a class="navbar-brand d-lg-none" href="{{ route('dashboard') }}">PET STORE</a>

<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggle" aria-controls="navbarToggle" aria-expanded="false" aria-label="Toggle navigation">
  <span class="navbar-toggler-icon"></span>
</button>
    <div class="collapse navbar-collapse justify-content-between" id="navbarToggle">

  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link active" href="{{ route('dashboard') }}">Home <span class="sr-only">(current)</span></a>
    </li>
  </ul>
  <a class="navbar-brand d-none d-lg-block" href="{{ route('dashboard') }}">PET STORE</a>
  <ul class="navbar-nav">
      @guest
      <li class="nav-item">
          <a class="nav-link d-flex align-items-center" href="{{ route('login') }}">
              Login
          </a>
      </li>
      @if (Route::has('register'))
      <li class="nav-item">
          <a class="nav-link d-flex align-items-center " href="{{ route('register') }}">
              Register
          </a>
      </li>
      @endif
      @else
      <li class="nav-item">
          
      </li>
      <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Welcome {{ Auth::user()->name }} {{ Auth::user()->surname }}
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="{{ route('change_password') }}">Change Password</a>
            <a class="dropdown-item" href="{{ route('edit_profile', ['user' => Auth::user()]) }}">Edit Profile</a>
            <a class="dropdown-item" href="#" onclick="event.preventDefault();
            document.getElementById('logout-form').submit();">Logout</a>
            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                @csrf
            </form>
          </div>
        </li>
      @endguest
  </ul>
</div>
  </div>
</nav>