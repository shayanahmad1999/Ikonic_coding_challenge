<?php

namespace App\Http\Controllers;

use App\Models\SendRequest;
use Illuminate\Http\Request;

class SendRequestController extends Controller
{
    public function index(Request $request)
    {
        // Logic to fetch and return sent requests data
        $currentUser = auth()->user();
        $sentRequests = SendRequest::where('user1_id', $currentUser->id)->get();

        return view('connections.sent_requests', compact('sentRequests'));
    }

    public function create(Request $request, $userId)
    {
        // Logic to send a connection request and insert into SendRequest table
        $currentUser = auth()->user();

        // Check if the connection request already exists
        $existingRequest = SendRequest::where('user1_id', $currentUser->id)
            ->where('user2_id', $userId)
            ->first();

        if (!$existingRequest) {
            // Create a new connection request
            SendRequest::create([
                'user1_id' => $currentUser->id,
                'user2_id' => $userId,
            ]);

            return response()->json(['message' => 'Connection request sent successfully.']);
        } else {
            return response()->json(['message' => 'Connection request already sent.']);
        }
    }

    public function destroy($userId)
    {
        $currentUser = auth()->user();
        $destroy = SendRequest::where('user1_id', $currentUser->id)
            ->where('user2_id', $userId)
            ->delete();
        if ($destroy !== 0) {
            return response()->json(['success' => true]);
        } else {
            return response()->json(['success' => false, 'message' => 'Record not found.']);
        }
    }
}
