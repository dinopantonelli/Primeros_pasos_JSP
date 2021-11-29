//video 202
//package conectaBD;
import java.sql.*;
public class Conecta_Pruebas{
          public static void main(String[] args){
              
              //paso 1_ creamos la coneccion
              
              try{
                  //1. CREAR CONEXION
                  Connection miConexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/prueba", "root", "");
                  
                  //2. CREAR OBJETO STATEMENT
                  
                  Statement miStatement=miConexion.createStatement();
                  
                  //3. EJECCUTAR SQL
                  
                  ResultSet miResulset=miStatement.executeQuery("SELECT * FROM productos");// es la sentencia que se ejecuta en SQL para recorrer la tabla obtuvimos todos los campos de la base
                  
                  //4.RECORRER EL RESULSET
                  //ResultSetMetaData rsmd = miResulset.getMetaData();
            	  //String name = rsmd.getColumnName(1);
            	 // System.out.println(name); 
                  while(miResulset.next()){ // mientras haya un registro mas adelante (otra linea)
                	                 	                 
                	  System.out.println(miResulset.getString("NOMBREARTÍCULO") + " " + miResulset.getString("CÓDIGOARTÍCULO") + " " + miResulset.getString("PRECIO"));
                  }
              }catch(Exception e){
                  
                   System.out.println("NO CONECTA");
                   e.printStackTrace();                  
                            
          }
          
      }
          
  }