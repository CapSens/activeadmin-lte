$(document).ready(function() {
  if ($('#sidebar').length > 0) {
    console.log($(this));
    $('#sidebar').addClass('col col-md-4')
    $('#main_content_wrapper').addClass('col col-md-8')
  }
});
