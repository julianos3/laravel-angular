<?php

namespace Project\Transformers;

use Project\Entities\ProjectMember;
use Project\Entities\User;
use League\Fractal\TransformerAbstract;

class MemberTransformer extends TransformerAbstract
{

    public function transform(User $member)
    {
        return [
            'member_id' => $member->id,
            'name' => $member->name
        ];
    }

}