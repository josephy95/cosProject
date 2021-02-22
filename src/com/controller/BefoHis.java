package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemHistoryDAO;
import com.model.MemHistoryDTO;
import com.model.memberDTO;


@WebServlet("/BefoHis")
public class BefoHis extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		memberDTO memDto = (memberDTO)session.getAttribute("list");
		String id = memDto.getId();
		
		MemHistoryDAO dao = new MemHistoryDAO();
		ArrayList<MemHistoryDTO> memArray =  dao.HisSelect(id);
		
		// �����̷� ���ǿ� ����
		session.setAttribute("memHis", memArray);
		
		ArrayList<MemHistoryDTO> cosArray = dao.CosSelect(" ");
		
		// ȭ��ǰ ��� ���ǿ� ����
		session.setAttribute("cosList", cosArray);
		
		response.sendRedirect("mydata.jsp");
		
	
	}

}
