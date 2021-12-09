<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.BoardDAO, com.crud.bean.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>AppTest</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
</script>
</head>
<body>
 <div class="container">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="/">Team Project</a>
    </nav>
    
    <h1>List of books</h1>
    
<div class="table-responsive-sm">
  <table class="table table-hover">
    <thead>  
		<tr><th>Title</th>
		<th>Author</th>
		<th>Registered Date</th>
		<th class="d-print-none">
     		<button type='button' onclick="location.href='add'">add</button>
		</th></tr>  
	</thead>
<c:forEach items="${list}" var="u">

	<tr><td>${u.title}</td><td>${u.writer}</td><td>${u.regdate}</td>  
  
		<td><a class="btn btn-sm btn-warning" href="editpost/${u.seq}">Edit</a></td>  
		<td><a class="btn btn-sm btn-danger" href="javascript:delete_ok('${u.seq}')">Delete</a></td>
		<td><a class="btn btn-sm" href="detail/${u.seq}">Detail</a></td>

	</tr> 
</c:forEach>
</table>
</div>
</div>
</body>
</html>