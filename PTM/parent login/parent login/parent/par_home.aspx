<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="par_home.aspx.cs" Inherits="parent_login.parent.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Parent Request form</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    
<style>
/* The Modal (background) */
.modal { 
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 45%;
  height:40%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}
.btn {
  border: none;
  background-color: inherit;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
  display: inline-block;
}

.btn:hover {background: #eee;}

.success {color: red;}
.danger {color: red;}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
#bd {
            background-image: url(/images/image_10.jpg);
            background-repeat: no-repeat;
            background-size: 100%;
        }

#myBtn {
     border: none;
  background-color: inherit;
  padding: 14px 28px;
  font-size: 25px;
  cursor: pointer;
  display: inline-block;
 font-weight: bold;

    }

#viewBtn {
  border: none;
  background-color: inherit;
  padding: 14px 28px;
  font-size: 25px;
  cursor: pointer;
  display: inline-block;
 font-weight: bold;
}

h1 {
  font-size: 45px;
}
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

tr:hover {background-color:#f5f5f5;}

table td,th{
    text-align:center;
}


</style>
</head>
<body id="bd">
    <div class="">
    <div class="row">
        <div class="col-lg-12 alert alert-success">
            <div  class="col-lg-3">
            <span> STUDENT NAME:</span><asp:Label ID="lblStudName" runat="server" Text="Label"></asp:Label>
    </div>
            <div class="col-lg-3">
        <span> CLASS:</span> <asp:Label  ID="lblClass" runat="server" Text="Label"></asp:Label>
        </div>
        <div  class="col-lg-3">
            <span> SECTION:</span>  <asp:Label  ID="lblSection" runat="server" Text="Label"></asp:Label>
            </div>

        <div  class="col-lg-3">
            <span> ROLL NUMBER:</span> <asp:Label  ID="lblRollNumber" runat="server" Text="Label"></asp:Label>
            </div>
    </div>
         </div>
        </div>
    <form id="form1" runat="server" ><br />
 <center><h1>PARENTS REQUEST FORM</h1></center><br />

        
 <!-- Trigger/Open The Modal -->
    <center><input type="button"  id="myBtn" class="btn success" onclick="show()" value="Send Request" /></center>
    <center><input type="button"  id="viewBtn" class="btn danger" onclick="show_view()" value="View Request" /></center>


<!-- The Modal -->
<div id="myModal" class="modal">
   
  <!-- Modal content -->
  <div class="modal-content" >
       <h2>Request Page</h2>
      <%--<span> StudId:</span> <asp:Label  ID="lblStudId" runat="server" Text="Label"></asp:Label>
      <span> TeacherID:</span> <asp:Label  ID="lblTeacherID" runat="server" Text="Label"></asp:Label>
      <span> Description:</span> <asp:Label  ID="lblDescription" runat="server" Text="Label"></asp:Label>
      <span> Status:</span> <asp:Label  ID="lblStatus" runat="server" Text="Label"></asp:Label>
      <span> RequestDate:</span> <asp:Label  ID="lblRequestDate" runat="server" Text="Label"></asp:Label>--%>
       <span class="close" onclick="test()">&times;</span>
       <input type="date" />    <input type="time" /> <br /> <br />
       <asp:TextBox ID="TextBox1"   TextMode="MultiLine" Rows="5" runat="server"></asp:TextBox><br /> <br />
       <button type="button" onclick="btnredirect_Click1"> SUBMIT </button>

     </div>
              </div>
    <!-- The Modal -->
    <div id="viewModal" class="modal"> 

  <!-- Modal content -->
  <div class="modal-content" >
    <h2>View Page</h2>
    <span class="close" onclick="test1()">&times;</span>
   <table>
       <tr>
    <th>DATE</th>
    <th>TIME</th>
    <th>REQUEST</th>
    <th>STATUS</th>
  </tr>

   <tr>
    <td>2-01-2019</td>
    <td>9:30 AM</td>
    <td>to view his answer sheets</td>
    <td><i style="font-size:24px" class="fa">&#xf046;</i>
</td>
  </tr>

  <tr>
    <td>3-11-2019</td>
    <td>10:30 AM</td>
    <td>to check attendance</td>
    <td><i style="font-size:24px" class="fa">&#xf046;</i>
</td>
  </tr>

   </table>
     </div>
        <script>
// Get the modal
            var modal = document.getElementById('myModal');
            var modal2 = document.getElementById('viewModal');

// Get the button that opens the modal
var btn = document.getElementById('myBtn');

// Get the <span> element that closes the modal
var span = document.getElementsByClassName('close')[0];

    // When the user clicks the button, open the modal ]
//btn.click=function(){
//    console.log("button clicked!!");
//    modal.style.display = 'Block';
//    }    
function show()
{
    console.log("button clicked!!");
    document.getElementById('myModal').style.display = "block";
}

function show_view()
{
    console.log("View clicked!!");
    document.getElementById('viewModal').style.display = "block";
}

//// When the user clicks on <span> (x), close the modal
function test()
{
    console.log("span clicked!!");
    modal.style.display = "none";    
}
function test1() {
    console.log("span clicked!!");
    modal2.style.display = "none";
}

 //When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "block";
  }
}
</script>


   </form> 

</body>
</html>
