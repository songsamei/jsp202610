<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../db.jsp" %>
	
	<%
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String kind = request.getParameter("kind");
		String sessionId = (String) session.getAttribute("sessionId");
		
		String query = String.format(
				"UPDATE INTO TBL_BOARD VALUES(BOARD_SEQ.NEXTVAL, '%s', '%s', '%s', 0, %s, SYSDATE, SYSDATE)",
				title, contents, sessionId, kind
			);

		int result = stmt.executeUpdate(query);
		if(result > 0){
			out.println("수정되었습니다!");
			%>
				<div><a href="board-list.jsp"><button>목록으로</button></a></div>
			<%
			
		} else {
			out.println("에러가 발생했습니다!");
		}
	%>
	
	
</body>
</html>