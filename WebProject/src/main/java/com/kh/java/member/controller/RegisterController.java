package com.kh.java.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.java.member.model.service.MemberService;
import com.kh.java.member.model.vo.Member;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/common/register_page.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userid = request.getParameter("userId");
		String password = request.getParameter("userPwd");
		String username = request.getParameter("userName");
		String email = request.getParameter("email");
		String address = request.getParameter("address");

		Member member = new Member();

		member.setUserId(userid);
		member.setUserPwd(password);
		member.setUserName(username);
		member.setEmail(email);
		member.setAddress(address);

		int result = new MemberService().register(member);

		if (result > 0) {
			request.getSession().setAttribute("alertMsg", username + "님, 환영합니다!");
			response.sendRedirect(request.getContextPath());
		} else {
			request.setAttribute("msg", "회원가입에 실패했습니다.");
			request.getRequestDispatcher("/WEB-INF/views/common/result_page.jsp").forward(request, response);
		}
	}

}
