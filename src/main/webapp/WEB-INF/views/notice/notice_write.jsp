<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../include/head.jsp" flush="true"/>
<title>공지사항 글쓰기</title>
<link href="resources/css/title.css" type="text/css" rel="stylesheet">
<link href="resources/css/notice_write.css" type="text/css" rel="stylesheet">
    <!-- 헤더 부분  끝-->

	<script>
	window.onload = function()
	{
		$("#no_title").focus();
		
		$("#notice_write").click(function()
		{
			if($("#no_title").val() == "")
			{
				alert("제목을 입력하세요");
				$("#no_title").focus();
				return false;	
			}
			if($("#content").val() == "")
			{
				alert("내용을 입력하세요");
				$("#content").focus();
				return false;	
			}
			
			if(confirm("게시물을 저장하시겠습니까?") == false)
			{
				return;
			}
			$("#writeFrm").submit();
		});
	}
</script>

    <!-- 컨텐츠 시작 부분 -->
    <div id="head"><a href="notice.do">공지사항</a></div>
    <div id="main">
        <form id="writeFrm" name="writeFrm" method="post" action="notice_writeok.do" enctype="multipart/form-data">
        <input type="hidden" id="bkind" name="bkind" value="N">
            <table border="1" id="notice_write_table">
                <tr>
                    <td class="notice_write_table_td" style="height: 70px;">*제목</td>
                    <td>
                        <input type="text" placeholder="제목을 입력하세요" id="no_title" name="bname">
                    </td>
                </tr>
                <tr>
                    <td class="notice_write_table_td" style="height: 70px;">*작성자</td>
                    <td>
                        <input type="text" value="관리자" id="writer" name="name" readonly>
                    </td>
                </tr>
                <tr>
                    <td class="notice_write_table_td">*내용</td>
                    <td>
                        <textarea name="bcontent" id="content" cols="140" rows="35"></textarea>
                    </td>
                </tr>
                <tr>
                    <td rowspan="3" class="notice_write_table_td" style="height: 50px;">사진 첨부</td>
                    <td>
                        <input id="attach" name="attach" type="file" multiple="multiple">
                    </td>
                </tr>


            </table>
            <br>
            <div id="notice_write_button">
                <input type="button" value="글쓰기 완료" id="notice_write" name="notice_write" class="notice_write_submit">&nbsp;&nbsp;
                <input type="button" value="취소" class="notice_write_submit" onclick="location.href='notice.do'">
            </div>
        </form>
    </div>
    <!-- 컨텐츠 끝 부분 -->

    <!-- 꼬릿말 부분 -->
<jsp:include page="../include/tail.jsp" flush="true"/>