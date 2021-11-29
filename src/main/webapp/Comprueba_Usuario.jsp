<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Comprobando Usuario Registrado</title>
</head>
<body>

<%@  page import="java.sql.*"  %>

<%
   //Recojo los datos del Formulario Registro, los nombres del campos de formularios deben coincidir cuando los llame

 
   String  usuario=request.getParameter("usuario"); //lo que viene del login
   String  contra=request.getParameter("contra");
   

   Class.forName("com.mysql.cj.jdbc.Driver");    //cargar en tiempo de ejecucion el Driver
   
    try{ 

   Connection miConexion= java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "");
 
    PreparedStatement c_preparada=miConexion.prepareStatement("SELECT * FROM USUARIOS WHERE USUARIO=? AND CONTRASEÑA=?"); //consulta preparada
   
   c_preparada.setString(1, usuario);
   c_preparada.setString(2, contra);
   
   ResultSet miResultset=c_preparada.executeQuery(); //aca almacena si esta el usuario o no esta
   
   //queremos comprobar si el usuario existe o no en la BBDD usamos el metodo absolute de la I Resulset
 // out.println("conecto");
   
   while(miResultset.next()){
     
	   if(miResultset.getString("USUARIO").equals(usuario) && miResultset.getString("CONTRASEÑA").equals(contra)) out.println("Usuario autorizado");
	   else out.println("No hay usuarios coincidentes en la BBDD");
   }
   //
   // 
   miResultset.close();
   }catch(Exception e){

     out.println("Hubo un error de conexion o de codigo"); 

   } 
 

%>


</body>
</html>