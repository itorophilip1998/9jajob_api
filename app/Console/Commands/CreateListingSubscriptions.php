<?php

namespace App\Console\Commands;

use Carbon\Carbon;
use App\Models\Listing;
use Illuminate\Console\Command;
use App\Models\ListingSubscription;

class CreateListingSubscriptions extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'subscriptions:create';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Create listing_subscriptions for all existing listings';


    /**
     * Execute the console command.
     */
    public function handle()
    {
        // Get all existing listings
        $listings = Listing::all();

        // Loop through each listing and create a subscription
        $listings->each(function ($listing) {
            ListingSubscription::create([
                'listing_id' => $listing->id,
                "start_date" => Carbon::now()->toDateString(),
                "end_date" => Carbon::now()->addYear()->toDateString(),
                "amount" => "1000",
            ]);
        });

        $this->info('Listing subscriptions created successfully.');
    }
}
