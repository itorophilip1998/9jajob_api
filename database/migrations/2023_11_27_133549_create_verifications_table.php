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
        Schema::create('verifications', function (Blueprint $table) {
            $table->id();
            $table->string('reg_number');
            $table->string('id_card_front')->nullable();
            $table->string('id_card_back')->nullable();
            $table->string('cac_document')->nullable();
            $table->string('skill_certificate')->nullable();
            $table->jsonb('services')->nullable();
            $table->foreignId('package_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('verifications');
    }
};
