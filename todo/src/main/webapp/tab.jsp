<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>
<script>
$("span").on("click", function(){
// 	$("#content").load($(this).data("url"));
// 위의 load 함수와 아래의 ajax는 똑같음
	$.ajax({
		url: $(this).data("url"),
		dataType: "html"
	}).done(function (result){
		$("#content").html(result);
	});
})
</script>

</body>
</html>