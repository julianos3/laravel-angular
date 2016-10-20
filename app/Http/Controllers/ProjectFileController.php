<?php

namespace Project\Http\Controllers;

use Illuminate\Http\Request;

use Project\Repositories\ProjectFileRepository;
use Project\Services\ProjectFileService;
use Project\Services\ProjectService;


class ProjectFileController extends Controller
{

    /**
     * @var ProjectFileRepository
     */
    protected $repository;

    /**
     * @var ProjectFileService
     */
    protected $service;

    public function __construct(ProjectFileRepository $repository, ProjectFileService $service)
    {
        $this->repository = $repository;
        $this->service  = $service;
    }

    public function index($id)
    {
        return $this->repository->findWhere(['project_id' =>$id]);
    }

    public function store(Request $request)
    {
        $file = $request->file('file');
        if (!$file) {
            return $this->erroMsgm("O arquivo é obrigatório!");
        }
        $extension = $file->getClientOriginalExtension();
        $data['file'] = $file;
        $data['extension'] = $extension;
        $data['name'] = $request->name;
        $data['description'] = $request->description;
        $data['project_id'] = $request->project_id;

        return $this->service->create($data);
    }

    public function showFile($projectId, $id)
    {
        $filePath = $this->service->getFilePath($id);
        $fileContent = file_get_contents($filePath);
        $file64 = base64_encode($fileContent);
        return [
            'file' => $file64,
            'size' => filesize($filePath),
            'name' => $this->service->getFileName($id)
        ];
    }

    public function show($id, $fileId)
    {
        /*
        if($this->projectService->checkProjectPermissions($id) == false) {
            return ['error' => 'Access Forbidden'];
        }
        */
        $result = $this->repository->findWhere(['project_id'=>$id, 'id'=>$fileId]);
        if(isset($result['data']) && count($result['data'])==1) {
            $result = [
                'data' => $result['data'][0]
            ];
        }
        return $this->repository->find($id);
    }

    public function update(Request $request, $id)
    {
        if($this->projectService->checkProjectOwner($id) == false) {
            return ['error' => 'Access Forbidden'];
        }

        return $this->service->update($request->all(), $id);
    }

    public function destroy($id)
    {
        if($this->projectService->checkProjectOwner($id) == false) {
            return ['error' => 'Access Forbidden'];
        }

        $this->service->delete($id);
    }

    private function erroMsgm($mensagem)
    {
        return [
            'error' => true,
            'message' => $mensagem,
        ];
    }
    
}
