<%@page import="myweb.BloodDonation"%>
<%@page import="myweb.BloodDonationDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
	BloodDonationDAO el = new BloodDonationDAO();
	el.init();
	BloodDonation le = el.getTopPage();
	BloodDonation le2 = el.getNextDateA();
	BloodDonation le3 = el.getNextDateB();
	el.term();
%>

<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>献血記録TOP</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="./blooddonation.css">
</head>

<body>
	<div class="container top-space">
		<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-color">
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

	<div class="container text-center top-space">
		<h1>献血記録</h1>
		<br>
		<p>
			前回献血日：<%=le.getDate()%></p>
		<p>
			次回400ml献血可能日：<%=le2.getNyear()%>-<%=le2.getNmonth()%>-<%=le2.getNday()%></p>
		<p>
			次回成分献血可能日：<%=le3.getNyear()%>-<%=le3.getNmonth()%>-<%=le3.getNday()%></p>
		<p>
			献血回数：<%=le.getId()%>
			回
		</p>

		<p>
			<button  class="btn btn-primary button-set" onclick="location.href='RecordIndex.jsp'">記録を見る</button>
		</p>
		<p>
			<button  class="btn btn-primary button-set" onclick="location.href='Registration.jsp'">記録を登録する</button>
		</p>
		<p>
			<button  class="btn btn-primary button-set" onclick="location.href='RecordFixChoice.jsp'">記録を修正する</button>
		</p>
		<p>
			<button  class="btn btn-primary button-set" onclick="location.href='RecordDelete.jsp'">記録を削除する</button>
		</p>
		<p>
			<button  class="btn btn-primary button-set" onclick="location.href='NextPossibleDate.jsp'">次回献血可能日を登録する</button>
		</p>

	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>