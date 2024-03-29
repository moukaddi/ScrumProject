﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
    <form id="form1" runat="server">
    <div class="container mt-5">
                <div class="alert alert-primary mb-2" role="alert">
                  Hi M.<%= Session["fullname"].ToString() %> , have a nice day with us ,
                </div>
          <%if (ou.ds.Tables["allcourses"].Rows.Count > 0)
    {
         %>
    <div class="row justify-content-center">
        
    <%
        for (int i = 0; i < ou.ds.Tables["allcourses"].Rows.Count; i++)
        {
            %>
        <div class="col-md-4">


                <div class="card">
                <img src="<%=ou.ds.Tables["allcourses"].Rows[i][4].ToString()%>" class="card-img-top" alt="...">
                <div class="card-body">
                <h5 class="card-title"><%= ou.ds.Tables["allcourses"].Rows[i][1].ToString()%></h5>
                <p class="card-text"> <%= ou.ds.Tables["allcourses"].Rows[i][2].ToString() %></p>
                <a href="#" class="btn btn-primary">Voir Plus</a>
                </div>

            </div>
            </div>
           
            

        <%}%>
        
        </div>
    <%
    }
    
     %>
            
        
            
        </div>
    
    </form>
</body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>
