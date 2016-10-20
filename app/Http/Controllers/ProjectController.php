<?php

namespace Project\Http\Controllers;

use Illuminate\Http\Request;

use Project\Http\Requests;
use Project\Repositories\ProjectRepository;
use Project\Services\ProjectService;


class ProjectController extends Controller
{

    /**
     * @var ProjectRepository
     */
    protected $repository;

    /**
     * @var ProjectService
     */
    protected $service;

    public function __construct(ProjectRepository $repository, ProjectService $service)
    {
        $this->repository = $repository;
        $this->service = $service;
        $this->middleware('check.project.owner', ['except' => ['index'  ,'store','show','index']]);
        $this->middleware('check.project.permission', ['except' => ['index','store','update','destroy']]);
    }

    public function index(Request $request)
    {
        return $this->repository->findOwner(\Authorizer::getResourceOwnerId(), $request->query->get('limit'));
        //puxa apenas projetos do id especifico e membros
    }

    public function store(Request $request)
    {
        return $this->service->create($request->all());
    }

    public function show($id)
    {
        if($this->service->checkProjectPermissions($id) == false) {
            return ['error' => 'Access Forbidden'];
        }
        return $this->repository->find($id);
    }

    public function update(Request $request, $id)
    {
        if($this->service->checkProjectOwner($id) == false) {
            return ['error' => 'Access Forbidden'];
        }

        return $this->service->update($request->all(), $id);
    }

    public function destroy($id)
    {
        if($this->service->checkProjectOwner($id) == false) {
            return ['error' => 'Access Forbidden'];
        }

        $this->repository->skipPresenter()->find($id)->delete();
    }

}
