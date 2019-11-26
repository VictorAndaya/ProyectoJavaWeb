<%-- 
    Document   : cache
    Created on : 4/10/2019, 08:28:27 AM
    Author     : andaya
--%>
<%
    response.setHeader("Cache-control","no-cache");
    response.setHeader("Cache-control","no-store");
    response.setDateHeader("Expires",0);
%>
