document.addEventListener("DOMContentLoaded", function() {
  var validate_passwords_match = function() {
    if ( document.getElementById("input_admin_password_confirmation").value !== '' &&
         document.getElementById("input_admin_password").value !== document.getElementById("input_admin_password_confirmation").value ) {
      document.getElementById("input_admin_password_confirmation").setCustomValidity('Password must match.');
    } else {
      document.getElementById("input_admin_password_confirmation").setCustomValidity('');
    };
  }
  document.getElementById("input_admin_password").addEventListener("change", function() { validate_passwords_match(); });
  document.getElementById("input_admin_password_confirmation").addEventListener("change", function() { validate_passwords_match(); });
});
