    <h1>Received Requests</h1>

    @foreach ($recievedRequests as $recievedRequest)
        <x-request :user="$recievedRequest->sender" :mode="'received'" />
    @endforeach
