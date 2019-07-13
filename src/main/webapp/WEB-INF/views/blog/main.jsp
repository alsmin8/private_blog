<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">


<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Blog Post - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap core JavaScript -->
  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Custom styles for this template -->
   <link href="/resources/css/blog-post.css" rel="stylesheet">
  <link href="/resources/css/custom.css" rel="stylesheet">
 
  

  

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">Start Bootstrap</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Services</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <!-- Post Content Column -->
      <div class="col-lg-8">

        <!-- Title -->
        <h1 class="mt-4">${newPost.post_title}</h1>

        <!-- Author -->
        <p class="lead">
          by
          <a href="#">${newPost.post_writer_idx }</a>
        </p>

        <hr>

        <!-- Date/Time -->
        <p>${newPost.post_regdate }</p>

        <!-- Post Content -->
        
        <p class="lead">
        
        
        </p>

        <p>${newPost.post_contents }</p>

     
       <!--  <blockquote class="blockquote">
          <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
          <footer class="blockquote-footer">Someone famous in
            <cite title="Source Title">Source Title</cite>
          </footer>
        </blockquote> -->

        
        <hr>

        <!-- Comments Form -->
        <div class="card my-4">
          <h5 class="card-header">Leave a Comment:</h5>
          <div class="card-body">
            <form>
              <div class="form-group">
                <textarea class="form-control" rows="3"></textarea>
              </div>
              <button type="submit" class="btn btn-primary">Submit</button>
            </form>
          </div>
        </div>

        <!-- Single Comment -->
        <div class="media mb-4">
          <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
          <div class="media-body">
            <h5 class="mt-0">Commenter Name</h5>
            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
          </div>
        </div>

        <!-- Comment with nested comments -->
        <div class="media mb-4">
          <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
          <div class="media-body">
            <h5 class="mt-0">Commenter Name</h5>
            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.

            <div class="media mt-4">
              <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
              <div class="media-body">
                <h5 class="mt-0">Commenter Name</h5>
                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
              </div>
            </div>

            <div class="media mt-4">
              <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
              <div class="media-body">
                <h5 class="mt-0">Commenter Name</h5>
                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
              </div>
            </div>

          </div>
        </div>

      </div>

      <!-- Sidebar Widgets Column -->
      <div class="col-md-4">

        <!-- Search Widget -->
        <div class="card my-4">
          <h5 class="card-header">Search</h5>
          <div class="card-body">
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Search for...">
              <span class="input-group-btn">
                <button class="btn btn-secondary" type="button">Go!</button>
              </span>
            </div>
          </div>
        </div>

	<!-- Side Widget -->
      <div class="card my-4">
          <h5 class="card-header">Main Menu</h5>
          <div class="card-body">
            <ul>
            <li><a href="#" id="writeTag">게시글 작성</a></li>
            </ul>
          </div>
        </div>
 
 

        
        <div class="card my-4">
          <h5 class="card-header">Side Widget</h5>
          <div class="card-body">
           
          
          <table id="listTable">
          <tr>
              <th>글제목</th>
              <th>작성일</th>
          </tr>
           <c:forEach items="${list}" var="li">
          <tr>
         
             <td><a id="${li.post_idx }" href="#">${li.post_title}</a></td>   
              <td>${li.post_regdate }</td>   
		 </tr>
		 </c:forEach>
      
          
          </table>
          </div>
        </div>

      </div>

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->
  
  
   
 
  
   <!-- The Modal -->
    <div id="myModal" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content">
        <span class="close" id="closeBtn">&times;</span>   
        <p id="modalwriter">작성자:</p>
        <span>Title</span><input id="modalTitle" name="title" width="10px"><hr>
        <textarea id="modalcontent"name="content" cols="40" rows="8" ></textarea><br>                                                         
       <div>
      	<button class="btn btn-primary" type="button" id="modalSubmit">Submit</button>
      	<button class="btn btn-primary" type="button" id="modalUpdate">Update</button>
      	<button class="btn btn-primary" type="button" id="modalDelete">Delete</button>      	
      	<button class="btn btn-secondary" type="button">Cancel</button>
      	
      </div>
        
      </div>
   
      
 
    </div>
  
  
  

  
  <script>
  
  
  // 모달 창 생성 
  var modal = document.getElementById('myModal');
  
  var span = document.getElementsByClassName("close")[0];
  
  var writeTag = document.getElementById("writeTag");
  
  writeTag.onclick = function() {
      modal.style.display = "block";
  }

//When the user clicks on <span> (x), close the modal
  span.onclick = function() {
      modal.style.display = "none";
  }

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
      if (event.target == modal) {
          modal.style.display = "none";
      }
  }

 
  
  
  // Post Insert

  var modalwriter=$('modalwriter').val();
  
//   var modalTitle=$('modalTitle').val();
  
//   var modalcontent=$('modalcontent').val();
  
  var modalSubmit=document.getElementById("modalSubmit");
  
  var modalUpdate=document.getElementById("modalUpdate");
  
  
   modalSubmit.onclick=function(e){
	  
	   e.preventDefault();
	   
	   //alert(allData.post_title);
	   
		register();
	  
	  
  } 
  
  

	   
	
   function register(){
	   
		$.ajax({
			url : '/blog/postInsert',
			data : JSON.stringify({ "post_writer_idx": "1" ,
				  "post_password": '' , 
				  "post_title": $('#modalTitle').val(), 
				  "post_contents": $('#modalcontent').val()}),
			type : 'POST',
			contentType : "application/json; charset=utf-8",
			success : function() {
				
				alert("성공");
				
			}
		}); 
		   
   }
   
   function update(allData){
	   
	   $.ajax({
			url : '/blog/postUpdate',
			data : JSON.stringify(allData),
			type : 'POST',
			contentType : "application/json; charset=utf-8",
			success : function() {
				
				alert("성공");
				//location.href="/blog/main";
			}
		}); 
	   
	   
   }
   
 function deletePost(post_idx){
	   

	   $.ajax({
			url : '/blog/postDelete',
			data : { "post_idx": post_idx},
			type : 'POST',
			success : function() {

				alert("성공");
				//location.href="/blog/main";
			}
		}); 
	   
	   
   }
   
   
 
   function getOnePost(choice_id){

	   $.ajax({
			url : '/blog/getOnePost',
			data : { "post_idx": choice_id},
			dataType:'json', //서버로부터 받는 데이터의 타입
			type : 'POST',
			success : function(result) {

				console.log( "json : " + JSON.stringify(result)  );

				var post_title=result["post_title"];
				var post_contents=result["post_contents"];
				var post_regdate=result["post_regdate"];
				var post_idx=result["post_idx"];
				
				console.log( "post_title : " + post_title  );
				
				// 모달창 띄움
				$('#modalTitle').val(post_title);
				$('#modalcontent').val(post_contents);
				$('#modalSubmit').remove();
				modifyModalPop();
				
				

				// 게시글 수정
				$('#modalUpdate').click(function(){
				
					
					allData={ "post_writer_idx": "1" ,
							  "post_password": '' , 
							  "post_idx": post_idx , 
							  "post_title": $('#modalTitle').val(), 
							  "post_contents": $('#modalcontent').val()}
					
					update(allData);
					
				});
			
				//게시글 삭제
				$('#modalDelete').click(function(){
					
					deletePost(post_idx);
					
				});
				
				
			}, error: function(){
				
				alert("실패");
			}
		}); 
	   
   }
   

   
   $("#listTable tr").click(function(){        
	  
	   var choice_id = $(this).closest('tr').find('a').attr('id'); // tr의 가장 가까운 a의 id 갖고옴
	   //alert(choice_id);

	   getOnePost(choice_id);
	
	   
	   
	 }); 
	   
   
   function modifyModalPop() {
	      modal.style.display = "block";
	  }

   

  </script>
  

  
  
  
  
  
 

  
  
  

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
  </footer>

  

  

</body>
</html>