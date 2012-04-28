//Declaracion de variables
var nombre = 'Adrian';
var apellido = 'Cuadros';

//Obtener elementos a Old School
welcome = document.getElementById('welcome');
username = document.getElementById('username');
password = document.getElementById('password');
confirmation = document.getElementById('password_confirmation');

// // Alert
// alert('Bienvenido a nuestra aplicacion'); // Equivalente a window.alert('')
// 
// // Prompt
// usuario = prompt('Cual es tu nombre?');
// welcome.innerHTML = "Bienvenido " + usuario;
// 
// // Confirm
// if(!confirm('Estas seguro que quieres entrar?'))
//   window.location.href= 'http://google.com'

function correctConfirmation(){
  return password.value == password_confirmation.value
}

correctUsername = function(){
  return username.value.length > 4;
}

// Objetos

persona = {
  'nombre' : 'Jose',
  'apellido' : 'Reyes'
}