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
        Schema::create('boostings', function (Blueprint $table) {
            $table->id();
            $table->integer('amount');
            $table->date('start_date');
            $table->date('end_date');
            $table->enum('status',['active','in-active']);
            $table->integer('duration');
            $table->foreignId('listing_id'); // Assuming 'user_id' is a foreign key referencing the 'id' column of the 'users' table.
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('boostings');
    }
};
