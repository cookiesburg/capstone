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

//= require rails-ujs
//= require_self
//= require sweetalert2
//= require sweet-alert2-rails
//= require turbolinks
//= require_tree .


$(document).ready(function() {
    var typed = new Typed('#typed', {
        stringsElement: '.typed-strings',
        typeSpeed: 20
      });

      $("#cooker-img").click(function() {
        swal("<%=current_user.eater.cooker.user.username %>",
             "email: <%=current_user.eater.cooker.user.email %> </br> phone: <%=current_user.eater.cooker.user.phone_number %>",
            );
      });
});
