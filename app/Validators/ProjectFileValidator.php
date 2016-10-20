<?php

namespace Project\Validators;

use Illuminate\Routing\Matching\ValidatorInterface;
use Prettus\Validator\LaravelValidator;

class ProjectFileValidator extends LaravelValidator {

    protected $rules = [
        \Prettus\Validator\Contracts\ValidatorInterface::RULE_CREATE => [
            'name' => 'required',
            'file' => 'required|mimes:jpeg,jpg,png,gif,pdf,zip',
            'description' => 'required'
        ],
        \Prettus\Validator\Contracts\ValidatorInterface::RULE_UPDATE => [
            'name' => 'required',
            'description' => 'required'
        ]
    ];

}