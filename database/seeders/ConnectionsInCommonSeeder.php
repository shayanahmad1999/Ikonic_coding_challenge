<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ConnectionsInCommonSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i = 1; $i <= 20; $i++) {
            DB::table('connection_in_commoms')->insert([
                'user1_id' => User::inRandomOrder()->value('id'),
                'user2_id' => User::inRandomOrder()->value('id'),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
