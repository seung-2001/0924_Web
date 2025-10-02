package com.kh.java.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.java.board.model.service.BoardService;
import com.kh.java.board.model.vo.Category;

@WebServlet("/enrollForm.board")
public class EnrollFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EnrollFormController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Category> categories = new BoardService().selectCategory();

		request.setAttribute("category", categories);

		request.getRequestDispatcher("/WEB-INF/views/board/enroll_Form.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
