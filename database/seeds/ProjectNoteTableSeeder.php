<?php

use Illuminate\Database\Seeder;

class ProjectNoteTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       // \Project\Entities\Project::truncate();
        factory(\Project\Entities\ProjectNote::class, 50)->create();
    }
}
