<?php

namespace App\Http\Controllers;

use App\Models\Connection;
use App\Models\RecievedRequest;
use Illuminate\Http\Request;

class ConnectionController extends Controller
{

    public function index(Request $request)
    {
        // Logic to fetch and return sent requests data
        $currentUser = auth()->user();
        $connections = Connection::where('user1_id', $currentUser->id)->paginate(10);

        return view('connections.get_connections', compact('connections'));
    }

    public function loadMoreConnections(Request $request)
{
    $currentUser = auth()->user();
    $connections = Connection::where('user1_id', $currentUser->id)
        ->paginate(5, ['*'], 'page', $request->input('page'));

    return view('connections.load_more', compact('connections'));
}

    public function create(Request $request, $userId)
    {
        // Logic to send a connection request and insert into SendRequest table
        $currentUser = auth()->user();

        // Check if the connection request already exists
        $existingRequest = Connection::where('user1_id', $currentUser->id)
            ->where('user2_id', $userId)
            ->first();

        if (!$existingRequest) {
            // Create a new connection request
            Connection::create([
                'user1_id' => $currentUser->id,
                'user2_id' => $userId,
            ]);

            RecievedRequest::where('user1_id', $userId)
                ->where('user2_id', $currentUser->id)
                ->delete();

            return response()->json(['message' => 'Connection create successfully.']);
        } else {
            return response()->json(['message' => 'Connection already sent.']);
        }
    }
    public function destroy($userId)
    {
        $currentUser = auth()->user();
        $destroy = Connection::where('user1_id', $currentUser->id)
            ->where('user2_id', $userId)
            ->delete();

        if ($destroy !== 0) {
            return response()->json(['success' => true]);
        } else {
            return response()->json(['success' => false, 'message' => 'Record not found.']);
        }
    }
}
