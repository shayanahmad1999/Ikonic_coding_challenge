<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserConnectionController extends Controller
{
    public function index()
    {
        // Get the current user
        $currentUser = auth()->user();

        // Get users who are not connected, haven't sent an invitation, and haven't received an invitation
        $suggestions = User::whereDoesntHave('connections', function ($query) use ($currentUser) {
            $query->where('user2_id', $currentUser->id);
        })
            ->whereDoesntHave('sentRequests', function ($query) use ($currentUser) {
                $query->where('user2_id', $currentUser->id);
            })
            ->whereDoesntHave('receivedRequests', function ($query) use ($currentUser) {
                $query->where('user1_id', $currentUser->id);
            })
            ->where('id', '!=', $currentUser->id)
            ->get();

        return view('connections.suggestions', compact('suggestions'));
    }
}
