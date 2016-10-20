<?php

namespace Project\Presenters;

use Project\Transformers\ProjectTaskTransformer;
use Prettus\Repository\Presenter\FractalPresenter;

class ProjectTaskPresenter extends FractalPresenter
{
    /**
     * Transformer
     *
     * @return \League\Fractal\TransformerAbstract
     */
    public function getTransformer()
    {
        return new ProjectTaskTransformer();
    }
}