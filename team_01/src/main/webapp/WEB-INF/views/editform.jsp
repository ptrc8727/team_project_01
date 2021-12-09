<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.crud.dao.BoardDAO, com.crud.bean.BoardVO"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

<%-- <%
	BoardDAO boardDAO = new BoardDAO();
	String id=request.getParameter("id");	
	BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%> --%>

 <div class="container">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="/">AppTest</a>
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link" href="/about">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/data">Data</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/books">Books</a>
        </li>
      </ul>
    </nav>

<h1>기록 편집하기</h1>

<form:form commandName="boardVO" method="POST" action="../editok" >
<form:hidden path="seq"/>
<%-- <input type="hidden" name="seq" value="<%=u.getSeq() %>"/> --%>


<div class="form_horizontal">
      <div class="form-group row">
    <label class="col-form-label col-sm-2" for="title">Title</label>
    <div class="col-sm-8">
      <form:input autofocus="true" type="text" class="form-control" name="title" path="title"/>
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="writer">Author</label>
    <div class="col-sm-7">
      <form:input type="text" class="form-control" name="writer" path="writer"/>
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="publish">Publish</label>
    <div class="col-sm-10">
      <form:input type="number" name="publish" path="publish"/>
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="url">More Information URL</label>
    <div class="col-sm-7">
      <form:input type="text" class="form-control" name="url" path="url"/>
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="summary">Summary</label>
    <div class="col-sm-7">
      <form:input type="text" class="form-control" name="summary" path="summary"/>
    </div>
</div>

      <div class="form-group row">
        <label class="col-form-label col-sm-2"></label>
        <div class="col-sm-10">
          <input type="submit" name="" value="edit" class="btn btn-default btn-warning" >
          <input type='button' value='cancel' onclick="history.back()"/>
        </div>
      </div>
    </div>
</form:form>

</div>

</body>
</html>