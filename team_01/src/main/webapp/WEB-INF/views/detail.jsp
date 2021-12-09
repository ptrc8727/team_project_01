<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.BoardDAO, com.crud.bean.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

  
<jsp:useBean id="u" class="com.crud.bean.BoardVO" />
<jsp:setProperty property="*" name="u"/>


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

<h1>책 상세정보 확인하기</h1>
<form:form method="post" commandName="boardVO">
<input type="hidden" value="${u.title}"/>
  <div class="form-horizontal">

    <div class="form-group row">
  <label class="col-form-label col-sm-2" for="Title">Title</label>
  <div class="col-sm-8">
    <form:input readonly="true" class="form-control" id="Title" path="title"/>
  </div>
</div>

<div class="form-group row">
  <label class="col-form-label col-sm-2" for="Author">Author</label>
  <div class="col-sm-7">
    <form:input readonly="true" class="form-control" id="Author" path="writer"/>
  </div>
</div>

<div class="form-group row">
  <label class="col-form-label col-sm-2" for="Comments">Summary</label>
  <div class="col-sm-10">
    <form:textarea readonly="true" class="form-control" cols="20" id="Comments" maxlength="32000" rows="7" path="summary"/>
  </div>
</div>

<div class="form-group row">
  <label class="col-form-label col-sm-2" for="FileUrl">FileUrl</label>
  <div class="col-sm-10">
    <form:input readonly="true" class="form-control" id="url" path="url"/>
  </div>
</div>

    <div class="form-group row">
      <label class="col-form-label col-sm-2"></label>
      <div class="col-sm-10">
       <input type='button' value='cancel' onclick="history.back()"/>
      </div>
    </div>
  </div>

</form:form>

    <footer>
      <p>&copy; 2021 - Team Project</p>
    </footer>

  </div>

</body>
</html>