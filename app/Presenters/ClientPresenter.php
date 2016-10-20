<?php

namespace Project\Presenters;

use Project\Transformers\ClientTransformer;
use Prettus\Repository\Presenter\FractalPresenter;

class ClientPresenter extends FractalPresenter
{
    /**
     * Transformer
     *
     * @return \League\Fractal\TransformerAbstract
     */
    public function getTransformer()
    {
        return new ClientTransformer();
    }
}