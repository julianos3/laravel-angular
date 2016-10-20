<?php

namespace Project\Transformers;

use Project\Entities\ProjectTask;
use League\Fractal\TransformerAbstract;

class ProjectTaskTransformer extends TransformerAbstract
{

    public function transform(ProjectTask $tasks)
    {
        return [
            'name' => $tasks->name,
            'start_date' => $tasks->start_date,
            'due_date' => $tasks->due_date,
            'status' => $tasks->status,
        ];
    }

}