<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.model.vo.Person"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>1. 기존의 방식대로 스크립틀릿과 표현식을 이용해서 각 Scope에 담겨있는 값을 추철해서 화면에 출력</h3>
	
	
	<%
		String classRoom = (String)request.getAttribute("classRoom");
		Person student = (Person)request.getAttribute("student");
		
		String academy = (String)session.getAttribute("academy");
		Person teacher = (Person)session.getAttribute("teacher");
	%>
	
	<p>
		학원명: <%=academy %><br>
		강의장: <%=classRoom %><br>
		강사: <%=teacher.getName() %>, <%=teacher.getAge() %>, <%=teacher.getGender() %> <br>
		<br><br>
		
		수강생정보
		<ul>
			<li>이름 : <%=student.getName() %></li>
			<li>나이 : <%=student.getAge() %></li>
			<li>성별 : <%=student.getGender() %></li>
		</ul>
	</p>
	
	<h3>2. EL을 이용해서 보다 쉽게 해당 Scope에 저장된 값을 출력하기</h3>
	<p>
		EL을 이용해서 getxxx을 통해 값을 추출할 필요없이 EL구문내에 키값만 제시하면 바로 접근가능<br>
		기본적으로 EL은 JSP내장객체를 구분하지않고 자동ㅇ로 모든 내장객체 키값을 검색해서 존재하는 경우 값을 가져온다.
	</p>
	
	<p>
		학원명: ${academy}<br>
		강의장: ${classRoom}<br>
		강사: ${teacher.name}, ${teacher.age}, ${teacher.gender} <br>
		<br><br>
		
		<!-- 
			teacher에 접근하면 벨류값은 Person객체다.
			해당 Person객체의 필드에 담긴 값을 출력하고자한다면 .필드명으로 접근하면 된다.
			=> 내부적으로 필드를 직접가져오는게 아니라 getter메소드를 찾아서 실행하는 것이다.
			   즉, getter메소드는 항상 필수적으로 만들어두어야한다.
		 -->
		 
		수강생정보
		<ul>
			<li>이름 : ${student.name }</li>
			<li>나이 : ${student.age }</li>
			<li>성별 : ${student.gender }</li>
		</ul>
	</p>
	
	<h3>3. 단, EL사용시 내장 객체들에 저장된 키값이 동일할 경우</h3>
	scope값 : ${scope}<br>
	<!-- 
		EL은 공유범위가 제일 작은 Scope에서부터 해당 키값을 검색함
		page => reqeust => session => application
		
		만일, 모든 영역에서 못찾을 경우? => 아무것도 출력하지 않는다.
	 -->
	test값 : ${test}<br>
	
	<h3>4. 직접 Scope 지정해서 접근하기</h3>
	<%
		//pageScope에 담기
		pageContext.setAttribute("scope", "page");
	%>
	
	pageScope에 담긴 값 : ${scope} 또는 ${pageScope.scope}<br>
	requestScope담긴 값 : ${requestScope.scope }<br>
	sessionScope담긴 값 : ${sessionScope.scope }<br>
	applicationScope담긴 값 : ${applicationScope.scope }<br><br>
	
	<!-- 
		각 영역에 중복된 키값으로 데이터 저장시켜 놨다면
		Scope를 직접 지정해서 키값 제시하는게 제일 정확하다.
		
		단지 키값만 제시하면 의도하지 않은 데이터가 추출될 수 있다.
	 -->
	 
	 잘못접근한 경우(session classRoom) : ${sessionScope.classRoom }
	 
	 
	 
	 
</body>
</html>