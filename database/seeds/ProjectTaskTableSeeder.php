<?php

use Illuminate\Database\Seeder;

class ProjectTasksTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       // \Project\Entities\Project::truncate();]
        factory(\Project\Entities\ProjectTask::class, 60)->create();
    }
}
