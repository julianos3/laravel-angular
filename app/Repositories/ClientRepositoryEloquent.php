<?php

namespace Project\Repositories;

use Prettus\Repository\Eloquent\BaseRepository;
use Project\Entities\Client;
use Project\Presenters\ClientPresenter;

class ClientRepositoryEloquent extends BaseRepository implements ClientRepository
{

    protected $fieldSearchable = [
        'name',
        'email'
    ];

    public function model()
    {
        return Client::class;
    }

    public function presenter()
    {
        return ClientPresenter::class;
    }

    public function boot()
    {
        $this->pushCriteria(app('Prettus\Repository\Criteria\RequestCriteria'));
    }

}