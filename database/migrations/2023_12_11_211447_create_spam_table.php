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
        Schema::create('spam', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id');
            $table->foreignId('friend_id'); 
            $table->enum('status', [ 'unspam', 'spam'])->default('unspam');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('spam');
    }
};
