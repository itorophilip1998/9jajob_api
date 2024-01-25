<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('listing_subscriptions', function (Blueprint $table) {
            $table->id();
            $table->foreignId('listing_id');
            $table->date('start_date');
            $table->date('end_date');
            $table->integer('amount');
            $table->enum('status', ['active', 'inactive'])->default("active");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('listing_subscriptions');
    }
};