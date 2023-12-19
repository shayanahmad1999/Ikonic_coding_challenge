<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RecievedRequest extends Model
{
    use HasFactory;
    protected $guarded = [];
    public function sender()
    {
        return $this->belongsTo(User::class, 'user1_id');
    }

    public function receiver()
    {
        return $this->belongsTo(User::class, 'user2_id');
    }
}
