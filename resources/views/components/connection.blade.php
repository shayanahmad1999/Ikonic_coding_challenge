@php
    use App\Models\ConnectionInCommom;
@endphp
<div class="my-2 shadow text-white bg-dark p-1" id="">
    <div class="d-flex justify-content-between">
        <table class="ms-1">
            <td class="align-middle">Name: {{ $user->name }}</td>
            <td class="align-middle"> - </td>
            <td class="align-middle">Email: {{ $user->email }}</td>
            <td class="align-middle">
        </table>
        <div>
            @php
                $connectionCommon = ConnectionInCommom::where('user1_id', $user->id)->count();
                $connectionCommons = ConnectionInCommom::where('user1_id', $user->id)->get();
            @endphp
            @if ($connectionCommon)
                <button style="width: 220px" id="get_connections_in_common_" class="btn btn-primary" type="button"
                    data-bs-toggle="collapse" data-bs-target="#collapse_{{ $user->id }}" aria-expanded="false"
                    aria-controls="collapseExample">
                    Connections in common ({{ $connectionCommon }})
                </button>
            @else
                <button style="width: 220px" id="get_connections_in_common_" class="btn btn-primary d-none"
                    type="button" data-bs-toggle="collapse" data-bs-target="#collapse_{{ $user->id }}"
                    aria-expanded="false" aria-controls="collapseExample">
                    Connections in common ({{ $connectionCommon }})
                </button>
            @endif
            <button id="create_request_btn_" class="btn btn-danger me-1 remove"
                data-user-id="{{ $user->id }}">Remove Connection</button>
        </div>

    </div>
    <div class="collapse" id="collapse_{{ $user->id }}">

        <div id="content_" class="p-2">
            {{-- Display data here --}}
            @foreach ($connectionCommons as $data)
                <x-connection_in_common :user="$data->connectedUser" />
            @endforeach
        </div>
        <div id="connections_in_common_skeletons_">
            {{-- Paste the loading skeletons here via Jquery before the ajax to get the connections in common --}}
        </div>
        <div class="d-flex justify-content-center w-100 py-2">
      <button class="btn btn-sm btn-primary" id="load_more_connections_in_common_">Load
        more</button>
    </div>
    </div>
</div>
<script>
    $(document).ready(function() {
        $('.remove').on('click', function() {
            var userId = $(this).data('user-id');
            removeConnectionRequest(userId);
        });

        function removeConnectionRequest(userId) {
            $.ajax({
                url: '/remove-connection/' + userId,
                type: 'get',
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function(response) {
                    // Handle success, e.g., show a message or update the UI
                    console.log(response);
                    if (response.success) {
                        // alert('Connection request sent successfully.');
                        // Optionally, you can hide the connected user's card here
                        $(`.remove[data-user-id="${userId}"]`).closest('.my-2').hide();
                    } else {
                        // alert(response.message);
                    }
                },
            });
        }
    });
</script>
