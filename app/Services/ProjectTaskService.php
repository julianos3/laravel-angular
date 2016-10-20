<?php

namespace Project\Services;

use Project\Repositories\ProjectRepository;
use Project\Repositories\ProjectTaskRepository;
use Project\Validators\ProjectTaskValidator;
use Prettus\Validator\Exceptions\ValidatorException;

class ProjectTaskService //regras de negocios
{

    /**
     * @var ProjectTaskRepository
     */
    protected $repository;

    /**
     * @var ProjectTaskValidator
     */
    protected $validator;

    /**
     * @var ProjectRepository
     */
    protected $projectRepository;

    public function __construct(ProjectTaskRepository $repository,
                                ProjectTaskValidator $validator,
                                ProjectRepository $projectRepository)
    {
        $this->repository = $repository;
        $this->validator = $validator;
        $this->projectRepository = $projectRepository;
    }

    public function create(array $data)
    {
        try{
            $this->validator->with($data)->passesOrFail();
            $project = $this->projectRepository->skipPresenter()->find($data['project_id']);
            $projectTask = $project->tasks()->create($data);
            return $projectTask;
        }
        catch(ValidatorException $e){
            return [
                'error' => true,
                'message' => $e->getMessageBag()
            ];
        }
    }
    public function update(array $data, $id)
    {
        try{
            $this->validator->with($data)->passesOrFail();
            return $this->repository->update($data, $id);
        }
        catch(ValidatorException $e){
            return [
                'error' => true,
                'message' => $e->getMessageBag()
            ];
        }
    }
    public function delete($id)
    {
        $projectTask = $this->repository->skipPresenter()->find($id);
        return $projectTask->delete();
    }

}