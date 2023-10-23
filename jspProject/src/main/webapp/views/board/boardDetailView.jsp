<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
        background: black;
        color: white;
        width: 1000px;
        height: 500px;
        margin: auto;
        margin-top: 50px;
    }
    .outer > table{
        border: 1px solid white;
        border-collapse: collapse;
    }
    .outer > table tr, .outer > table td{
        border: 1px solid white;
    }
</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>

    <div class="outer">
        <br>
        <h2 align="center">일반게시판 상세보기</h2>
        <br>

        <table id="detail-area" border="1" align="center">
            <tr>
                <th width="70">카테고리</th>
                <td width="70">낚시</td>
                <th width="70">제목</th>
                <td width="350">낚시를 다녀왔습니다.</td>
            </tr>
            <tr>
                <th>작성자</th>
                <td>admin</td>
                <th>작성일</th>
                <td>2023-10-23</td>
            </tr>
            <tr>
                <th>내용</th>
                <td colspan="3">
                    <p style="height: 200px;">내용입니다.</p>
                </td>
            </tr>
            <tr>
                <th>첨부파일</th>
                <td colspan="3">
                    <!-- case1 첨부파일이 없을 경우 -->
                    첨부파일이 없습니다.
                    <!-- case2 첨부파일이 있을 경우 -->
                    <a>이미지.png</a>
                </td>
            </tr>
        </table>
        <br>

        <div align="center">
            <a href="" class="btn btn-sm">목록가기</a>

            <!-- 로그인한 사용자가 게시글의 작성자일 경우 사용가능 -->
            <a href="" class="btn btn-sm">수정하기</a>
            <a href="" class="btn btn-sm">삭제하기</a>
        </div>



    </div>
</body>
</html>