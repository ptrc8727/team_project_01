<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

<div class="container">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="/">Team Project</a>
    </nav>


<h1>새로운 책 추가하기</h1>
<form action="addok" method="post">
  <div class="form-horizontal">

    <div class="form-group row">
    <label class="col-form-label col-sm-2" for="title">Title</label>
    <div class="col-sm-8">
      <input autofocus type="text" class="form-control" name="title" value=""/>
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="writer">Author</label>
    <div class="col-sm-7">
      <input class="form-control" type="text" name="writer" value=""/>
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="publish">Publish</label>
    <div class="col-sm-10">
     <input type="number" name="publish"/>
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="url">More Information URL</label>
    <div class="col-sm-10">
      <textarea class="form-control" name="url" rows="7" cols="20"></textarea>
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="summary">Summary</label>
    <div class="col-sm-10">
      <textarea class="form-control" name="summary" rows="7" cols="20"></textarea>
    </div>
</div>


    <div class="form-group row">
      <label class="col-form-label col-sm-2"></label>
      <div class="col-sm-10">
        <input type="submit" value="Save" class="btn btn-default btn-success">
        <input type='button' value='cancel' onclick="history.back()"/>
      </div>
    </div>
  </div>
</form>

</div>
</body>
</html>