<?php

namespace Project\Presenters;

use Prettus\Repository\Presenter\FractalPresenter;
use Project\Transformers\ProjectTransformer;

class ProjectPresenter extends FractalPresenter
{

    public function getTransformer()
    {
        return new ProjectTransformer();
    }

}