<%@page import="myweb.BloodDonation"%>
<%@page import="myweb.BloodDonationDAO"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	int id = Integer.parseInt(request.getParameter("textTimes"));
	BloodDonationDAO el = new BloodDonationDAO();
	el.init();
	BloodDonation le = el.getRecord(id);
	el.term();
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>献血記録修正</title>

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
		<form action="RecordFixCheck.jsp" method="post">
			<h1>献血記録修正</h1><br><br>
			<div class="form-row">
				<div class="form-group">
					<h4><%=le.getId()%>回目　<%=le.getDate()%></h4>
					場所：<%=le.getPlace()%>　献血種別：<%=le.getType()%>　の記録を修正します<br>
					修正箇所のみ変更してください
					<input type="hidden" name="textTimes" value=<%=le.getId()%>>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-3">
					<label>最高血圧</label> <input type="text" name="textS_bp"
						 value=<%=le.getS_bp()%> class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>最低血圧</label> <input type="text" name="textD_bp"
						value=<%=le.getD_bp()%> class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>脈拍</label> <input type="text" name="textPulse"
						value=<%=le.getPulse()%> class="form-control">
				</div>
			</div>

			<div class="form-row">
				<div class="form-group col-md-3">
					<label>ALT(GPT)</label> <input type="text" name="textAlt"
						value=<%=le.getAlt()%> class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>γ-GTP</label> <input type="text" name="textGtp"
						value=<%=le.getGtp()%> class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>TP</label> <input type="text" name="textTp"
						value=<%=le.getTp()%> class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>ALB</label> <input type="text" name="textAlb"
						value=<%=le.getAlb()%> class="form-control">
				</div>
			</div>

			<div class="form-row">
				<div class="form-group col-md-3">
					<label>A/G</label> <input type="text" name="textAg"
						value=<%=le.getAg()%> class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>CHOL</label> <input type="text" name="textChol"
						value=<%=le.getChol()%> class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>GA</label> <input type="text" name="textGa"
						value=<%=le.getGa()%> class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>RBC</label> <input type="text" name="textRbc"
						value=<%=le.getRbc()%> class="form-control">
				</div>
			</div>

			<div class="form-row">
				<div class="form-group col-md-3">
					<label>Hb</label> <input type="text" name="textHb"
						value=<%=le.getHb()%> class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>Ht</label> <input type="text" name="textHt"
						value=<%=le.getHt()%> class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>MCV</label> <input type="text" name="textMcv"
						value=<%=le.getMcv()%> class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>MCH</label> <input type="text" name="textMch"
						value=<%=le.getMch()%> class="form-control">
				</div>
			</div>

			<div class="form-row">
				<div class="form-group col-md-3">
					<label>MCHC</label> <input type="text" name="textMchc"
						value=<%=le.getMchc()%> class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>WBC</label> <input type="text" name="textWbc"
						value=<%=le.getWbc()%> class="form-control">
				</div>
				<div class="form-group col-md-3">
					<label>PLT</label> <input type="text" name="textPlt"
						value=<%=le.getPlt()%> class="form-control">
				</div>
				<div class="form-group col-md-3">
				</div>
			</div>

			<button type="submit" class="btn btn-default button-set2">この内容で更新</button>

		</form>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>