<!-- resources/views/your-page.blade.php -->
@extends('mail.layouts.mailBox')

@section('content')
    <div class="container">
        <h2>Dear Admin,</h2>
 <p>
    </br/>
   <b>
    {{ $item["mailMessage"] }}
   </b>
   <p>
    {{ $item["mailMessage"] }}
   </p>



    </div>
@endsection
