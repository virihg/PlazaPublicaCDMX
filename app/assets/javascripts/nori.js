console.log('hey nori');

jQuery(document).ready(function($){
    $cf = $('#mobile_phone_mobile_phone_number');
    $cf.blur(function(e){
        phone = $(this).val();
        match = phone.match(/([+]?\d{1,2}[.-\s]?)?(\d{3}[.-]?){2}\d{4}/g); 
        if ( match )
        {
            alert('Escribe 10 dígitos.');
            $('#mobile_phone_mobile_phone_number').val('');
            $('#mobile_phone_mobile_phone_number').focus();
        }
    });
});