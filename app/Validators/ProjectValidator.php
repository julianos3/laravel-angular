<?php

namespace Project\Validators;

use \Prettus\Validator\LaravelValidator;

class ProjectValidator extends LaravelValidator {

    protected $rules = [
        'owner_id' => 'required|integer',
        'client_id' => 'required|integer',
        'name' => 'required',
        'progress' => 'required',
        'status' => 'required',
        'due_date' => 'required',
    ];

    /*
    protected $rules = [
        ValidatorInterface::RULE_CREATE => [],
        ValidatorInterface::RULE_UPDATE => [],
   ];
    */

}