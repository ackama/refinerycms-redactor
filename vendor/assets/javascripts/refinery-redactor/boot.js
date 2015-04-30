$(document).on('ready page:load', function() {
  var csrf_token = $('meta[name=csrf-token]').attr('content');
  var csrf_param = $('meta[name=csrf-param]').attr('content');
  var params;
  if (csrf_param !== undefined && csrf_token !== undefined) {
    params = csrf_param + "=" + encodeURIComponent(csrf_token);
  }

  var defaultOptions = {
    "imageUpload":"/redactor_images?" + params,
    "fileUpload":"/redactor_resources?" + params,
    "path":"/assets/redactor-rails",
    "css": "style.css"
  };


  $('.visual_editor').redactor(
    $.extend({}, RefineryRedactor.CONFIG, defaultOptions)
  );
});

