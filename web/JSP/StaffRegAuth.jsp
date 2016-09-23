<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<title></title>
</head>
<body>
<%-- Imports --%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="com.test.lifecycle.*" %>


<%-- HTTP header --%>
<%          response.addHeader("Cache-Control","no-cache");
	    response.addHeader("Pragma","no-cache");
	    response.addHeader("Expires","0");  				
%>
<%-- Variables that will be written --%>
<%         String sUsername = request.getParameter("username");
	   String sPassword = request.getParameter("password");
	   int sUserGroup = Integer.parseInt(request.getParameter("userGroup"));
%>
<%-- Creating new staff account - writing --%>
<%
	   try{
			
			UtilisateurDao  appDAO = UtilisateurDaoImpl.getInstanceSingleton(DaoFactory.getInstance());
                        
			appDAO.insertIntoStaff(sUsername , sPassword , sUserGroup);
                        
        } catch (Exception e) {
            e.printStackTrace();
        }
			
%>
</body>
</html>
