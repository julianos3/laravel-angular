<?php

namespace Project\Services;

use Project\Repositories\ProjectRepository;
use Project\Validators\ProjectValidator;
use Prettus\Validator\Exceptions\ValidatorException;

use LucaDegasperi\OAuth2Server\Facades\Authorizer;
//use Illuminate\Filesystem\Filesystem;
//use \Illuminate\Contracts\Filesystem\Factory as Storage;

class ProjectService //regras de negocios
{

    /**
     * @var ProjectRepository
     */
    protected $repository;

    /**
     * @var ProjectValidator
     */
    protected $validator;

    /**
     * @var Filesystem
     */
    //protected $filesystem;

    /**
     * @var Storage
     */
    //protected $storage;

    public function __construct(ProjectRepository $repository, ProjectValidator $validator)
    {
        $this->repository = $repository;
        $this->validator = $validator;
        //$this->filesystem = $filesystem;
        //$this->storage = $storage;
    }

    public function create(array $data)
    {
        try {
            $this->validator->with($data)->passesOrFail();
            return $this->repository->create($data);
        } catch (ValidatorException $e) {
            return [
                'error' => true,
                'message' => $e->getMessageBag()
            ];
        }
    }

    public function update(array $data, $id)
    {
        try {
            $this->validator->with($data)->passesOrFail();
            return $this->repository->update($data, $id);
        } catch (ValidatorException $e) {
            return [
                'error' => true,
                'message' => $e->getMessageBag()
            ];
        }
    }

    /*
    public function createFile(array $data)
    {
        $project = $this->repository->skipPresenter()->find($data['project_id']);
        $projectFile = $project->files()->create($data);

        $this->storage->put($projectFile->id.".".$data['extension'], $this->filesystem->get($data['file']));
    }
    */

    public function checkProjectOwner($projectId)
    {
        $userId = \Authorizer::getResourceOwnerId();
        return $this->repository->isOwner($projectId, $userId);
    }

    public function checkProjectMember($projectId)
    {
        $userId = \Authorizer::getResourceOwnerId();
        return $this->repository->hasMember($projectId, $userId);
    }

    public function checkProjectPermissions($projectId)
    {
        if($this->checkProjectOwner($projectId) or $this->checkProjectMember($projectId)){
            return true;
        }

        return false;
    }

}