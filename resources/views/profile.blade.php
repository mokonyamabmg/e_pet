@extends('layouts.master')


@section('content')
<div class="container">
    <div class="row mt-5" v-if="!is_loading">
        <div class="col-md-12">
        <div class="card dashboard_card">
            <form action="{{ route('update_profile') }}" method="POST">
                @csrf
            <div class="d-flex justify-content-between align-items-center flex-wrap">
                <h4 class="dashboard_card__header">Update Profile</h4>
                <div>
                <button type="submit" class="btn submit_btn px-5">Submit</button>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-md-10">
                    <div class="form-group">
                        <label for="name">ID Number</label>
                        <input name="id_number" type="text" value="{{ $user->id_number }}" class="form-control @error('id_number') is-invalid @enderror">
                        @error('id_number')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input name="name" value="{{ $user->name }}" type="text" class="form-control @error('name') is-invalid @enderror">
                        @error('name')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="surname">Surname</label>
                        <input name="surname" type="text" value="{{ $user->surname }}" class="form-control @error('surname') is-invalid @enderror">
                        @error('surname')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input name="email" type="text" value="{{ $user->email }}" class="form-control @error('email') is-invalid @enderror">
                        @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="contact_number">Contact Number</label>
                        <input name="contact_number" value="{{ $user->contact_number }}" type="text" class="form-control @error('contact_number') is-invalid @enderror">
                        @error('contact_number')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                </div>
            </div>
        </form>
        </div>
        </div>
    </div>
</div>
@endsection