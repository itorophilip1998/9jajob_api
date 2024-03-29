<!-- resources/views/your-page.blade.php -->
@extends('layouts.mailBox')

@section('content')
    <div class="container">
        <h2>Dear {{  $item["user"] }},</h2>

       <p> Congratulations! We're pleased to inform you that your business {{ $item['listing_name'] }} on 9jajob has been successfully verified. This verification adds credibility to your profile and enhances your visibility to potential customers.</p>
       <p>  With your business now verified, you can attract more customers and grow your presence on our platform. Thank you for choosing 9jajob to showcase your business.
  </p>

  <p>  If you have any questions or need further assistance, please feel free to reach out to us.</p>
    </div>
@endsection
