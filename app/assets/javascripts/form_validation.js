let hikeForm = document.querySelector('form.new_hike') || document.querySelector('form.edit_hike');
if (hikeForm) {
  inputs = hikeForm.querySelectorAll('input');
}


inputs.forEach(function(input) {
  input.addEventListener('change', addRedBorder);
});

hikeForm.addEventListener('submit', checkSubmit);

function addRedBorder(event) {
  if (event.target.value == "") {
    event.target.classList.add('input-error');
  } else {
    event.target.classList.remove('input-error');
  }
}

function checkSubmit(event) {
  var error = document.querySelector('.input-error');
  var msg = '<div class="error message">All fields marked with a red border are required.</div>';
  if (error) {
    event.preventDefault();
    event.target.addAdjacentHTML('afterbegin', msg);
  }
}
