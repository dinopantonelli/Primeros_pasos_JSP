<! archivo pagina que leee las cookies con ls preferencias y genera un archivo personalizado>

<html>
<body>

<h1 style="text-align:center">Agencia de viajes</h1>

<%
//Valor por defecto cuando entra por primera vez

    String ciudad_favorita="Madrid";
 
// Lee la cookie de la peticion del navegador

    Cookie[] lasCookies=request.getCookies();

//Buscar las prefecrencias. Ciudad favorita

if(lasCookies!=null){

    for(Cookie cookie_temporal: lasCookies){

       if("agencia_viajes.ciudad_favorita".equals(cookie_temporal.getName())){
 
         ciudad_favorita = cookie_temporal.getValue();
         break;
      }
   
    }

}

%>

<h3> Vuelos a: <%= ciudad_favorita %></h3>

<p> Podria consultar en una base de datos con los vuelos disponibles a la ciudad favorita y mostrarlos de una <p>
<p> Esto es un texto de ejemplo <p>

<p> Hoteles en: <%= ciudad_favorita%></h3>
<p> Esto es un texto de ejemplo <p>

<p> Descuento en restaurantes de: <%= ciudad_favorita%></h3>
<p> Esto es un texto de ejemplo <p>

</body>
</html> 