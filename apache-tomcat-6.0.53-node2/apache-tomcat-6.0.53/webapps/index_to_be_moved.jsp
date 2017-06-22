<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
 
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
 
     
         
        <title>JSP Page</title>
     
     
<span style="color: blue; font-size: xx-small;">
        Instance 1
 
 
        </span>
        
        <hr>
 
        <span style="color: #cc0000; font-size: xx-small;">
          
 
        Session Id : <%=request.getSession().getId()%> 
 
        Is it New Session : <%=request.getSession().isNew()%>
 
        Session Creation Date : <%=new Date(request.getSession().getCreationTime())%>
 
        Session Access Date : <%=new Date(request.getSession().getLastAccessedTime())%>
 
 
        </span>
        <b>Cart List </b>
 
        <hr>
         
         
        <ul>
        <%
 
                String bookName = request.getParameter("bookName");
                List<string> listOfBooks = (List<string>) request.getSession().getAttribute("Books");
 
                if (listOfBooks == null) {
                    listOfBooks = new ArrayList<string>();
                    request.getSession().setAttribute("Books", listOfBooks);
                }
                if (bookName != null) {
                    listOfBooks.add(bookName);
                    request.getSession().setAttribute("Books", listOfBooks);
                }
 
 
                for (String book : listOfBooks) {
                    out.println("
<li>"+book + "</li>
");
                }
             
        %>
        </string></string></string></ul>
<hr>
        <form action="index.jsp" method="post">
            Book Name <input name="bookName" type="text">
 
            <input type="submit" value="Add to Cart">
        </form>
<hr>