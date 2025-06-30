window.onload = function () {
    const toggleButton = document.getElementById('toggle-nav-btn');
    toggleButton.addEventListener('click', (event) => {
         const toggleMenu = document.getElementById('toggle-nav');

         if (toggleMenu.style.display == 'block') {
            toggleMenu.style.display = 'none';
         } else {
            toggleMenu.style.display = 'block';
         }
    });

    adjustEventDescriptionHeight();

};

document.addEventListener('DOMContentLoaded', () => {
    const observer = new ResizeObserver(() => {
        adjustEventDescriptionHeight();
    });

    const eventSchedule = document.getElementById('event-schedule');
    observer.observe(eventSchedule);
}, false);

window.onresize = function () {
    adjustEventDescriptionHeight();
}

function adjustEventDescriptionHeight() {
    const width = window.innerWidth;
    const eventDescription = document.getElementById('event-description');
    if (width < 1060) {
        eventDescription.style.height = 'auto';
    } else {
        const eventSchedule = document.getElementById('event-schedule');
        eventDescription.style.height = `${eventSchedule.clientHeight}px`;
    }
}
