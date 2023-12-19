@foreach ($connections as $connection)
    <x-connection :user="$connection->connectedUser" />
@endforeach
