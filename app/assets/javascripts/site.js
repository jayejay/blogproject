$(document).on('turbolinks:load', function () {

    tinymce.init({
        selector: '.textarea',
        plugins : 'advlist autolink link image lists charmap print preview',

    });

})



