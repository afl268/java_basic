<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 
<script type="text/javascript">
    function add(str) {
        
        var display = document.getElementById('display');
        
        if( str == "+" || str == "-" || str =="*" || str == "/" ) { 
            document.getElementById("f").value = display.value;
            display.value = "0";
            return;
        }
        else if ( str == "=" ) {
            document.getElementById("s").value = display.value;
            display.value = "0";
            
            document.getElementById("calcForm").submit(); 
            
        }  
        
        if ( display.value == 0 ) {
            display.value = "";
        }
        
        display.value += str;
    }
 
</script>
</head>
<body>
    <input type="text" id="display" value="0" style="width:300px; height:50px;" />
    
    <form id = "calcForm" method = "post" action="caul.jsp">
        <input type="text" id="f" name="f" /> 
        <input type="text" id="s" name="s" />
    </form>
    
    <table border="1" width="300" height="300" >
        <tr align = "center">
            <td  colspan= "2"><input type="button" id="division" value="/" style="width:100%; height:70px;" onclick="add('/')" /></td>
            <td><input type="button" id="multiplication" value="*" style="width:100%; height:70px;" onclick="add('*')" /></td>
            <td><input type="button" id="subtraction" value="-" style="width:100%; height:70px;" onclick="add('-')" /></td>
        </tr>
        <tr align = "center">
            <td><input type="button" id="7" value="7" style="width:100%; height:70px;" onclick="add('7')" /></td>
            <td><input type="button" id="8" value="8" style="width:100%; height:70px;" onclick="add('8')" /></td>
            <td><input type="button" id="9" value="9" style="width:100%; height:70px;" onclick="add('9')" /></td>
            <td rowspan="2"><input type="button" id="addition" value="+" style="width:100%; height:140px;" onclick="add('+')"  /></td>
        </tr>
        <tr align = "center">
            <td><input type="button" id="4" value="4" style="width:100%; height:70px;" onclick="add('4')" /></td>    
            <td><input type="button" id="5" value="5" style="width:100%; height:70px;"onclick="add('5')" /></td>
            <td><input type="button" id="6" value="6" style="width:100%; height:70px;"onclick="add('6')" /></td>
        </tr>
        <tr align = "center">
            <td><input type="button" id="1" value="1" style="width:100%; height:70px;" onclick="add('1')" /></td>
            <td><input type="button" id="2" value="2" style="width:100%; height:70px;" onclick="add('2')" /></td>
            <td><input type="button" id="3" value="3" style="width:100%; height:70px;" onclick="add('3')" /></td>
            <td rowspan="2"><input type="button" id="result" value="=" style="width:100%; height:140px;" onclick="add('=')" /></td>
        </tr>
        <tr align = "center">
            <td colspan="2"><input type="button" id="0" value="0" style="width:100%; height:70px;" onclick="add('0')" /></td>
            <td><input type="button" id="dot" value="." style="width:100%; height:70px;" onclick="add('.')" /></td>
        </tr>
    </table>
 
</body>
</html>


