@component('mail::message')
    {!! clean($message) !!}
  <b> {!! clean($token) !!}</b>

@endcomponent
