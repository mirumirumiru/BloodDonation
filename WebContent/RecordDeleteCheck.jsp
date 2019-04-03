<%@page import="myweb.BloodDonation"%>
<%@page import="myweb.BloodDonationDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Date"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%
	//前ページで選択した値を取得
	request.setCharacterEncoding("UTF-8");
	int id = Integer.parseInt(request.getParameter("textTimes"));

	BloodDonationDAO el = new BloodDonationDAO();
	el.init();
	el.deleteRecord(id);
	el.term();
%>

<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>献血記録登録完了</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="./blooddonation.css">
</head>

<body>
	<div class="container top-space">
		<nav
			class="navbar navbar-expand-lg navbar-light bg-light navbar-color">
			<a class="navbar-brand">Contents</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" href="Top.jsp">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="RecordIndex.jsp">View</a></li>
					<li class="nav-item"><a class="nav-link"
						href="Registration.jsp">Registration</a></li>
					<li class="nav-item"><a class="nav-link"
						href="RecordFixChoice.jsp">Fix</a></li>
					<li class="nav-item"><a class="nav-link"
						href="RecordDelete.jsp">Delete</a></li>
					<li class="nav-item"><a class="nav-link"
						href="NextPossibleDate.jsp">Next</a></li>
				</ul>
			</div>
		</nav>
	</div>

	<div class="container top-space container text-center">
		<h1>献血記録削除完了</h1>
		<br>
		<br>
		<%=id%>回目の献血記録を削除しました<br>
		<br> <br>
		<br>
		<br> <br> <br>
		<br>
		<br>
		<p>
			<a href='Top.jsp'>- HOME -</a>
		</p>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>