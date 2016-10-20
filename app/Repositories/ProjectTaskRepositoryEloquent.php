<?php

namespace Project\Repositories;

use Prettus\Repository\Eloquent\BaseRepository;
use Prettus\Repository\Criteria\RequestCriteria;
use Project\Presenters\ProjectTaskPresenter;
use Project\Entities\ProjectTask;
use Project\Validators\ProjectTaskValidator;

/**
 * Class ProjectTasksRepositoryEloquent
 * @package namespace Project\Repositories;
 */
class ProjectTaskRepositoryEloquent extends BaseRepository implements ProjectTaskRepository
{
    /**
     * Specify Model class name
     *
     * @return string
     */
    public function model()
    {
        return ProjectTask::class;
    }

    /**
     * Boot up the repository, pushing criteria
     */
    public function boot()
    {
        $this->pushCriteria(app('Prettus\Repository\Criteria\RequestCriteria'));
    }

    public function presenter()
    {
        return ProjectTaskPresenter::class;
    }

    public function validator()
    {
        return ProjectTaskValidator::class;
    }

}
