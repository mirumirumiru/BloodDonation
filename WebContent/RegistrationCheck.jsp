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
	String yearA = request.getParameter("yearA");
	String monthA = request.getParameter("monthA");
	String dayA = request.getParameter("dayA");
	Date date = java.sql.Date.valueOf(yearA + "-" + monthA + "-" + dayA);
	String p_code = request.getParameter("p_code");
	String d_code = request.getParameter("d_code");
	int s_bp = Integer.parseInt(request.getParameter("textS_bp"));
	int d_bp = Integer.parseInt(request.getParameter("textD_bp"));
	int pulse = Integer.parseInt(request.getParameter("textPulse"));
	int alt = Integer.parseInt(request.getParameter("textAlt"));
	int gtp = Integer.parseInt(request.getParameter("textGtp"));
	double tp = Double.parseDouble(request.getParameter("textTp"));
	double alb = Double.parseDouble(request.getParameter("textAlb"));
	double ag = Double.parseDouble(request.getParameter("textAg"));
	int chol = Integer.parseInt(request.getParameter("textChol"));
	double ga = Double.parseDouble(request.getParameter("textGa"));
	int rbc = Integer.parseInt(request.getParameter("textRbc"));
	double hb = Double.parseDouble(request.getParameter("textHb"));
	double ht = Double.parseDouble(request.getParameter("textHt"));
	double mcv = Double.parseDouble(request.getParameter("textMcv"));
	double mch = Double.parseDouble(request.getParameter("textMch"));
	double mchc = Double.parseDouble(request.getParameter("textMchc"));
	int wbc = Integer.parseInt(request.getParameter("textWbc"));
	double plt = Double.parseDouble(request.getParameter("textPlt"));

	BloodDonation itemA = new BloodDonation(id, date, p_code, d_code, s_bp, d_bp, pulse, alt, gtp, tp,
			alb, ag, chol, ga, rbc, hb, ht, mcv, mch, mchc, wbc, plt);

	BloodDonationDAO el = new BloodDonationDAO();
	el.init();
	itemA.setId(id);
	itemA.setDate(date);
	itemA.setP_code(p_code);
	itemA.setD_code(d_code);
	itemA.setS_bp(s_bp);
	itemA.setD_bp(d_bp);
	itemA.setPulse(pulse);
	itemA.setAlt(alt);
	itemA.setGtp(gtp);
	itemA.setTp(tp);
	itemA.setAlb(alb);
	itemA.setAg(ag);
	itemA.setChol(chol);
	itemA.setGa(ga);
	itemA.setRbc(rbc);
	itemA.setHb(hb);
	itemA.setHt(ht);
	itemA.setMcv(mcv);
	itemA.setMch(mch);
	itemA.setMchc(mchc);
	itemA.setWbc(wbc);
	itemA.setPlt(plt);
	el.insertRecord(itemA);
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
		<h1>献血記録登録完了</h1>
		<br>
		<br> 献血回数：<%=id%><br>
		<br> 献血日：<%=date%><br>
		<br> 登録完了しました <br>
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