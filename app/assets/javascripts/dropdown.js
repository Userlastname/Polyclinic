// Отримуємо посилання на кнопку dropdown та сам dropdown-елемент
const dropdownButton = document.getElementById('dropdownDefaultButton');
const dropdown = document.getElementById('dropdown');

// Функція, що відкриває dropdown
function openDropdown() {
  dropdown.classList.remove('hidden');
}

// Функція, що закриває dropdown
function closeDropdown() {
  dropdown.classList.add('hidden');
}

// Додаємо обробник події для відкриття dropdown при натисканні на кнопку
dropdownButton.addEventListener('click', openDropdown);

// Додаємо обробник події для закриття dropdown при кліку поза dropdown
window.addEventListener('click', function(event) {
  if (!dropdown.contains(event.target) && !dropdownButton.contains(event.target)) {
    closeDropdown();
  }
});
