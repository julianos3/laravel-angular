<?php

namespace Project\Presenters;

use Prettus\Repository\Presenter\FractalPresenter;
use Project\Transformers\UserTransformer;

class UserPresenter extends FractalPresenter
{

    public function getTransformer()
    {
        return new UserTransformer();
    }

}