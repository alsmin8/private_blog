<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">


<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Blog Post - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap core JavaScript -->
<script src="/resources/vendor/jquery/jquery.min.js"></script>
<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Custom styles for this template -->
<link href="/resources/css/blog-post.css" rel="stylesheet">
<link href="/resources/css/custom.css" rel="stylesheet">


<style>
table.type08 {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	border-left: 1px solid #ccc;
	margin: 20px 10px;
}

table.type08 thead th {
	padding: 10px;
	font-weight: bold;
	border-top: 1px solid #ccc;
	border-right: 1px solid #ccc;
	border-bottom: 2px solid #c00;
	background: #dcdcd1;
}

table.type08 tbody th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	background: #ececec;
}

table.type08 td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}
</style>


</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="#">Start Bootstrap</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Services</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<!-- Page Content -->
	<div class="container">

		<table class="type08" id="table">
			<tr>
				<th>제목</th>
				<th>내용요약</th>
			</tr>

			<c:forEach items="${list }" var="li">
				<tr id="${li.post_idx }">
					<td>${li.post_title }</td>
					<td>${li.post_contents }</td>
				</tr>
			</c:forEach>




		</table>


		<!--  <blockquote class="blockquote">
          <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
          <footer class="blockquote-footer">Someone famous in
            <cite title="Source Title">Source Title</cite>
          </footer>
        </blockquote> -->


		<hr>

		<input type="text" id="post_title">
		<input type="text"	id="post_contents">



		<!-- Comments Form -->
		<div class="card my-4">
			<h5 class="card-header">Leave a Comment:</h5>
			<div class="card-body">
				<form>
					<div class="form-group">
						<textarea class="form-control" rows="3"></textarea>
					</div>
					<button type="submit" class="btn btn-primary" id="submitBtn">Submit</button>
				</form>
			</div>
		</div>





<script type="text/javascript">

//추후 에이작스로 보낼 애 미리 전역 변수로 선언
	allData={"POST_TITLE": "",
				"POST_CONTENTS": ""}	

$("#table tr").click(function(){

	var str = ""


	var tr = $(this);
	var td = tr.children();


	var title = td.eq(0).text();
    var contents = td.eq(1).text();
    
    // 테이블 값을 받아와서 input에 보여줌
	$("#post_title").val(title);
	$("#post_contents").val(contents);
    
	$("#submitBtn").remove();
	
		allData.POST_TITLE=title;
		allData.POST_CONTENTS=contents;
		
		alert("[1]객체값수정?"+allData.POST_TITLE+"///////////"+allData.POST_CONTENTS);
})


		//인풋 태그 변화 있을 경우
		$("input").change( function(e) {
			
			//태그 이름을 알아냄
			var targetid=e.target.getAttribute('id');
		
			var currentVal = $(this).val();
			
			renewVal(targetid, currentVal);
			
			alert("[2]객체값수정?"+allData.POST_TITLE+"///////////"+allData.POST_CONTENTS);
		})
		
		
		//객체값, currentVal 값 받아와서 객체 값 갱신 함수
		    function renewVal(targetid, currentVal){

		    	  if(targetid=="post_title"){
				    	allData.POST_TITLE=currentVal;
				   
				    }else if (targetid=="post_contents") {
				    	allData.POST_CONTENTS=currentVal;
					}
				 
				    targetid="";
				    
		}
		    


</script>






		<!-- Single Comment -->
		<div class="media mb-4">
			<img class="d-flex mr-3 rounded-circle"
				src="http://placehold.it/50x50" alt="">
			<div class="media-body">
				<h5 class="mt-0">Commenter Name</h5>
				Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
				scelerisque ante sollicitudin. Cras purus odio, vestibulum in
				vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
				vulputate fringilla. Donec lacinia congue felis in faucibus.
			</div>
		</div>

		<!-- Comment with nested comments -->
		<div class="media mb-4">
			<img class="d-flex mr-3 rounded-circle"
				src="http://placehold.it/50x50" alt="">
			<div class="media-body">
				<h5 class="mt-0">Commenter Name</h5>
				Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
				scelerisque ante sollicitudin. Cras purus odio, vestibulum in
				vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
				vulputate fringilla. Donec lacinia congue felis in faucibus.

				<div class="media mt-4">
					<img class="d-flex mr-3 rounded-circle"
						src="http://placehold.it/50x50" alt="">
					<div class="media-body">
						<h5 class="mt-0">Commenter Name</h5>
						Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
						scelerisque ante sollicitudin. Cras purus odio, vestibulum in
						vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
						nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
					</div>
				</div>

				<div class="media mt-4">
					<img class="d-flex mr-3 rounded-circle"
						src="http://placehold.it/50x50" alt="">
					<div class="media-body">
						<h5 class="mt-0">Commenter Name</h5>
						Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
						scelerisque ante sollicitudin. Cras purus odio, vestibulum in
						vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
						nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
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
			<div class="card-body">You can put anything you want inside of
				these side widgets. They are easy to use, and feature the new
				Bootstrap 4 card containers!</div>
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
			<p>Some text in the Modal..</p>
		</div>

	</div>





	<script>
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
	</script>

	<style>
</style>











	<!-- Footer -->
	<footer class="py-5 bg-dark">
	<div class="container">
		<p class="m-0 text-center text-white">Copyright &copy; Your
			Website 2019</p>
	</div>
	<!-- /.container --> </footer>





</body>
</html>