<!-- resources/views/your-page.blade.php -->
@extends('mail.layouts.mailBox')

@section('content')
    <div class="container">
        <h2>Dear Admin,</h2>
 <p>
    <br/>
  <p>
     <b>
Mail From:
   </b>
    {{ $item["userInfo"] }}
  </p>
   <p>
    <b>Phone Number : </b>
    {{ $item["phone"] }}
   </p>
   <p>
    <b>Message : </b>
    {{ $item["mailMessage"] }}
   </p>

    </div>
@endsection
