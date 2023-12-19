<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ConnectionInCommom extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function user()
    {
        return $this->belongsTo(User::class, 'user1_id');
    }

    public function connectedUser()
    {
        return $this->belongsTo(User::class, 'user2_id');
    }
}
