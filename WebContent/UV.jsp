<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>




</head>
<body>
   <%
   ArrayList<String> weatherlist = (ArrayList<String>)session.getAttribute("mise");
   ArrayList<String> uvlist = (ArrayList<String>)session.getAttribute("uv");
   
   %>

<!--    �ε��� ��ȣ 
   0�� : �ð�
   1�� : ���
   2�� : ���
   3�� : �泲
   4�� : ����
   5�� : ����
   6�� : �λ�
   7�� : ����
   8�� : �뱸
   9�� : ����
   10�� : ����
   11�� : ���� -->
   <div>
      <h1>�̼����� ����</h1>
      <h3> �ð� : <%= weatherlist.get(0) %> </h3>
      <h3> ��� : <%= weatherlist.get(1) %> </h3>
      <h3> ��� : <%= weatherlist.get(2) %> </h3>
      <h3> �泲 : <%= weatherlist.get(3) %> </h3>
      <h3> ���� : <%= weatherlist.get(4) %> </h3>
      <h3> ���� : <%= weatherlist.get(5) %> </h3>
      <h3> �λ� : <%= weatherlist.get(6) %> </h3>
      <h3> ���� : <%= weatherlist.get(7) %> </h3>
      <h3> �뱸 : <%= weatherlist.get(8) %> </h3>
      <h3> ���� : <%= weatherlist.get(9) %> </h3>
      <h3> ���� : <%= weatherlist.get(10) %> </h3>
      <h3> ���� : <%= weatherlist.get(11) %> </h3>
   </div>
   
   
   <!-- uvlist ���� ���� �ð�, ���, ����uv, ����uv, ��uv -->
    <div>
      <h1>�ڿܼ�����</h1>
        <h3> �ð�: <%= uvlist.get(0) %></h3>   
      <h3> ���: <%= uvlist.get(1) %> </h3> 
      <h3> ����uv: <%= uvlist.get(2) %></h3>
      <h3> ����uv: <%= uvlist.get(3) %></h3>
      <h3> ��uv: <%= uvlist.get(4) %></h3>
   </div> 
   

</body>
</html>