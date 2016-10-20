<?php

use Illuminate\Database\Seeder;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //\Project\Entities\User::truncate();
        factory(\Project\Entities\User::class)->create([
            'name' => 'Juliano',
            'email' => 'juliano@agencias3.com.br',
            'password' => bcrypt(123456),
            'remember_token' => str_random(10),
        ]);

        factory(\Project\Entities\User::class, 10)->create();
    }
}
