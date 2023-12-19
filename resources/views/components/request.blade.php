<div class="my-2 shadow text-white bg-dark p-1" id="">
    <div class="d-flex justify-content-between">
        <table class="ms-1">
            <td class="align-middle">Name: {{ $user->name }}</td>
            <td class="align-middle"> - </td>
            <td class="align-middle">Email: {{ $user->email }}</td>
            <td class="align-middle">
        </table>
        <div>
            @if ($mode == 'sent')
                <button id="cancel_request_btn_" class="btn btn-danger me-1 withDraw"
                    data-user-id="{{ $user->id }}">Withdraw Request</button>
            @else
                <button id="accept_request_btn_" class="btn btn-primary me-1 connect"
                    data-user-id="{{ $user->id }}">Accept</button>
            @endif
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
    $(document).ready(function() {
        $('.connect').on('click', function() {
            var userId = $(this).data('user-id');
            sendConnectionRequest(userId);
        });

        function sendConnectionRequest(userId) {
            $.ajax({
                url: '/connections/' + userId,
                type: 'POST', // Use POST method to send data
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function(response) {
                    // Handle success, e.g., show a message or update the UI
                    console.log(response);
                    if (response.message === 'Connection create successfully.') {
                        // Connection request sent successfully
                        // Optionally, you can hide the connected user's card here
                        $(`.connect[data-user-id="${userId}"]`).closest('.my-2').hide();
                    } else {
                        // Connection already sent or other error
                        // Alert or handle as needed
                        // alert(response.message);
                    }
                },
                error: function(error) {
                    // Handle error, e.g., show an error message
                    console.error(error);
                    alert('Error sending connection request.');
                }
            });
        }
    });


    $(document).ready(function() {
        $('.withDraw').on('click', function() {
            var userId = $(this).data('user-id');
            withDrawRequest(userId);
        });

        function withDrawRequest(userId) {
            $.ajax({
                url: '/user-remove/' + userId,
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
                        $(`.withDraw[data-user-id="${userId}"]`).closest('.my-2').hide();
                    } else {
                        // alert(response.message);
                    }
                },

            });
        }
    });
</script>
