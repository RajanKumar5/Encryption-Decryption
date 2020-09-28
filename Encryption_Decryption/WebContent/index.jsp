<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*" %>
<%-- <%
	int i = 0;
	try{
		String sql = "select * from visitors_count";
		String sql1 = "update visitors_count set count = count + 1 where id = 1";
		String url = "jdbc:mysql://aws-database.cvqwklvcfmhx.us-east-1.rds.amazonaws.com:3306/visitors";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,"admin","abcd1212");
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()){
			i = rs.getInt("count");
		}
		stmt.executeUpdate(sql1);
		con.close();
		stmt.close();
	}
	catch(Exception e){
		e.printStackTrace();
	}
%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Encrypt Message</title>
    	<style>
            .new{
                font-size: 50px;
                width: 50%;
                height: auto;
                background-color: gray;
                top: 50%;
				left: 50%;
				position: absolute;
				transform: translate(-50%, -50%);
                border: solid gray;
            }
            input{
                height: 35px;
                width: 400px;
                font-size: 26px; 
            }
            body{
                background-color: black;
                color: white;
            }
            a{
                text-decoration: none;
                color: aqua;
                font-size: 24px; 
            }
            a:hover{
                color: #ffc107;
            }
            .new input[type="submit"] {
				border: none;
				outline: none;
				height: 40px;
				background: #fb2525;
				color: #fff;
				font-size: 18px;
				border-radius: 20px;
				width: 60%;
			}
			.new  input[type="text"] {
				border: none;
				border-bottom: 1px solid #fff;
				background: transparent;
				outline: none;
				height: 40px;
				color: #fff;
				font-size: 16px;
				width: 80%;
			}
			.new  input[type="text"]:HOVER{
				cursor: pointer;
			}
			.new input[type="submit"]:HOVER {
				cursor: pointer;
				background: #ffc107;
				color: #000;
			}
			.footer{
				position: fixed;
				left: 0;
				bottom: 0;
				width: 100%;
				color: white;
				text-align: center;
			}
			
        </style>
    </head>
    <body>
        <center>
            <div class="new">
                <p>WELCOME</p>
                <hr>
                <a href="encrypt.jsp">Click here to encrypt the message</a>
                <br/><br/>
                <a href="decrypt.jsp">Click here to decrypt the message</a>
            	<br/><br/>
            </div>
        </center>
        <%-- <div class="footer">
        	<p>Total number of visitors : <%= i %></p>
        </div> --%>
    </body>
</html>
