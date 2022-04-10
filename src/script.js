Array.prototype.filter.call(document.querySelectorAll('span'), function(element) {
    if (element.textContent == 'קריאת זן') {
        element.click();
    }
});
