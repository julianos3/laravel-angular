<?php

namespace Project\Transformers;

use Project\Entities\ProjectFile;
use League\Fractal\TransformerAbstract;

class ProjectFileTransformer extends TransformerAbstract
{

    public function transform(ProjectFile $file)
    {
        return [
            'id' => $file->id,
            'name' => $file->name,
            'description' => $file->description,
            'extension' => $file->extension,
            'project_id' => $file->project_id
        ];
    }

}