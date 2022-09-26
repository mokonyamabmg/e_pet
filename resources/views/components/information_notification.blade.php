@if(session('information'))
<div class="alert alert-warning">
    {{session('information')}}
</div>
@endif