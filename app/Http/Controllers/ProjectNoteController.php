<?php

namespace Project\Http\Controllers;

use Illuminate\Http\Request;

use Project\Repositories\ProjectNoteRepository;
use Project\Services\ProjectNoteService;


class ProjectNoteController extends Controller
{

    /**
     * @var ProjectNoteRepository
     */
    protected $repository;

    /**
     * @var ProjectNoteService
     */
    protected $service;

    public function __construct(ProjectNoteRepository $repository, ProjectNoteService $service)
    {
        $this->repository = $repository;
        $this->service  = $service;
    }

    public function index($id)
    {
        return $this->repository->findWhere(['project_id' => $id]);
    }

    public function store(Request $request, $id)
    {
        $data = $request->all();
        $data['project_id'] = $id;
        return $this->service->create($data);
    }

    public function show($id, $noteId)
    {
        //return $this->repository->findWhere(['project_id' => $id, 'id' => $noteId]);
        $result = $this->repository->findWhere(['project_id'=>$id, 'id'=>$noteId]);
        if(isset($result['data']) && count($result['data'])==1) {
            $result = [
                'data' => $result['data'][0]
            ];
        }
        return $result;
    }

    public function update(Request $request, $id, $idNote)
    {
        $data = $request->all();
        $data['project_id'] = $id;
        return $this->service->update($data, $idNote);
    }

    /*
    public function destroy($id, $noteId)
    {
        return $this->repository->find($noteId)->delete();
    }
    */
    public function destroy($id, $noteId)
    {
        if($this->repository->skipPresenter()->find($noteId)->delete()){
            return ['success'=>true, 'message'=>'Nota '.$noteId.' excluída com sucesso!'];
        }
        return ['error'=>true, 'message'=>'Não foi possível excluir a nota '.$noteId];
    }
}
