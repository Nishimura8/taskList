<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
<c:choose>
	<c:when test="${task != null}">
		<p><c:out value="${task.title}" /></p>
		<p>：<c:out value="${task.content}" /></p>
		<p>：最終更新日時 <fmt:formatDate value="${task.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" /></p>		
		<p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
		<p><a href="${pageContext.request.contextPath}/edit?id=${task.id}">このメッセージを編集する</a></p>
    </c:when>
    <c:otherwise>
        <h2>お探しのデータは見つかりませんでした。</h2>
    </c:otherwise>
</c:choose>
     </c:param>
</c:import>