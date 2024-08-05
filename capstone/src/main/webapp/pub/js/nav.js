console.log("nav.js is loaded");

document.addEventListener('DOMContentLoaded', function() {
    const navLinks = document.querySelectorAll('.nav-link');
    const currentPathname = window.location.pathname;

    navLinks.forEach(link => {
        let newHref;
        if (currentPathname === '/') { // Assuming the homepage is '/'
            // Adjust href for homepage
            switch (link.getAttribute('href').substring(1)) { // Remove '#' for comparison
                case 'learn':
                    newHref = '#learn';
                    break;
                case 'questions':
                    newHref = '#questions';
                    break;
                case 'instructors':
                    newHref = '#instructors';
                    break;
            }
        } else {
            // Default href for other pages
            switch (link.getAttribute('href').substring(1)) { // Remove '#' for comparison
                case 'learn':
                    newHref = '#learn';
                    break;
                case 'questions':
                    newHref = '#questions';
                    break;
                case 'instructors':
                    newHref = '#instructors';
                    break;
            }
        }

        if (newHref) {
            link.setAttribute('href', newHref);
        }
    });
});
