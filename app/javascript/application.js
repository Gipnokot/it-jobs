// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener('DOMContentLoaded', function () {
  const paginationLinks = document.querySelectorAll('.pagination a');

  paginationLinks.forEach(link => {
    link.addEventListener('click', function(e) {
      e.preventDefault();
      
      // Плавно прокручиваем к пагинации
      window.scrollTo({
        top: document.querySelector('.btn-group').offsetTop,
        behavior: 'smooth'
      });

      // Перезагружаем страницу для перехода по ссылке пагинации
      window.location.href = link.href;
    });
  });
});
