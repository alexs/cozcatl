// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .
$('#presentation').carousel();

$('#new_load_file').submit(function(){
    $('#save_load').val('Cargando...');
    $('#save_load').attr('class','btn btn-medium btn-primary disabled');
    $('input[type=submit]', this).attr('disabled', 'disabled');
});


$('.modal-footer [id^="load_data_button_"]').live("click", function(){
  $('.modal-header h5').text('Espere porfavor...  Cargando...');
  $('.modal-body p').text('Esta ventana se cerrará automáticamente una vez cargados los datos.');
  $('.modal-footer a').hide();
});




