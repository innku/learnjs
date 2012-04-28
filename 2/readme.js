$(document).ready(function(){
  
  $('form').submit(function(){
    // Hacer que se pongan rojos los labels incorrectos
    if(!correctConfirmation() || !correctUsername()){
      alert('La forma es invalida');
      return false;
    }
  });
  
  // Hacer que salga un mensaje cuand sea invalido
  $('#username').keyup(function(){
    
  });
  
});

correctConfirmation = function(){
  return $('#password').val() == $('#password_confirmation').val();
}

correctUsername = function(){
  return $('#username').val().size() > 4;
}
