<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $dates = ['created_at', published ];
    
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
