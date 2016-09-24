<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
      <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<title>Insert title here</title>
</head>
 <body bgcolor="#FFFACD">
       <div class="container col s6"> 
       <div class="row">
          <div class="text text-center"><h2>Insert an item</h2></div>
    <form  action="InsertServlet" class="col s12">
      <div class="row">
        
        <div class="input-field col s6">
          <input id="cid" type="text" name="cid" class="validate">
          <label for="cid">Chat id</label>
        </div>
      </div>
      <div class="row">
         <div class="input-field col s6">
          <input id="name" type="text"  name="in" class="validate">
          <label for="name">Chat name</label>
        </div>
      </div>
      <div class="row">
        
           <div class="input-field col s6">
          <input id="description" type="text"  name="des" class="validate" >
          <label for="description">Description</label>
        </div>
          
      </div>
      <div class="row">
        
           <div class="input-field col s6">
          <input id="price" type="text" name="price" class="validate">
          <label for="price">Price</label>
        </div>
      </div>
        
        <div class="col col s6">
            <button class="btn waves-effect waves-light" type="submit" name="action">Insert
    <i class="material-icons right">send</i>
  </button>     
        </div>
        
        
        
    </form>
  </div> 
    </div>    
        
       
     
       <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
            <script type="text/javascript" src="bootstrap/inserteditcss/js/materialize.min.js"></script>
          
    </body>
  </html>