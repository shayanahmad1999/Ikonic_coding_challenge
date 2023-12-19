<h1>Connections</h1>

@foreach ($connections as $connection)
    <x-connection :user="$connection->connectedUser" />
@endforeach
