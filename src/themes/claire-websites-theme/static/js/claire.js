const header = document.querySelector("body > header:first-of-type");
const nav = document.querySelector("body > nav:first-of-type");


const callback = (entries, observer) => {
  entries.forEach(entry => {
  nav.classList.toggle('unpinned');
  });
}

observer = new IntersectionObserver(callback);

observer.observe(header);