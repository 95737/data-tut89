Modify insert.jsp as below:

<!-- source code of insert.jsp -->
<%@ page language="java" import="java.sql.*" %>

<h3><%
  int accno = Integer.parseInt(request.getParameter("t1"));
  String acctype = request.getParameter("t2");
  double balance = Double.parseDouble(request.getParameter("t3"));

  try{
   Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","manager");
   PreparedStatement ps1 = con.prepareStatement("SELECT * FROM ACCOUNT WHERE ACC_ID=?");
   PreparedStatement ps2 = con.prepareStatement("INSERT INTO ACCOUNT VALUES(?,?,?)");
   ps1.setInt(1,accno);
   ResultSet rs = ps1.executeQuery();
   if(rs.next())
    out.println("Error in Inserting the record or Record Already Exists");
   else
   {
     ps2.setInt(1,accno);
     ps2.setString(2,acctype);
     ps2.setDouble(3,balance);
     ps2.executeUpdate();
     out.println("Account Created Successfully");
     out.println("<br>Accounts belonging to given Account Type : ");
     PreparedStatement ps3 = con.prepareStatement("SELECT * FROM ACCOUNT WHERE ACC_TYPE=? ORDER BY ACC_ID");
     ps3.setString(1,acctype);
     ResultSet rs1 = ps3.executeQuery();
     out.println("<table border='3' cellpadding='7'>");
     out.println("<tr bgcolor='silver'><th>ACC ID</th><th>ACC TYPE</th><th> BALANCE </th></tr>");
     while(rs1.next())
     {
      out.println("<tr>");
      out.println("<th>" + rs1.getInt(1) + "</th>");
      out.println("<th>" + rs1.getString(2) + "</th>");
      out.println("<th>" + rs1.getDouble(3) + "</th>");
      out.println("</tr>");
     }
     out.println("</table>");
     rs1.close();
     ps3.close();
   }
   rs.close();
   ps2.close();
   ps1.close();
   con.close();
  }
  catch(Exception e){ out.println(e); }
%><br>
Click <a href="./">Here</a> to Insert another record

=> save and run