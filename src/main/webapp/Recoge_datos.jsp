<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registro de Personas</title>
</head>
<body>

<%@  page import="java.sql.*" %>

<%
//Recojo los datos del Formulario Registro, los nombres del campos de formularios deben coincidir cuando los llame

   String  nombre=request.getParameter("nombre");
   String  apellido=request.getParameter("apellido");
   String  usuario=request.getParameter("usuario");
   String  contra=request.getParameter("contra");
   String  pais=request.getParameter("pais");
   String  tecno=request.getParameter("tecnologias"); 

   Class.forName("com.mysql.cj.jdbc.Driver");    //cargar en tiempo de ejecucion el Driver
   
   try{ 
   Connection miConexion= java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "");
   
   Statement miStatement= miConexion.createStatement();

    String instruccionSql="INSERT INTO USUARIOS (Nombre, Apellido, Usuario, Contraseña, Pais, Tecnologia) VALUES('"+ nombre + "','"+ apellido +"','" + usuario + "','" + contra + "','"+ pais +"','" + tecno + "')"; //ojo las denominaciones en la tabla
 
     miStatement.executeUpdate(instruccionSql);

   out.println("Registrado con exito");  

   }catch(Exception e){

     out.println("Hubo un error de conexion"); 

   }
 

%>


</body>
</html>