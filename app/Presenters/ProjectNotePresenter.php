<?php

namespace Project\Presenters;

use Project\Transformers\ProjectNoteTransformer;
use Prettus\Repository\Presenter\FractalPresenter;

class ProjectNotePresenter extends FractalPresenter
{
    /**
     * Transformer
     *
     * @return \League\Fractal\TransformerAbstract
     */
    public function getTransformer()
    {
        return new ProjectNoteTransformer();
    }
}