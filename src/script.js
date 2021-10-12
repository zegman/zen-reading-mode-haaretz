window.onload = function() {
    elements = document.querySelectorAll('span');
    Array.prototype.filter.call(elements, function(element) {
        if (element.textContent == 'קריאת זן') {
            element.click();
        }
    });
};

