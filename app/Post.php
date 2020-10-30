<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $fillable = ['title', 'content', 'thumbnail', 'slug', 'user_id'];
    
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function thumbnail()
    {
        if($this->thumbnail){
            return $this->thumbnail;
        } else{
            return asset('no-thumbnail.jpg');
        }
    }
}
