$(document).ready(function() {
  $('#who-we-are').on('click', function(event) {
    $('#news-menu').hide();
    $('#jobapp-menu').hide();
    $('#activities-menu').hide();
    $('#who-we-are-menu').toggle();
  });
  $('#activities').on('click', function(event) {
    $('#who-we-are-menu').hide();
    $('#news-menu').hide();
    $('#jobapp-menu').hide();
    $('#activities-menu').toggle();
  });
  $('#jobapp').on('click', function(event) {
    $('#who-we-are-menu').hide();
    $('#news-menu').hide();
    $('#activities-menu').hide();
    $('#jobapp-menu').toggle();
  });
  $('#news').on('click', function(event) {
    $('#jobapp-menu').hide();
    $('#activities-menu').hide();
    $('#who-we-are-menu').hide();
    $('#news-menu').toggle();
  });
});
