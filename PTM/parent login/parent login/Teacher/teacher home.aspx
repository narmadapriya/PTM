<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacher home.aspx.cs" Inherits="parent_login.Teacher.teacher_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teachers view form</title>

<h1>TEACHERS VIEW FORM</h1>
    <style>
       h1 {
  text-align: center;
}
table#t01 tr:nth-child(even) {
  background-color: #eee;
}
table#t01 tr:nth-child(odd) {
 background-color: #fff;
}
table#t01 th {
  background-color: black;
  color: white;
}

<!--===============================================================================================-->

/* The container */
.container {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default radio button */
.container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
}

/* Create a custom radio button */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #eee;
  border-radius: 50%;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
.container input:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the indicator (dot/circle) when checked */
.container input:checked ~ .checkmark:after {
  display: block;
}

/* Style the indicator (dot/circle) */
.container .checkmark:after {
 	top: 9px;
	left: 9px;
	width: 4px;
	height: 4px;
	border-radius: 50%;
	background: white;
}
body {
  background-color: lightblue;
}
 table td,th{
    text-align:center;
}
</style>

</head>
<body>

    
    <br />
<table id="t01" width="1500">
  <tr>
    <th>DATE</th>
    <th>TIME</th> 
      <th>PARENTS NAME</th>
    <th>STUDENT NAME</th>
    <th>REQUEST</th>
    <th>REMARKS</th>
    <th>RESULT</th>
  </tr>


  <tr>
    <td>2-01-2019</td>
    <td>9:30 AM</td>
      <td>RAM</td>
    <td>RAMU</td>
    <td>to view his answer sheets</td>
    <td>some  feedback remarks</td>
    <td><input type="checkbox" />   ACCEPT   <input type="checkbox" />  REJECT   <button type="button" onclick="alert('SUBMITED')"> SUBMIT </button>
 </td>
     
   


  <tr>
    <td>3-11-2019</td>
    <td>10:30 AM</td>
    <td>BALA</td>
    <td>BALU</td>
    <td>to check attendance</td>
    <td>some feedback or remark</td>
    <td><input type="checkbox" />   ACCEPT <input type="checkbox" />    REJECT <button type="button" onclick="alert('SUBMITED')"> SUBMIT </button>
   
  </tr>
  <tr>
    <td>23-12-2019</td>
    <td>11:30 AM</td>
      <td>RAJ</td>
    <td>RAJU</td>
    <td>to view his answer sheets</td>
    <td>some feedback or remark</td>
    <td><input type="checkbox" />   ACCEPT <input type="checkbox" />    REJECT           <button type="button" onclick="alert('SUBMITED')"> SUBMIT </button>
    
  </tr>
</table>
         <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
