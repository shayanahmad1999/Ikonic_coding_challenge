    <h1>Sent Requests</h1>

    @foreach ($sentRequests as $sentRequest)
        <x-request :user="$sentRequest->receiver" :mode="'sent'" />
    @endforeach
