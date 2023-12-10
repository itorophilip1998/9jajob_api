@php
$g_settings = \App\Models\GeneralSetting::where('id',1)->first();
$dynamic_pages = \App\Models\DynamicPage::get();
$page_about_item = \App\Models\PageAboutItem::where('id',1)->first();
$page_faq_item = \App\Models\PageFaqItem::where('id',1)->first();
$page_blog_item = \App\Models\PageBlogItem::where('id',1)->first();
$page_listing_item = \App\Models\PageListingItem::where('id',1)->first();
$page_pricing_item = \App\Models\PagePricingItem::where('id',1)->first();
$page_contact_item = \App\Models\PageContactItem::where('id',1)->first();
$page_listing_location_item = \App\Models\PageListingLocationItem::where('id',1)->first();
$page_listing_category_item = \App\Models\PageListingCategoryItem::where('id',1)->first();
@endphp

<!-- Start Navbar Area -->
<div class="navbar-area" id="stickymenu">

	<!-- Menu For Mobile Device -->
	<div class="mobile-nav">
		<a href="{{ url('/') }}" class="logo">
			<img src="{{ asset('public/uploads/site_photos/'.$g_settings->logo) }}" alt="">
		</a>
	</div>

	<!-- Menu For Desktop Device -->
	<div class="main-nav">
		<div class="container">
			<nav class="navbar navbar-expand-md navbar-light">
				<a class="navbar-brand" href="{{ url('/') }}">
					<img src="{{ asset('public/uploads/site_photos/'.$g_settings->logo) }}" alt="">
				</a>
				<div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
					<ul class="navbar-nav {{ $g_settings->layout_direction == 'ltr' ? 'ml-auto' : 'mr-auto' }}">


						<li class="nav-item">
							<a href="{{ url('/') }}" class="nav-link">{{ 'Home' }}</a>
						</li>

                        @if($page_listing_item->status == 'Show')
						<li class="nav-item">
							<a href="{{ url('listing-result?text=') }}" class="nav-link">{{ 'Listing' }}</a>
						</li>
                        @endif

                        @if($page_pricing_item->status == 'Show')
						<li class="nav-item">
							<a href="{{ route('front_pricing') }}" class="nav-link">{{ 'Pricing' }}</a>
						</li>
                        @endif


                        @if($page_about_item->status == 'Show' || $page_faq_item->status == 'Show' || $page_listing_category_item->status == 'Show' || $page_blog_item->status == 'Show' || (!$dynamic_pages->isEmpty()))
						<li class="nav-item">
							<a href="javascript:void;" class="nav-link dropdown-toggle">{{ 'Pages' }}</a>
							<ul class="dropdown-menu">

                                @if($page_about_item->status == 'Show')
								<li class="nav-item">
									<a href="{{ route('front_about') }}" class="nav-link">{{ 'About' }}</a>
								</li>
                                @endif

                                @if($page_faq_item->status == 'Show')
								<li class="nav-item">
									<a href="{{ route('front_faq') }}" class="nav-link">{{ 'FAQ' }}</a>
								</li>
                                @endif

                                @if($page_listing_category_item->status == 'Show')
								<li class="nav-item">
									<a href="{{ route('front_listing_category_all') }}" class="nav-link">{{ 'Category' }}</a>
								</li>
                                @endif

                                @if($page_blog_item->status == 'Show')
								<li class="nav-item">
									<a href="{{ route('front_blogs') }}" class="nav-link">{{ 'Blog' }}</a>
								</li>
                                @endif

                                @if(!$dynamic_pages->isEmpty())
								@foreach($dynamic_pages as $row)
                                    <li class="nav-item">
                                        <a href="{{ url('page/'.$row->dynamic_page_slug) }}" class="nav-link">{{ $row->dynamic_page_name }}</a>
                                    </li>
                                @endforeach
                                @endif
							</ul>
						</li>
                        @endif

                        @if($page_contact_item->status == 'Show')
						<li class="nav-item">
							<a href="{{ route('front_contact') }}" class="nav-link">{{ 'Contact' }}</a>
						</li>
                        @endif


                        @if($g_settings->customer_listing_option == 'On')
						<li class="nav-item nav-item-last">
							@if(Auth::user())
							<a href="{{ route('customer_dashboard') }}" class="nav-link"><i class="fas fa-sign-in-alt"></i> {{ 'Dashboard' }}</a>
							@else
							<a href="{{ route('customer_login') }}" class="nav-link"><i class="fas fa-sign-in-alt"></i> {{ 'Login' }}</a>
							@endif
						</li>
						<li class="nav-item nav-item-last">
							<a href="{{ route('customer_listing_add') }}" class="nav-link"><i class="fas fa-plus"></i> {{ 'Add Listing' }}</a>
						</li>
                        @endif

					</ul>
				</div>
			</nav>
		</div>
	</div>
</div>
<!-- End Navbar Area -->
