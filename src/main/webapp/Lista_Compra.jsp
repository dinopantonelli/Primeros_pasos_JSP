<%@ page import ="java.util.*"%>

<html>

<body>

<form name="Formulario_Compra" action="Lista_Compra.jsp">

   <p>Articulos a comprar:</p>
    <p>
    <label>
      <input type="checkbox" name="articulos" value= "agua">
      Agua </label>
      <br>
    <label>
      <input type="checkbox" name="articulos" value= "leche">
      Leche </label>
      <br>
    <label>
      <input type="checkbox" name="articulos" value= "pan">
      Pan </label>
      <br>
    <label>
      <input type="checkbox" name="articulos" value= "manzanas">
      Manzanas </label>
      <br>
    <label>
      <input type="checkbox" name="articulos" value= "carne">
      Carne </label>
       <br>
    <label>
      <input type="checkbox" name="articulos" value= "pescado">
      Pescado </label>
    </p> 
    <p> 
      <input type="submit" name="button" id="button" value="Enviar">
     <br>
    </p>
   </form>

<ul>

<h2> Carro de Compra: <h2>


<% 


//video 238
List<String> ListaElementos=(List<String>)session.getAttribute("misElementos");//en la primera entrada es null

//me fijo si el arrayList esta vacio (null) o no y depende de eso si creo o no la session
//establece una session con setAtributte(nombre, objeto que nos guarde)


  if(ListaElementos==null){  //hay que iniciar el ArrayList igual a algo si quiero que compare
  
       ListaElementos=new ArrayList<String>();
        
       session.setAttribute("misElementos",ListaElementos); //devuelve un object  que es nuestro ArrayList Listaelementos

     } 


//almaceno los elementos del array lementos en el ArrayList


String[]  elementos=request.getParameterValues("articulos");  //este rescata los parameteros cuando apreta enl boton de enviar

//out.println(request.getParameterValues("articulos")); 

if(elementos!=null){
	  
	  
      for(String elemTemp: elementos){
    	
        // out.println(elemTemp);  // esa etiqeta <li> es para que escriba en formato de lista y va dentro de una etiqueta <ul>
    
        ListaElementos.add(elemTemp);

       }
  
}

 for(String elemTemp: ListaElementos){
	 
     out.println("<li>" + elemTemp + "</li>");
}


%>

</ul>
</body>
</html> 