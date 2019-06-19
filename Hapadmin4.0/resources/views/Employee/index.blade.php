@if(Session::has('user'))
<?php


?>
<!DOCTYPE html>
<html>
<head>



<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="csrf-token" content="{!! csrf_token() !!}">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet">  
        <script src="http://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script> 
 <script src="{{asset('FroentEnd')}}/main.js"></script>

<script>
$(function() { 
    $('#table').DataTable();
} );

</script>
        

<style>

body {
  margin: 0;
  font-family: "Lato", sans-serif;
}

.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #AD81CE;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #4CAF50;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

@media screen and (max-width: 400px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 180px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
  margin:0px 30px;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}

img:hover
{
-ms-transform: scale(1.5); /* IE 9 */
  -webkit-transform: scale(1.5); /* Safari 3-8 */
  transform: scale(1.5); 

}


</style>
</head>
<body>
<div>
  
@include("Employee.header")


</div>




<div class="sidebar" >

<div class="dropdown" >
<!-- Driver side bar -->
  <a  href="#">Driver  <i class="fa fa-caret-down" style="margin:0px 50px;"></i></a>
    <div class="dropdown-content">
      <a href="#" id="dreg" >New Registers  (<b id="newregcount"></b>)</a>
     
      <a href="#" id="getRegDrivers">Accepted Drivers(<b id="count"></b>)</a>

     
      <a href="#" id="getDclDrivers">Rejected Drivers(<b id="dclcount"></b>)</a>
      <a href="#" id="getDriverReviews"> Drivers Review(<b id="count_DriverReviews"></b>)</a>
      <a href="#" id="getDriverRides">Drivers Rides(<b id="count_NoofRide"></b>)</a>

    </div>
    </div>
<!-- agent side bar -->
  <div class="dropdown">
  <a  href="#">Agents  <i class="fa fa-caret-down" style="margin:0px 50px;"></i></a>


    <div class="dropdown-content">
      <a href="#" id="RegAgent">NewRegisterAgents(<b id="newAgntregcount"></b>)</a>
      <a href="#" id="getRegAgents">Accepted Agents(<b id="count_AgntReg"></b>)</a>
       <a href="#" id="getAgntDclDrivers">Rejected Agents(<b id="Agntdclcount"></b>)</a>

      <a href="#" id="getAgentGetins">Agents GetIns(<b id="count_AgntGetIns"></b>)</a>
      <a href="#" id="getAgentTotalins">Agents TotalGetIns(<b id="count_AgntGetTotalIns"></b>)</a>
      <a href="#" id="getAgentGetouts">Agents GetOuts(<b id="count_AgntGetouts"></b>)</a>
      <a href="#" id="getAgentTotalouts">Agents TotalGetOuts(<b id="count_AgntGetTotalouts"></b>)</a>
      
     
    </div>
    </div>
    <!-- supervisor side bar -->
  <div class="dropdown">
  <a  href="#">SuperVisors <i class="fa fa-caret-down" style="margin:0px 20px;"></i></a>


    <div class="dropdown-content">
      <a href="#" id="Reg_Supervisors">AcceptedSupervisors(<b id="count_AccSup"></b>)</a>
      <a href="#" id="Dcl_Supervisors">Declined Supervisors(<b id="count_DclSup"></b>)</a>
      <a href="#" id="getAgentPaidMoney">Agent PaidMoney(<b id="Agent_paidCount"></b>)</a>
     <!-- <a href="#" id="Reg_Supervisors"> Supervisors(<b id="count_AccSup"></b>)</a>
      

      <a href="#" id="Number_Agents">Number Of Agents</a> -->
   
    </div>
    </div>


    <div class="dropdown">
  <a  href="#">Payments <i class="fa fa-caret-down" style="margin:0px 20px;"></i></a>


    <div class="dropdown-content">
      <a href="#" id="paymentsall">Payments</a>
  
     <!-- <a href="#" id="Reg_Supervisors"> Supervisors(<b id="count_AccSup"></b>)</a>
      

      <a href="#" id="Number_Agents">Number Of Agents</a> -->
   
    </div>
    </div>

    <div class="dropdown">
  <a  href="#">HardCodes <i class="fa fa-caret-down" style="margin:0px 20px;"></i></a>


    <div class="dropdown-content">
      <a href="#" id="HardCodes">HardCodes</a>
  
     <!-- <a href="#" id="Reg_Supervisors"> Supervisors(<b id="count_AccSup"></b>)</a>
      

      <a href="#" id="Number_Agents">Number Of Agents</a> -->
   
    </div>
    </div>
     <div class="dropdown">
  <a  href="#home">Passanger<i class="fa fa-caret-down" style="margin:0px 20px;"></i></a>
<!-- passanger side bar -->
<div class="dropdown-content">
      <a href="#" id="getPassangercnt">PassangerCount(<b id="cnt_getPassanger"></b>)</a>
      
      <a href="#" id="getPassanger">PassangerFeedback(<b id="cnt_Passanger"></b>)</a>

    <a href="#" id="Reqpass">PassangerRequests(<b id="cnt_Reqpass"></b>)</a>
      
    </div>
    </div>
<!-- Route side bar -->
 <div class="dropdown">
  <a  href="#">Routes <i class="fa fa-caret-down" style="margin:0px 20px;"></i></a>


    <div class="dropdown-content">
      <a href="#" id="Routes">Route</a>
      
    </div>
    </div>
    <!-- Referral side bar -->
    <div class="dropdown">
  <a  href="#">Referral Ids <i class="fa fa-caret-down" style="margin:0px 20px;"></i></a>


    <div class="dropdown-content">
      <a href="#" id="refferal">Referral Ids</a>
      
    </div>
    </div>

<!-- cadcoins side bar -->
 <div class="dropdown">
  <a  href="#" id="getCadcoin">CadCoins <i  style="margin:0px 20px;"></i></a>

    </div>


    <div class="dropdown">
  <a  href="{{url('/logout')}}">Log out <i  style="margin:0px 20px;"></i></a>

    </div>
</div>

<div class="content">

  <center 
  <div id="fun"><h3> </h3><img src="{{asset('FroentEnd')}}/imgs/1.png" style="width:40%;"></div>

</center>

<div id="getpopup"></div>



</div>



</body>
</html>
@else
<script type="text/javascript">window.location="/";</script>

@endif
