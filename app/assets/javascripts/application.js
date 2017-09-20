// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require_tree .

function splur(int, one, two, five) {
  var sint = int.toString();
  var int = sint.slice(-2);
  if(int > 9 && int < 20) return sint + ' ' + five;
  var int = sint.slice(-1);
  if(int == 1) return sint + ' ' + one;
  if(int > 1 && int < 5) return sint + ' ' + two;
  return sint + ' ' + five;
}
