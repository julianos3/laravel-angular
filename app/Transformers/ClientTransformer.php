<?php

namespace Project\Transformers;

use Project\Entities\Client;
use League\Fractal\TransformerAbstract;

class ClientTransformer extends TransformerAbstract
{
    protected $defaultIncludes = ['projects'];

    public function transform(Client $o)
    {
        return [
            'id' => $o->id,
            'name' => $o->name,
            'responsible' => $o->responsible,
            'email' => $o->email,
            'phone' => $o->phone,
            'address' => $o->address,
            'obs' => $o->obs,
        ];
    }

    public function includeProjects(Client $client)
    {
        $transformer = new ProjectTransformer();
        $transformer->setDefaultIncludes([]);
        return $this->collection($client->projects, $transformer);
    }

}