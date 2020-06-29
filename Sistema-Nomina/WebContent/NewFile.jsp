<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="net.sf.jasperreports.engine.*" %> 
<%@ page import="java.util.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<% /*Parametros para realizar la conexión*/ 
Connection conexion; 
Class.forName("org.postgresql.Driver").newInstance(); 
conexion = DriverManager.getConnection("jdbc:postgresql://localhost:5432/nomina", "postgres", "postgresNomina18");
/*Establecemos la ruta del reporte*/ 
String reportePDF = request.getParameter("Cherry");
File reportFile = new File(application.getRealPath("Reportes/"+"Cherry"+".jrxml")); 
/* No enviamos parámetros porque nuestro reporte no los necesita asi que escriba 
cualquier cadena de texto ya que solo seguiremos el formato del método runReportToPdf*/ 
Map parameters = new HashMap(); parameters.put("Nombre_parametro", "2"); 
/*Enviamos la ruta del reporte, los parámetros y la conexión(objeto Connection)*/ 
JasperReport report = JasperCompileManager.compileReport(reportFile.getPath ());
byte[] bytes = JasperRunManager.runReportToPdf(report,null, conexion); 
/*Indicamos que la respuesta va a ser en formato PDF*/ 
response.setContentType("application/pdf");
response.setContentLength(bytes.length); 
ServletOutputStream ouputStream = response.getOutputStream(); 
ouputStream.write(bytes, 0, bytes.length);
/*Limpiamos y cerramos flujos de salia*/
ouputStream.flush();
ouputStream.close();
%>
</body>
</html>