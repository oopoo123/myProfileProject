<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/content.css"> 
<script type="text/javascript" src="/resources/js/join.js"></script>
<script type="text/javascript" src="/resources/js/write.js"></script>
<title>## My Profile</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
	<table border="0" cellpadding="20" cellspacing="0">
		<tr>
			<td align="center">
				<span class="title01">DEVELOPER HYOJUN's PROFILE</span>
			</td>
		</tr>
		<tr>
			<td align="center">
				<span class="title02">I'm Hyojun Park, a developer who wants a development job. Please call me back.</span>
			</td>
		</tr>
		<tr>
			<td class="con_box" align="center">
				<table border="0" cellpadding="10" cellspacing="0">
				<form action="write" name="writeForm">
					<tr>
						<td class="con_text">아 이 디 :</td>
						<td><input class="input_box01" type="text" name="qbmid" value="${boardDto.qbmid}" readonly="readonly"></td>
					</tr>					
					<tr>
						<td class="con_text">이 름 :</td>
						<td><input class="input_box01" type="text" name="qbmname" value="${boardDto.qbmname }" readonly="readonly"></td>
					</tr>					
					<tr>
						<td class="con_text">이 메 일 :</td>
						<td><input class="input_box01" type="text" name="qbmemail" value="${boardDto.qbmemail }" readonly="readonly"></td>
					</tr>
					<tr>
						<td class="con_text">제 목 :</td>
						<td><input class="input_box01" type="text" name="qbtitle" value="${boardDto.qbtitle }" readonly="readonly"></td>
					</tr>
					<tr>
						<td class="con_text">내 용 :</td>
						<td>
							<textarea class="btextarea" rows="10" cols="35" name="qbcontent" readonly="readonly">${boardDto.qbcontent }</textarea>
						</td>
					</tr>
					<tr>
						<td class="con_text">등록일 :</td>
						<td>
							<input class="input_box01" type="text" name="qbdate" value="${boardDto.qbdate }" readonly="readonly"></td>
						</td>
					</tr>					
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input class="con_btn01" type="button" value="수정" onclick="javascript:window.location.href='contentModify?qbnum=${boardDto.qbnum}'">&nbsp;&nbsp;
							<input class="con_btn01" type="button" value="삭제" onclick="javascript:window.location.href='contentDelete?qbnum=${boardDto.qbnum}'">&nbsp;&nbsp;
							<input class="con_btn01" type="button" value="글목록" onclick="javascript:window.location.href='board'">
						</td>
					</tr>
				</form>
				</table>
			</td>
		</tr>
	</table>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>