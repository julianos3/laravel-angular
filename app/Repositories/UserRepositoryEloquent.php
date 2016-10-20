<?php

namespace Project\Repositories;

use Prettus\Repository\Criteria\RequestCriteria;
use Prettus\Repository\Eloquent\BaseRepository;
use Project\Entities\User;
use Project\Presenters\UserPresenter;

class UserRepositoryEloquent extends BaseRepository implements UserRepository
{

    protected $fieldSearchable = [
        'name'
    ];

    /**
     * @return mixed
     */
    public function model()
    {
        return User::class;
    }

    /**
     * Boot up the repository, pushing criteria
     */
    public function boot()
    {
        $this->pushCriteria(app(RequestCriteria::class));
    }

    public function presenter()
    {
        return UserPresenter::class;
    }

}