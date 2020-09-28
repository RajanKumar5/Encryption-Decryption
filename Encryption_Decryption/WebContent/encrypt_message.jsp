<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Random"%>
<%
    Random rand = new Random();
    int Key = rand.nextInt(26) + 1;
    String message = request.getParameter("Message");
    
    if(message.equals("")){
%>
    <script>
        alert("Cannot encrypt empty message! Enter some message..");
    </script>
<%
    }
    else{
        StringBuilder str = new StringBuilder(message);
        String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String newAlphabet = alphabet.substring(Key) + alphabet.substring(0,Key);
        int index = -1;
        for(int i = 0 ; i < str.length() ; i++){
            int f = 0;
            char newChar;
            char current = str.charAt(i);
            if('a' <= current && current <= 'z'){
                f = 1;
            }
            if(f == 1){
                index = alphabet.toLowerCase().indexOf(current);
                if(index != -1){
                    newChar = newAlphabet.toLowerCase().charAt(index); 
                    str.setCharAt(i, newChar);
                }
            }
            else{
                index = alphabet.indexOf(current);
                if(index != -1){
                    newChar = newAlphabet.charAt(index); 
                    str.setCharAt(i, newChar);
                }
            }
        }
        
        //System.out.println(str.toString());
%>
<html>
    <head>
        <style>
            body{
                font-size: 50px;
                background-color: black;
                color: white;
            }
            .message{
                font-size: 50px;
                width: 50%;
                height: auto;
                background-color: gray;
                top: 50%;
				left: 50%;
				position: absolute;
				transform: translate(-50%, -50%);
                border: solid gray;
                color: rgb(188, 255, 3);
                
            }
            .message p{
                color:  aqua;
                font-size: 30px;
            }
            a{
            	text-decoration: none;
                color: aqua;
                font-size: 24px;
            }
            a:hover{
                color: #ffc107;
            }
            .back{
            	position: fixed;
				left: 0;
				bottom: 20;
				width: 100%;
				text-align: center;
            }
        </style>
    </head>
    <body>
        <center>
            <div class="message">
                *KEY*
                <hr>
                <p><%= Key%></p>
                <hr><hr>
                *Message*
                <hr>
                <p><%= str.toString()%><p>
            </div>
            <div class="back">
            	<a href="encrypt.jsp">Back</a>
			</div>
        </center>
    </body>
</html>
<%
    }
%>