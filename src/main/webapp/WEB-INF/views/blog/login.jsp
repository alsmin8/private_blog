<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Bootstrap core JavaScript -->
  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<style type="text/css">



*        { margin:0; padding: 0; }



body{

         font-family: "���� ���";

         font-size: 0.75em;

         color: #333;

}







#login-form{

         width:200px;

         margin:100px auto;

         border: 1px solid gray;

         border-radius: 5px;

         padding: 15px;

}



/* inline�̿��� ��ҵ��� block���� �ٲ� */

#login-form input, #login-form label{

         display:block;

}


#login-form label{

         margin-top: 10px;

}



#login-form input{

         margin-top: 5px;

}



/* ��Ʈ����Ʈ ������ */

#login-form input[type='image']{

         margin: 10px auto;

}

</style>

<body>



   <form id="login-form" method="post" action="/blog/loginAction">

                  <label class="login_input">ID</label>

                  <input id="user_id" name="user_id" type="text">

                  <label class="login_input">PW</label> 

                  <input id="user_password" name="user_password" type="password"> 
                  
                  <br>
                  
                  <span>���̵� ����</span>
                  <span>�ڵ� �α���</span>

                  <input id="loginBtn" type="image" src="/resources/img/loginBtn.jpg"  height="23" width="45" value="�α���">

         </form>
         
         <form id="join_form" method="post">
         	<span id="registerBtn">ȸ�� ����</span>
         	<span id="findInfoBtn">ID/��й�ȣ ã��</span>
         
         </form>


<script>

$('#loginBtn').click(function(e){
	e.preventDefault();
	var user_id=$('#user_id').val();
	var user_password=$('#user_password').val();
	
	console.log(user_id);
	
	
	
	$('#login-form').submit();
});




</script>


</body>
</html>