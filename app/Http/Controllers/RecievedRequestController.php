<?php

namespace App\Http\Controllers;

use App\Models\RecievedRequest;
use Illuminate\Http\Request;

class RecievedRequestController extends Controller
{
    public function index(Request $request)
    {
        // Logic to fetch and return sent requests data
        $currentUser = auth()->user();
        $recievedRequests = RecievedRequest::where('user2_id', $currentUser->id)->get();

        return view('connections.recieved_requests', compact('recievedRequests'));
    }
}
