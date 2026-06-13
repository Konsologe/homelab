<%@ page import="java.util.Date" %>

<html>
<body>

<h1>WebSphere Liberty Test</h1>

<p>
Current time:
<%= new Date() %>
</p>

<p>
Java Version:
<%= System.getProperty("java.version") %>
</p>

</body>
</html>
