<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>



	<script type="text/javascript" src="../resources/js/dtree.js">
		
	</script>

	<script type="text/javascript">
	
		console.log(${list});
		d = new dTree('d') // ����

		
		d.add(${list}.post_idx, -1, 'root'); //. �ֻ��� ��Ʈ, -1

		d.add(1, 0, 'node');

		d.add(2, 0, 'node2');

		document.write(d); //ȭ�鿡 ǥ��
	</script>





</body>
</html>