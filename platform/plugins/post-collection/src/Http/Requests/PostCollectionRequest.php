<?php

namespace Botble\PostCollection\Http\Requests;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Support\Http\Requests\Request;
use Illuminate\Validation\Rule;

class PostCollectionRequest extends Request
{
    public function rules(): array
    {
        return [
            'name' => ['required'],
            'status' => Rule::in(BaseStatusEnum::values()),
        ];
    }
}
