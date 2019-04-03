<%@page import="myweb.BloodDonation"%>
<%@page import="myweb.BloodDonationDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	BloodDonationDAO el = new BloodDonationDAO();
	el.init();
	BloodDonation le = el.getRecord(id);
	BloodDonation le2 = el.getRecord(id - 1);
	BloodDonation le3 = el.getRecord(id - 2);
	BloodDonation le4 = el.decisionRecord(id);
	el.term();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>献血記録検査結果</title>
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
	<div class="container top-space">
		<h1>献血記録検査結果</h1>
		<table>
			<thead>
				<tr>
					<th></th>
					<th>献血日</th>
					<th>場所</th>
					<th>献血種別</th>
					<th>最高血圧</th>
					<th>最低血圧</th>
					<th>脈拍</th>
					<th>ALT(GTP)</th>
					<th>γ-GTP</th>
					<th>TP</th>
					<th>ALB</th>
					<th>A/G</th>
					<th>CHOL</th>
					<th>GA</th>
					<th>RBC</th>
					<th>Hb</th>
					<th>Ht</th>
					<th>MCV</th>
					<th>MCH</th>
					<th>MCHC</th>
					<th>WBC</th>
					<th>PLT</th>
				</tr>
			</thead>
			<tbody>
				<tr class="tr-color">
					<td><%=le.getId()%>回目</td>
					<td><%=le.getDate()%></td>
					<td><%=le.getPlace()%></td>
					<td><%=le.getType()%></td>
					<td><%=le.getS_bp()%></td>
					<td><%=le.getD_bp()%></td>
					<td><%=le.getPulse()%></td>
					<td><%=le.getAlt()%></td>
					<td><%=le.getGtp()%></td>
					<td><%=le.getTp()%></td>
					<td><%=le.getAlb()%></td>
					<td><%=le.getAg()%></td>
					<td><%=le.getChol()%></td>
					<td><%=le.getGa()%></td>
					<td><%=le.getRbc()%></td>
					<td><%=le.getHb()%></td>
					<td><%=le.getHt()%></td>
					<td><%=le.getMcv()%></td>
					<td><%=le.getMch()%></td>
					<td><%=le.getMchc()%></td>
					<td><%=le.getWbc()%></td>
					<td><%=le.getPlt()%></td>
				</tr>
				<tr>
					<td>正常基準値</td>
					<td></td>
					<td></td>
					<td></td>
					<td>～140</td>
					<td>～90</td>
					<td>60～90</td>
					<td>8～49</td>
					<td>9～68</td>
					<td>6.6～8.2</td>
					<td>4.0～5.1</td>
					<td>1.3～2.1</td>
					<td>140～259</td>
					<td>16.5％未満</td>
					<td>418～560</td>
					<td>12.7～17.0</td>
					<td>38.8～50.0</td>
					<td>83.0～99.5</td>
					<td>26.8～33.5</td>
					<td>31.7～35.2</td>
					<td>38～89</td>
					<td>17.0～36.5</td>
				</tr>
				<tr class="tr-color">
					<td>判定</td>
					<td></td>
					<td></td>
					<td></td>
					<td colspan="2"><%=le4.getBpDc()%></td>
					<td><%=le4.getPulseDc()%></td>
					<td><%=le4.getAltDc()%></td>
					<td><%=le4.getGtpDc()%></td>
					<td><%=le4.getTpDc()%></td>
					<td><%=le4.getAlbDc()%></td>
					<td><%=le4.getAgDc()%></td>
					<td><%=le4.getCholDc()%></td>
					<td><%=le4.getGaDc()%></td>
					<td><%=le4.getRbcDc()%></td>
					<td><%=le4.getHbDc()%></td>
					<td><%=le4.getHtDc()%></td>
					<td><%=le4.getMcvDc()%></td>
					<td><%=le4.getMchDc()%></td>
					<td><%=le4.getMchcDc()%></td>
					<td><%=le4.getWbcDc()%></td>
					<td><%=le4.getPltDc()%></td>
				</tr>
				<tr>
					<td>前回</td>
					<td><%=le2.getDate()%></td>
					<td><%=le2.getPlace()%></td>
					<td><%=le2.getType()%></td>
					<td><%=le2.getS_bp()%></td>
					<td><%=le2.getD_bp()%></td>
					<td><%=le2.getPulse()%></td>
					<td><%=le2.getAlt()%></td>
					<td><%=le2.getGtp()%></td>
					<td><%=le2.getTp()%></td>
					<td><%=le2.getAlb()%></td>
					<td><%=le2.getAg()%></td>
					<td><%=le2.getChol()%></td>
					<td><%=le2.getGa()%></td>
					<td><%=le2.getRbc()%></td>
					<td><%=le2.getHb()%></td>
					<td><%=le2.getHt()%></td>
					<td><%=le2.getMcv()%></td>
					<td><%=le2.getMch()%></td>
					<td><%=le2.getMchc()%></td>
					<td><%=le2.getWbc()%></td>
					<td><%=le2.getPlt()%></td>
				</tr>
				<tr>
					<td>前々回</td>
					<td><%=le3.getDate()%></td>
					<td><%=le3.getPlace()%></td>
					<td><%=le3.getType()%></td>
					<td><%=le3.getS_bp()%></td>
					<td><%=le3.getD_bp()%></td>
					<td><%=le3.getPulse()%></td>
					<td><%=le3.getAlt()%></td>
					<td><%=le3.getGtp()%></td>
					<td><%=le3.getTp()%></td>
					<td><%=le3.getAlb()%></td>
					<td><%=le3.getAg()%></td>
					<td><%=le3.getChol()%></td>
					<td><%=le3.getGa()%></td>
					<td><%=le3.getRbc()%></td>
					<td><%=le3.getHb()%></td>
					<td><%=le3.getHt()%></td>
					<td><%=le3.getMcv()%></td>
					<td><%=le3.getMch()%></td>
					<td><%=le3.getMchc()%></td>
					<td><%=le3.getWbc()%></td>
					<td><%=le3.getPlt()%></td>
				</tr>
			</tbody>
		</table>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>