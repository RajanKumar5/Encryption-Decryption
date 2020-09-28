<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Encrypt Message</title>
        <style>
            .new{
                font-size: 50px;
                width: 50%;
                height: 600px;
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
        </style>
    </head>
    <body>
        <center>
            <div class="new">
                <form action="decrypt_message.jsp" method="post">
                    Enter Key<br> 
                    <input type="text" name="Key" autocomplete="off" required="" placeholder="Enter Your Key Here">
                    <br/>
                    <br/>
                    Enter Message<br>
                    <input type="text" name="Message" autocomplete="off" required="" placeholder="Enter Your Message Here">
                    <br/>
                    <br/>
                    <input type="submit" value="DECRYPT">
                    <br/>
                    <br/>
                    <a href ="encrypt.jsp">Click here to Encrypt Message</a>
                </form>
            </div>
        </center>
    </body>
</html>
