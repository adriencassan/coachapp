
function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.page-custom-header');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.pageYOffset >= navbar.offsetTop) {
        navbar.classList.add('sticky');
      } else {
        navbar.classList.remove('sticky');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
