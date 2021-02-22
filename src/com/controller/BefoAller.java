package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.ReportDAO;
import com.model.ReportDTO;
import com.model.memberDTO;


@WebServlet("/BefoAller")
public class BefoAller extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		memberDTO dto = (memberDTO)session.getAttribute("list");
		String id = dto.getId();
		ReportDAO dao = new ReportDAO();
		
		// ����ڰ� bad ��� ���� ��ǰ�� ���ؼ� ������
		ArrayList<ReportDTO> badArray = dao.selectRating(id);
		// ����ڰ� ������ �˷��� ��ǰ�� ���ؼ� ������
		ArrayList<ReportDTO> alArray = dao.selectAller(id);
		System.out.println("�˷��� ���� ������ ������ �� ���̵� Ȯ�� " +id);
		
		session.setAttribute("badList", badArray);
		session.setAttribute("allerList", alArray);
		
		response.sendRedirect("report.jsp");
	
	}

}
