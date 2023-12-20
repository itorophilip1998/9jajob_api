<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::table('listing_videos', function (Blueprint $table) {
            $table->boolean('is_mobile_video')->default(false);
        });
    }

    public function down()
    {
        Schema::table('listing_videos', function (Blueprint $table) {
            $table->dropColumn('is_mobile_video');
        });
    }
};
