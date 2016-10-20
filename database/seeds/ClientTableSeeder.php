<?php

use Illuminate\Database\Seeder;

class ClientTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       // \Project\Entities\Client::truncate();
        factory(\Project\Entities\Client::class, 10)->create();
    }
}
