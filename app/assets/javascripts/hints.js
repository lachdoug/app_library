document.addEventListener('turbolinks:load', function() {

  // Toggle the display of <hint> tags

  var hints_hidden = function() {
    return window.getComputedStyle(document.getElementsByTagName('hint')[0], null).display == 'none';
  };

  var set_hints_display = function(display_state) {
    var hints = document.getElementsByTagName('hint')
    for (var i = 0; i < hints.length; i++) {
      hints[i].style.display = display_state;
    };
  };

  if (document.getElementById("toggle_hints")){
    document.getElementById("toggle_hints").addEventListener("click", function() {
      if (hints_hidden()) { set_hints_display('block') } else { set_hints_display('none') };
    });
  };
});
