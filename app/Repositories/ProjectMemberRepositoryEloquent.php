<?php

namespace Project\Repositories;

use Prettus\Repository\Eloquent\BaseRepository;
use Project\Presenters\ProjectMemberPresenter;
use Project\Repositories\ProjectMemberRepository;
use Project\Entities\ProjectMember;

/**
 * Class ProjectMemberRepositoryEloquent
 * @package namespace Project\Repositories;
 */
class ProjectMemberRepositoryEloquent extends BaseRepository implements ProjectMemberRepository
{
    /**
     * Specify Model class name
     *
     * @return string
     */
    public function model()
    {
        return ProjectMember::class;
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
        return ProjectMemberPresenter::class;
    }
}
