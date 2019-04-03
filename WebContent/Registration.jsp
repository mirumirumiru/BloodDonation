<%@page import="myweb.BloodDonation"%>
<%@page import="myweb.BloodDonationDAO"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>献血記録登録</title>

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
	<div class="container top-space2">
		<form action="RegistrationCheck.jsp" method="post">
			<h1>献血記録登録</h1><br><br>
			<div class="form-row">
				<div class="form-group col-md-3">
					<label>回数</label>
					<input type="text" name="textTimes" class="form-control">
				</div>
			</div>
			<div>
				献血日： <select name="yearA">
				<%
					for (int i = 2019; i <= 2040; i++) {
				%>
				<option value="<%=i%>"><%=i%></option>
				<%
					;
					}
				%>
				</select>年 <select name="monthA">
				<%
					for (int i = 1; i <= 12; i++) {
				%>
				<option value="<%=i%>"><%=i%></option>
				<%
					;
					}
				%>
				</select>月 <select name="dayA">
				<%
					for (int i = 1; i <= 31; i++) {
				%>
				<option value="<%=i%>"><%=i%></option>
				<%
					;
					}
				%>
				</select>日<br>
				<br> 献血した場所：<select name="p_code">
					<option value="1">アスティ献血ルーム</option>
					<option value="2">北海道赤十字血液センター</option>
					<option value="3">大通献血ルーム</option>
					<option value="4">新さっぽろ献血ルーム</option>
					<option value="10">札幌１号車</option>
					<option value="11">札幌２号車</option>
					<option value="12">札幌３号車</option>
					<option value="13">札幌４号車</option>
					<option value="14">札幌５号車</option>
					<option value="15">札幌６号車</option>
					<option value="16">札幌７号車</option>
					<option value="17">札幌８号車</option>
					<option value="18">札幌９号車</option>
					<option value="19">札幌10号車</option>
				</select><br>
				<br> 献血種別：<select name="d_code">
					<option value="1">400ml</option>
					<option value="2">200ml</option>
					<option value="3">血漿</option>
					<option value="4">血小板</option>
				</select>
			</div><br>

			<div class="form-row">
				<div class="form-group col-md-3">
					<label>最高血圧</label> <input type="text" name="textS_bp"
						class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>最低血圧</label> <input type="text" name="textD_bp"
						class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>脈拍</label> <input type="text" name="textPulse"
						class="form-control">
				</div>
			</div>

			<div class="form-row">
				<div class="form-group col-md-3">
					<label>ALT(GPT)</label> <input type="text" name="textAlt"
						class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>γ-GTP</label> <input type="text" name="textGtp"
						class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>TP</label> <input type="text" name="textTp"
						class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>ALB</label> <input type="text" name="textAlb"
						class="form-control">
				</div>
			</div>

			<div class="form-row">
				<div class="form-group col-md-3">
					<label>A/G</label> <input type="text" name="textAg"
						class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>CHOL</label> <input type="text" name="textChol"
						class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>GA</label> <input type="text" name="textGa"
						class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>RBC</label> <input type="text" name="textRbc"
						class="form-control">
				</div>
			</div>

			<div class="form-row">
				<div class="form-group col-md-3">
					<label>Hb</label> <input type="text" name="textHb"
						class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>Ht</label> <input type="text" name="textHt"
						class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>MCV</label> <input type="text" name="textMcv"
						class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>MCH</label> <input type="text" name="textMch"
						class="form-control">
				</div>
			</div>

			<div class="form-row">
				<div class="form-group col-md-3">
					<label>MCHC</label> <input type="text" name="textMchc"
						class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>WBC</label> <input type="text" name="textWbc"
							class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>PLT</label> <input type="text" name="textPlt"
						class="form-control">
				</div>
				<div class="form-group col-md-3">
				</div>
			</div>

			<button type="submit" class="btn btn-default button-set2">この内容で登録</button>

		</form>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>