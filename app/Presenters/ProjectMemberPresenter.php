<?php

namespace Project\Presenters;

use Project\Transformers\ProjectMemberTransformer;
use Prettus\Repository\Presenter\FractalPresenter;

class ProjectMemberPresenter extends FractalPresenter
{
    /**
     * Transformer
     *
     * @return \League\Fractal\TransformerAbstract
     */
    public function getTransformer()
    {
        return new ProjectMemberTransformer();
    }
}