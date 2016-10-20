<?php

namespace Project\Transformers;

use Project\Entities\ProjectMember;
use Project\Entities\User;
use League\Fractal\TransformerAbstract;

class ProjectMemberTransformer extends TransformerAbstract
{

    protected $defaultIncludes = [
        'user'
    ];

    public function transform(ProjectMember $member)
    {
        return [
            'id' => $member->id,
            'project_id' => $member->project_id
        ];
    }

    public function includeUser(ProjectMember $member)
    {
        return $this->item($member->member, new MemberTransformer());
    }

}