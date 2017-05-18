$(document).ready(function(){
    $('#characterLeft').text('Plus que 140 caractères');
    $('#message').keydown(function () {
        var max = 140;
        var len = $(this).val().length;
        if (len >= max) {
            $('#characterLeft').text('Vous avez atteint la limite');
            $('#characterLeft').addClass('red');
            $('#btnSubmit').addClass('disabled');
        }
        else {
            var ch = max - len;
            $('#characterLeft').text('Plus que ' + ch + ' caractères');
            $('#btnSubmit').removeClass('disabled');
            $('#characterLeft').removeClass('red');
        }
    });
});
