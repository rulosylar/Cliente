jQuery(document).ready(function($) {
  var socket = io.connect('http://localhost:3001/client');
  socket.on('hola',function(data) {
		console.log(data);
  });
  $("a.lectura").on('click', function(event) {
		event.preventDefault();
		socket.emit('lee',{conexion: 'leeTags'});
   });

   socket.on('tagsLeeidos',function(datos) {
    $.ajax({
       type : "POST",
       url : "http://localhost:3000/updateitems",
       context: document.body,
       dataType: 'html',
       data: {items: datos },
       success: function(s,x) { $(this).html(s) }
    });
  });
});
