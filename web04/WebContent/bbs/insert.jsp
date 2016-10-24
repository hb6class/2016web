<%@ page import="java.sql.*" %>
<%@ page import="com.bbs.bean.BbsBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	private final String driver="oracle.jdbc.driver.OracleDriver";
	private final String url="jdbc:oracle:thin:@localhost:1521:xe";
	private final String user="scott";
	private final String password="tiger";
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
%>
<%
	request.setCharacterEncoding("UTF-8");//post방식에서의 한글처리
	String sql ="INSERT INTO BBS01 (RNUM,TITLE,ID,CONTENT) ";
	sql+="VALUES (BBS01_SEQ.NEXTVAL,?,?,?)";
	String title = request.getParameter("title");
	String id = request.getParameter("id");
	String content = request.getParameter("content");
	BbsBean bean = new BbsBean();
	bean.setTitle(title);
	bean.setId(id);
	bean.setContent(content);
	int result=0;
	try{
	Class.forName(driver);
	conn=DriverManager.getConnection(url, user, password);
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, bean.getTitle());
	pstmt.setString(2, bean.getId());
	pstmt.setString(3, bean.getContent());
	result = pstmt.executeUpdate();
	}catch(Exception ex){}finally{conn.close();}
	String redirect=null;
	if(result>0){
		redirect="list";
	}else{
		redirect="addform";
	}
	response.sendRedirect(redirect+".jsp");
%>







