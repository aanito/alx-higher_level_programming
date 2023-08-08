$(document).ready(function() {
    $('#btn_translate').click(function() {
      var languageCode = $('input#language_code').val();
      var apiUrl = 'https://www.fourtonfish.com/hellosalut/hello/' + languageCode;
      
      $.ajax({
        url: apiUrl,
        method: 'GET',
        success: function(response) {
          $('div#hello').text(response.hello);
        },
        error: function(error) {
          console.log('Error:', error);
        }
      });
    });
  });