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
        Schema::table('questions', function (Blueprint $table) {
            $table->string('a_file')->nullable()->after('a');
            $table->string('b_file')->nullable()->after('b');
            $table->string('c_file')->nullable()->after('c');
            $table->string('d_file')->nullable()->after('d');
            $table->string('e_file')->nullable()->after('e');
            $table->string('f_file')->nullable()->after('f');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('questions', function (Blueprint $table) {
            //
        });
    }
};
