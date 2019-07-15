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

   <style type="text/css">
        #calendar td{
            width: 50px;
            height: 50px;
            text-align: center;
            font-size: 15px;

            border-radius: 8px;/*모서리 둥글게*/
        }
    </style>

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
        
        
        <div class="blogCalendar" ></div>
        
        
    <table id="calendar"  align="center" >
    <tr><!-- label은 마우스로 클릭을 편하게 해줌 -->
        <td><label onclick="prevCalendar()"><</label></td>
        <td align="center" id="" colspan="5"><div id="tbCalendarYM"></div></td>
        <td><label onclick="nextCalendar()">>
            
        </label></td>
    </tr>
    <tr>
        <td align="center"><font color ="#F79DC2">일</font></td>
        <td align="center">월</td>
        <td align="center">화</td>
        <td align="center">수</td>
        <td align="center">목</td>
        <td align="center">금</td>
        <td align="center"><font color ="skyblue">토</font></td>
    </tr> 
</table>

        
        
        
        </div>
        
        

      </div>

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->
 
  
  <script>
  var today = new Date();
  var date = new Date();
  
 
	  year=today.getFullYear();
	  month=today.getMonth()+1;
	  
	 var tbCalendarYM = document.getElementById("tbCalendarYM");
	 $("#tbCalendarYM").text(year+"년"+month+"월");

	 
	  buildCalendar();
	  
	  
  function prevCalendar() {//이전 달
   today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
   buildCalendar(); //달력 cell 만들어 출력 
  }

  function nextCalendar() {//다음 달
       today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
       buildCalendar();//달력 cell 만들어 출력
  }
  function buildCalendar(){//현재 달 달력 만들기
      var doMonth = new Date(today.getFullYear(),today.getMonth(),1);
      //이번 달의 첫째 날,
      var lastDate = new Date(today.getFullYear(),today.getMonth()+1,0);
      //이번 달의 마지막 날
      var tbCalendar = document.getElementById("calendar");
      //날짜를 찍을 테이블 변수 만듬, 일 까지 다 찍힘
      var tbCalendarYM = document.getElementById("tbCalendarYM");
      //테이블에 정확한 날짜 찍는 변수
       tbCalendarYM.innerHTML = today.getFullYear() + "년 " + (today.getMonth() + 1) + "월"; 

       /*while은 이번달이 끝나면 다음달로 넘겨주는 역할*/
      while (tbCalendar.rows.length > 2) {
            tbCalendar.deleteRow(tbCalendar.rows.length-1);
       }
       var row = null;
       row = tbCalendar.insertRow();
       //테이블에 새로운 열 삽입//즉, 초기화
       var cnt = 0;// count, 셀의 갯수를 세어주는 역할
      // 1일이 시작되는 칸을 맞추어 줌
       for (i=0; i<doMonth.getDay(); i++) {
       /*이번달의 day만큼 돌림*/
            cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
            cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
       }
      /*달력 출력*/
       for (i=1; i<=lastDate.getDate(); i++) { 
       //1일부터 마지막 일까지 돌림
            cell = row.insertCell();
            cell.innerHTML = i;
            cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
        if (cnt % 7 == 1) {/*일요일 계산*/
            //1주일이 7일 이므로 일요일 구하기
            //월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
          cell.innerHTML = "<font color=#F79DC2>" + i
          //1번째의 cell에만 색칠
      }    
        if (cnt%7 == 0){/* 1주일이 7일 이므로 토요일 구하기*/
            cell.innerHTML = "<font color=skyblue>" + i
             row = calendar.insertRow();
             //토요일 다음에 올 셀을 추가
        }
        /*오늘의 날짜에 노란색 칠하기*/
        if (today.getFullYear() == date.getFullYear()
           && today.getMonth() == date.getMonth()
           && i == date.getDate()) {
            //달력에 있는 년,달과 내 컴퓨터의 로컬 년,달이 같고, 일이 오늘의 일과 같으면
          cell.bgColor = "#FAF58C";
         }
       }
  }
  
  
  
  
  </script>
  
  
   
 
  
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
      	<button class="btn btn-secondary" type="button" id="modalCancel">Cancel</button>
      	
      </div>
        
      </div>
   
      
 
    </div>
  
  
  

  
  <script>
  
  
  // 모달 창 생성 
  var modal = document.getElementById('myModal');
  
  var span = document.getElementsByClassName("close")[0];
  
  var writeTag = document.getElementById("writeTag");
  
  writeTag.onclick = function() {
		$('#modalUpdate').remove();
		$('#modalDelete').remove();
      modal.style.display = "block";
  }

//When the user clicks on <span> (x), close the modal
  span.onclick = function() {
      modal.style.display = "none";
  }
  
  
	$('#modalCancel').click(function(){
		modal.style.display = "none";		
	});
 

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
      if (event.target == modal) {
          modal.style.display = "none";
      }
  }

 
  
  
  // Post Insert

  var modalwriter=$('modalwriter').val();
  
  var modalSubmit=document.getElementById("modalSubmit");
  
  var modalUpdate=document.getElementById("modalUpdate");
  
  
   modalSubmit.onclick=function(e){
	  
	   e.preventDefault();
	   
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
				modal.style.display = "none";
				location.href="/blog/main";
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
				 modal.style.display = "none";
				 location.href="/blog/main";

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