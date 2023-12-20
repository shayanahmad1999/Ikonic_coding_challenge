var skeletonId = 'skeleton';
var contentId = 'content';
var skipCounter = 0;
var takeAmount = 10;

//:::::::::::::::::: network_connections work ::::::::::::::::::://
$(document).ready(function () {
  $('.connectButton').on('click', function () {
    var userId = $(this).data('user-id');
    sendConnectionRequest(userId);
  });

  // Function to load suggestions content
  function loadSuggestions() {
    // Assuming you have a route to fetch suggestions content
    $.ajax({
      url: '/suggestions', // Replace with your actual route
      type: 'GET',
      success: function (response) {
        $('#content').html(response);
        $('#content').removeClass('d-none');
      },
      error: function (error) {
        console.error(error);
        alert('Error loading suggestions.');
      }
    });
  }

  // Function to load sent requests content
  function loadSentRequests() {
    // Assuming you have a route to fetch sent requests content
    $.ajax({
      url: '/send-requests', // Replace with your actual route
      type: 'GET',
      success: function (response) {
        $('#content').html(response);
        $('#content').removeClass('d-none');
      },
      error: function (error) {
        console.error(error);
        alert('Error loading sent requests.');
      }
    });
  }

  // Function to load recieved requests content
  function loadRecievedRequests() {
    // Assuming you have a route to fetch sent requests content
    $.ajax({
      url: '/recieved-requests', // Replace with your actual route
      type: 'GET',
      success: function (response) {
        $('#content').html(response);
        $('#content').removeClass('d-none');
      },
      error: function (error) {
        console.error(error);
        alert('Error loading sent requests.');
      }
    });
  }

  // Function to load recieved connections content
  function loadRecievedConnections() {
    // Assuming you have a route to fetch sent requests content
    $.ajax({
      url: '/connections', // Replace with your actual route
      type: 'GET',
      success: function (response) {
        $('#content').html(response);
        $('#content').removeClass('d-none');
      },
      error: function (error) {
        console.error(error);
        alert('Error loading sent requests.');
      }
    });
  }

  // Load initial content
  loadSuggestions();

  // Handle radio button click event
  $('input[name="btnradio"]').on('change', function () {
    var selectedRadio = $('input[name="btnradio"]:checked').attr('id');

    // Perform actions based on the selected radio button
    switch (selectedRadio) {
      case 'btnradio1':
        loadSuggestions();
        break;
      case 'btnradio2':
        loadSentRequests();
        break;
      case 'btnradio3':
        loadRecievedRequests();
        break;
      case 'btnradio4':
        loadRecievedConnections();
        break;
      // Add cases for other radio buttons/views
    }
  });
});

//:::::::::::::::::: network_connections work ::::::::::::::::::://