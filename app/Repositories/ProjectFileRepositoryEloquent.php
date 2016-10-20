<?php

namespace Project\Repositories;

use Prettus\Repository\Eloquent\BaseRepository;
use Project\Entities\ProjectFile;
use Project\Presenters\ProjectFilePresenter;    

/**
 * Class ProjectNoteRepositoryEloquent
 * @package namespace Project\Repositories;
 */
class ProjectFileRepositoryEloquent extends BaseRepository implements ProjectFileRepository
{
    /**
     * Specify Model class name
     *
     * @return string
     */
    public function model()
    {
        return ProjectFile::class;
    }
    
    public function presenter()
    {
        return ProjectFilePresenter::class;
    }

}
