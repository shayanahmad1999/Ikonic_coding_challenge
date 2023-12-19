<div id="connections-container">
    @foreach ($connections as $connection)
        <x-connection :user="$connection->connectedUser" />
    @endforeach
</div>

<div class="d-flex justify-content-center w-100 py-2">
    <button class="btn btn-sm btn-primary" id="load-more-connections"
            data-next-page="{{ $connections->currentPage() + 1 }}"
            data-last-page="{{ $connections->lastPage() }}">
        Load more
    </button>
</div>
<script>
    $(document).ready(function () {
        $('#load-more-connections').on('click', function () {
            var nextPage = $(this).data('next-page');
            var lastPage = $(this).data('last-page');

            if (nextPage <= lastPage) {
                $.ajax({
                    url: '/connections/load-more?page=' + nextPage,
                    method: 'GET',
                    success: function (data) {
                        $('#connections-container').append(data);
                        $('#load-more-connections').data('next-page', nextPage + 1);
                    },
                    error: function (error) {
                        console.log('Error fetching more connections:', error);
                    }
                });
            } else {
                // No more pages, hide or disable the button
                $('#load-more-connections').hide();
            }
        });
    });
</script>
