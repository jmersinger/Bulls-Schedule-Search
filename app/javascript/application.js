// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
// import "@hotwired/turbo-rails";
// import "controllers";
// import Rails from "@rails/ujs";
// import Turbolinks from "turbolinks";
// import * as ActiveStorage from "@rails/activestorage";
// import "channels";

// Rails.start();
// Turbolinks.start();
// ActiveStorage.start();
// Ensure DOM is fully loaded before executing the script

//= require jquery
//= require jquery_ujs
//= require moment
//= require fullcalendar
//= require fullcalendar/locale-all
//= require_tree .

document.addEventListener("DOMContentLoaded", function () {
  // Iterate through each numeric input field
  numericInputs.forEach((input) => {
    // Add keydown event listener to restrict input
    input.addEventListener("keydown", function (event) {
      // Allow digits, backspace, delete, arrow keys, and home/end keys
      if (
        !/[0-9]|Backspace|Delete|ArrowLeft|ArrowRight|Home|End/.test(event.key)
      ) {
        event.preventDefault();
      }
    });

    // Add input event listener to limit input length
    input.addEventListener("input", function () {
      // Remove non-digit characters
      this.value = this.value.replace(/[^\d]/g, "");
    });
  });
});
