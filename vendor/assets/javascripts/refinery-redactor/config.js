window.init_redactor = function(){
  var csrf_token = $('meta[name=csrf-token]').attr('content');
  var csrf_param = $('meta[name=csrf-param]').attr('content');
  var params;
  if (csrf_param !== undefined && csrf_token !== undefined) {
    params = csrf_param + "=" + encodeURIComponent(csrf_token);
  }
  $('.visual_editor').redactor(
      { "imageUpload":"/redactor_images?" + params,
        "fileUpload":"/redactor_resources?" + params,
        "path":"/assets/redactor-rails",
        "buttonSource": true,
        "imageResizable": true,
        "plugins": [
          'fontsize',
          'fontcolor',
          'fontfamily',
          'fullscreen',
          'clips'
        ],
        "css":"style.css"}
      );
  }

$(document).on( 'ready page:load', window.init_redactor );
