package com.kh.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.model.vo.Person;

/**
 * Servlet implementation class ElServlet
 */
@WebServlet("/el.do")
public class ElServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ElServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		/*
		 * 데이터를 담을 수 있는 JSP내장객체 종류
		 * 
		 * 1. ServletContext(application Scope)
		 * 	  한 애플리케이션당 단 1개 존재하는 객체
		 * 	  이 영역에 데이터 담으면 애플리케이션 전역에서 사용가능
		 *    공유 범위가 가장 크다(jsp/servlet/java)
		 *    
		 * 2. HttpSession(session Scope)
		 *    한 브라우저당 1개 존재하는 객체
		 *    이 영역에 데이터 담으면 jsp/servlet 단에서 사용가능
		 *    공유범위가 다소 제한적임
		 *    
		 * 3. HttpServletRequest (request Scope)
		 *    요청때마다 매번 생성되는 객체
		 *    이 영역에 데이터를 담으면 해당 request객체를 포워딩 받는 응답jsp에서만 사용가능
		 *    공유범위가 응답jsp뿐
		 *    
		 * 4. PageContext(page Scope)
		 *    jsp마다 존재하는 객체
		 *    공유범위가 가장 작음(해당페이지에서만 공유)
		 *    
		 * 위 4개의 객체들에
		 * 데이터를 담을때는 .setAttribute("키", 담고싶은데이터)
		 * 데이터를 꺼낼때는 .getAttribute("키")
		 * 데이터를 삭제할때는 .removeAttribute("키")
		 * 
		 */
	
		//request Scope에 담기
		request.setAttribute("classRoom", "I강의장");
		request.setAttribute("student", new Person("홍길동", 55, "남자"));
		
		//session Scope에 담기
		HttpSession session = request.getSession();
		session.setAttribute("academy", "KH정보교육원");
		session.setAttribute("teacher", new Person("최지원", 80, "여자"));
		
		//request Scope와 session Scope에 동일한 키값으로 데이터 담기
		request.setAttribute("scope", "request");
		session.setAttribute("scope", "session");
		
		//application Scope에 담기
		ServletContext application = request.getServletContext();
		application.setAttribute("scope", "application");
	
		request.getRequestDispatcher("views/1_EL/01_el.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
