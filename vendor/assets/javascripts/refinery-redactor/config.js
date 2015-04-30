window.init_redactor = function(){
  var csrf_token = $('meta[name=csrf-token]').attr('content');
  var csrf_param = $('meta[name=csrf-param]').attr('content');
  var params;
  if (csrf_param !== undefined && csrf_token !== undefined) {
    params = csrf_param + "=" + encodeURIComponent(csrf_token);
  }
  $('.visual_editor').redactor(
    { "imageUpload":"/redactor_images?" + params,
      "path":"/assets/redactor-rails",
      "css":"style.css"}
  );
}
        "plugins": [
          'fontsize',
          'fontcolor',
          'fontfamily',
          'fullscreen',
          'clips'
        ],

$(document).on( 'ready page:load', window.init_redactor );
