<!-- resources/views/your-page.blade.php -->
@extends('mail.layouts.mailBox')

@section('content')
    <div class="container">
        <h2>Dear {{  $item["user"] }},</h2>


       <p> Welcome to 9jajob! We're thrilled to have you on board. Thank you for confirming your email address and joining our community.</p>
       <p>At 9jajob, we're dedicated to making your job search and business registration experience seamless and rewarding. Here's what we offer:</p>
       <p>1. <b>Registering Businesses:</b> Easily list your business on our platform to increase its visibility and attract potential customers.</p>
        <p>2. <b>Searching for Services Near You:</b> Explore a wide range of services available in your area, making it convenient to find what you need.</p>
            <p>As a token of appreciation for joining our platform, we're excited to offer you a special referral program:</p>

                <p> - Get 50% referral rewards for every new user who registers and lists a business using your referral link.</p>
                    <p>- Enjoy 50% reward for every services your downliner use on our platform, such as business verification and boosting-</p>
                        <p>Start spreading the word and earn rewards for every referral! </p>
                            <p>If you have any questions or need assistance, feel free to contact us at: </p>
    </div>
@endsection
