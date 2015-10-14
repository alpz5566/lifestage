<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id=PageSelectorBar>
	<%--<div id=PageSelectorMemo>
		页次：${pageBean.currentPage}/${pageBean.pageCount}页 &nbsp;
		每页显示：${pageBean.pageSize }条 &nbsp;
		总记录数：${pageBean.recordCount }条
	</div>
	--%>
	<div id=PageSelectorSelectorArea>
	
		<%--<a href="javascript: gotoPage(1)" title="首页" style="cursor: hand;">
			<img src="${pageContext.request.contextPath}/public/images/pageSelector/firstPage.png"/>
		</a>
		
		--%>
		<!--<s:iterator begin="%{beginPageIndex}" end="%{endPageIndex}" var="num">
			<s:if test="currentPage == #num"><%-- 当前页 --%>
				<span class="PageSelectorNum PageSelectorSelected">${num}</span>
			</s:if>
			<s:else><%-- 非当前页 --%>
				<span class="PageSelectorNum" style="cursor: hand;" onClick="gotoPage(${num});">${num}</span>
			</s:else>
		</s:iterator>
		
		-->
			
				<div class="fcymBLMpage">
					<c:if test="${pageBean.currentPage != 1}">
						<a id="fcymBLMpagefirst" href="${pageContext.request.contextPath}/apartment/fcym?pageNum=${pageBean.currentPage-1}"> <上一页 </a>
					</c:if>
					<c:forEach begin="${pageBean.beginPageIndex}" end="${pageBean.endPageIndex}" var="num">
						<c:if test="${pageBean.currentPage == num}"><%-- 当前页 --%>
							<a>${num}</span>
						</c:if>
						<c:if test="${pageBean.currentPage != num}">
							<a  style="cursor: hand;" onClick="gotoPage(${num});">${num}</span>
						</c:if>
					</c:forEach>
					<c:if test="${pageBean.currentPage != pageBean.pageCount} || ${pageBean.recordList != null}">
						<a id="fcymBLMpagefirst" href="${pageContext.request.contextPath}/apartment/fcym?pageNum=${pageBean.currentPage+1}">下一页></a>
					</c:if>
				</div>
			
		
		
		<%--<c:forEach begin="${pageBean.beginPageIndex}" end="${pageBean.endPageIndex}" var="num">
			<c:if test="${pageBean.currentPage == num}"> 当前页 
				<span class="PageSelectorNum PageSelectorSelected">${num}</span>
			</c:if>
			<c:if test="${pageBean.currentPage != num}">
				<span class="PageSelectorNum" style="cursor: hand;" onClick="gotoPage(${num});">${num}</span>
			</c:if>
		</c:forEach>
		
		
		--%>
		<%--
		<a href="javascript: gotoPage(${pageBean.pageCount})" title="尾页" style="cursor: hand;">
			<img src="${pageContext.request.contextPath}/public/images/pageSelector/lastPage.png"/>
		</a>
		
	
		
		转到：
		<select id="pn" onchange="gotoPage(this.value)">
			<c:forEach begin="1" end="${pageBean.pageCount}" var="num">
				<option value="${num}">${num}</option>	
			</c:forEach>
		</select>		
		<script type="text/javascript">
			//回显页码
			$("#_pn").val("${pageBean.currentPage}");
		</script>
		--%>
	</div>
</div>


<script type="text/javascript">
	function gotoPage( pageNum ){
		//alert(pageNum);
		//window.location.href = "forumAction_show.action?id=${id}&pageNum=" + pageNum;
		$(document.forms[0]).append("<input type='hidden' name='pageNum' value='" + pageNum + "'/>");
		document.forms[0].submit(); // 提交表单
	}
	
</script>