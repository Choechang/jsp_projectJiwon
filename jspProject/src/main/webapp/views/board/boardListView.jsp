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
    .list-area{
        border: 1px solid white;
        text-align: center;
    }
    .list-area>tbody>tr:hover{
    	background: gray;
    	cursor:pointer;
    }
</style>
</head>
<body>

    <%@ include file="../common/menubar.jsp" %>

    <div class="outer">
        <br>
        <h2 align="center">일반게시판</h2>
        <br>

        <!-- 로그인한 회원보이게 -->
        <div align="right" style="width: 850px;">
            <button>글작성</button>
            <br><br>
        </div>

        <table align="center" class="list-area">
            <thead>
                <tr>
                    <th width="70">글번호</th>
                    <th width="80">카테고리</th>
                    <th width="300">제목</th>
                    <th width="100">작성자</th>
                    <th width="50">조회수</th>
                    <th width="100">작성일</th>
                </tr>
            </thead>
            <tbody>
                <!--case1. 게시글이 없을 때 -->
                <tr>
                    <td colspan="6">조회된 게시글이 없습니다.</td>
                </tr>

                <!--case2. 게시글이 있을 때 -->
                <tr>
                    <td>102</td>
                    <td>등산</td>
                    <td>제목입니다1</td>
                    <td>user01</td>
                    <td>203</td>
                    <td>2022-12-05</td>
                </tr>
                <tr>
                    <td>102</td>
                    <td>등산</td>
                    <td>제목입니다1</td>
                    <td>user01</td>
                    <td>203</td>
                    <td>2022-12-05</td>
                </tr>
                <tr>
                    <td>102</td>
                    <td>등산</td>
                    <td>제목입니다1</td>
                    <td>user01</td>
                    <td>203</td>
                    <td>2022-12-05</td>
                </tr>
                <tr>
                    <td>102</td>
                    <td>등산</td>
                    <td>제목입니다1</td>
                    <td>user01</td>
                    <td>203</td>
                    <td>2022-12-05</td>
                </tr>
                <tr>
                    <td>102</td>
                    <td>등산</td>
                    <td>제목입니다1</td>
                    <td>user01</td>
                    <td>203</td>
                    <td>2022-12-05</td>
                </tr>
                <tr>
                    <td>102</td>
                    <td>등산</td>
                    <td>제목입니다1</td>
                    <td>user01</td>
                    <td>203</td>
                    <td>2022-12-05</td>
                </tr>
                <tr>
                    <td>102</td>
                    <td>등산</td>
                    <td>제목입니다1</td>
                    <td>user01</td>
                    <td>203</td>
                    <td>2022-12-05</td>
                </tr>
                <tr>
                    <td>102</td>
                    <td>등산</td>
                    <td>제목입니다1</td>
                    <td>user01</td>
                    <td>203</td>
                    <td>2022-12-05</td>
                </tr>
                <tr>
                    <td>102</td>
                    <td>등산</td>
                    <td>제목입니다1</td>
                    <td>user01</td>
                    <td>203</td>
                    <td>2022-12-05</td>
                </tr>
                <tr>
                    <td>102</td>
                    <td>등산</td>
                    <td>제목입니다1</td>
                    <td>user01</td>
                    <td>203</td>
                    <td>2022-12-05</td>
                </tr>
            </tbody>
        </table>
        <br><br>

        <div class="paging-area" align="center">
            <button>1</button>
            <button>2</button>
            <button>3</button>
            <button>4</button>
            <button>5</button>
            <button>6</button>
            <button>7</button>
            <button>8</button>
            <button>9</button>
            <button>0</button>
            <button>&gt;</button>
        </div>

    </div>

</body>
</html>