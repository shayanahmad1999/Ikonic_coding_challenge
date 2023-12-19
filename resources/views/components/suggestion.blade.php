<div class="my-2 shadow  text-white bg-dark p-1" id="">
    <div class="d-flex justify-content-between">
        <table class="ms-1">
            <td class="align-middle">Name: {{ $user->name }}</td>
            <td class="align-middle"> - </td>
            <td class="align-middle">Email: {{ $user->email }}</td>
            <td class="align-middle">
        </table>
        <div>
            <button class="btn btn-primary me-1 connectButton" data-user-id="{{ $user->id }}">Connect</button>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
    $(document).ready(function() {
        $('.connectButton').on('click', function() {
            var userId = $(this).data('user-id');
            sendConnectionRequest(userId);
        });

        function sendConnectionRequest(userId) {
            $.ajax({
                url: '/send-request/' + userId,
                type: 'POST', // Use POST method to send data
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function(response) {
                    // Handle success, e.g., show a message or update the UI
                    console.log(response);
                    if (response.message === 'Connection request sent successfully.') {
                        // Connection request sent successfully
                        // Optionally, you can hide the connected user's card here
                        $(`.connectButton[data-user-id="${userId}"]`).closest('.my-2').hide();
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
</script>
