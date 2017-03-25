$(document).on('turbolinks:load', function () {

    // tinymce.init({
    //     selector: '.textarea',
    //     plugins : 'advlist autolink link image lists charmap print preview imagetools textcolor colorpicker uploadimage',
    //     height: "500px",
    //     toolbar1: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify' +
    //     ' | bullist numlist outdent indent | link image',
    //     toolbar2: "forecolor | backcolor | uploadimage",
    //     paste_data_images: true
    // });
    //
    $(function() {
        $('.textarea').tinymce({
            plugins : 'advlist autolink link image lists charmap print preview imagetools textcolor colorpicker uploadimage',
            height: "500px",
            toolbar1: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify' +
            ' | bullist numlist outdent indent | link image',
            toolbar2: "forecolor | backcolor | uploadimage",
            paste_data_images: true
        });
    });

    $('.alert').delay(2000).fadeOut(1500);

})



