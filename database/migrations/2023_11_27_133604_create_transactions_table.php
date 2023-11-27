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
        Schema::create('transactions', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id');
            $table->enum('type', ['debit', 'credit']);
            $table->enum('status', ['pending', 'failed', 'success']);
            $table->string('ref_number');
            $table->string('trans_id');
            $table->integer('amount');
            $table->longText('description')->nullable();
            $table->enum('purpose',['verification', 'packages', 'top-up', 'withdrawal', 'referrals', 'boost']);
            $table->foreignId('package_id')->nullable();
            $table->foreignId('listing_id')->nullable();
            $table->string('referral_code')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('transactions');
    }
};
