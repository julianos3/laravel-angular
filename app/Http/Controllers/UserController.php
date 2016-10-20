<?php

namespace Project\Http\Controllers;

use Illuminate\Http\Request;

use Project\Repositories\UserRepository;
use Project\Http\Requests;
use LucaDegasperi\OAuth2Server\Facades\Authorizer;

class UserController extends Controller
{

    private $repository;

    public function __construct(UserRepository $repository)
    {
        $this->repository = $repository;
    }

    public function authenticated()
    {
        $userId = Authorizer::getResourceOwnerId();
        //dd($userId);die;
        return $this->repository->find($userId);
    }

    public function index()
    {
        return $this->repository->all();
    }
}
