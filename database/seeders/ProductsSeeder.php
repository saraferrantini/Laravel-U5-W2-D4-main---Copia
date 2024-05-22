<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class ProductsSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();

        foreach (range(1, 10) as $index) {
            DB::table('products')->insert([
                'name' => $faker->word,
                'description' => $faker->sentence,
                'price' => $faker->randomFloat(2, 10, 1000), // prezzo tra 10 e 1000 con 2 decimali
                'photo' => 'photos/product' . $index . '.jpg',
                'user_id' => 2,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
