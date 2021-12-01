<html>

<body>


<% 
 
    //leyendo datos del formulario
    String ciudad_favorita=request.getParameter("ciudad_favorita");
   
    //Crear la cookie ver API JEE clase Cookie
     
    Cookie laCookie=new Cookie("agencia_viajes.ciudad_favorita",ciudad_favorita); //utlizando esa nomenclatura es mejor para identificar que guarda 
 
    // Vida de la Cookie
    
     laCookie.setMaxAge(1000);  //en segundos

     //Enviar al Usuario

     response.addCookie(laCookie);
    

%>
 
  Gracias por enviar tus preferencias

<a href="agencia_viajes.jsp">Ir a la agencia de viajes</a>

</body>
</html> 