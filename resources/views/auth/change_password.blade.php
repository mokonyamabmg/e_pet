@extends('layouts.master')


@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12 mt-4">
          @component('components.success_notification')
          @endcomponent
        </div>
      </div>
    <div class="row mt-5">
        <div class="col-md-12">
        <div class="card dashboard_card mt-5">
            <form method="POST" action="{{ route('update_password') }}">
                @csrf
                <div class="form-group row">
                    <label for="currentPassword" class="col-md-4 col-form-label text-md-right">{{ __('Current Password') }}</label>

                    <div class="col-md-7">
                        <input id="currentPassword" type="password" class="form-control {{$errors->has('currentPassword')}}" name="currentPassword" value="{{ old('currentPassword') }}">
                        @error('currentPassword')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                       @enderror
                    </div>
                </div>

                <div class="form-group row">
                    <label for="newPassword" class="col-md-4 col-form-label text-md-right">{{ __('New Password') }}</label>

                    <div class="col-md-7">
                        <input id="newPassword" type="password" class="form-control {{$errors->has('newPassword')}}" name="newPassword" value="{{ old('newPassword') }}">
                        @error('newPassword')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                       @enderror
                    </div> 
                </div>

                <div class="form-group row">
                    <label for="confirmPassword" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>

                    <div class="col-md-7">
                        <input id="password_confirmation" type="password" class="form-control {{$errors->has('password_confirmation')}}" name="password_confirmation">
                    </div>
                </div>

                <div class="form-group row mb-0">
                    <div class="col-md-12 d-flex justify-content-center">
                        <button type="submit" class="btn submit_btn mt-5 px-5">
                            {{ __('Reset Password') }}
                        </button>
                    </div>
                </div>
            </form>
        </div>
        </div>
    </div>
</div>
@endsection