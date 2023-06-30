// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "./controllers"
const dropdownButton = document.getElementById('dropdownDefaultButton');
const dropdown = document.getElementById('dropdown');

function toggleDropdown() {
  dropdown.classList.toggle('hidden');
}

dropdownButton.addEventListener('click', toggleDropdown);

window.addEventListener('click', function(event) {
  if (!dropdown.contains(event.target) && !dropdownButton.contains(event.target)) {
    dropdown.classList.add('hidden');
  }
});

const button = document.querySelector('[data-drawer-toggle="logo-sidebar"]');
const sidebar = document.getElementById('logo-sidebar');
const toggleIcon = button.querySelector('.toggle-icon');
const openIcon = button.querySelector('.open-icon');
const closeIcon = button.querySelector('.close-icon');

button.addEventListener('click', () => {
  sidebar.classList.toggle('-translate-x-full');
  toggleIcon.classList.toggle('open-icon');
  toggleIcon.classList.toggle('close-icon');
});
