<?php

namespace Project\Validators;

use \Prettus\Validator\LaravelValidator;

class ProjectNoteValidator extends LaravelValidator {

    protected $rules = [
        'title' => 'required',
        'note' => 'required',
    ];

    /*
    protected $rules = [
        ValidatorInterface::RULE_CREATE => [],
        ValidatorInterface::RULE_UPDATE => [],
   ];
    */

}