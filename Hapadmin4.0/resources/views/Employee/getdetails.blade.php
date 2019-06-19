<html>
<head>
<meta name="csrf-token" content="{!! csrf_token() !!}">
	      <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>


<script>



function isNumber(evt) {
 
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 46 || charCode > 57)) {
        return false;
    }
    return true;
}

function fun2()
{

document.getElementById("id02").style.display="none";

}

function lettersOnly(evt) {
evt = (evt) ? evt : event;
var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
((evt.which) ? evt.which : 0));
if (charCode > 31 && (charCode < 65 || charCode > 90) &&
(charCode < 97 || charCode > 122)) {

return false;
}
return true;
}

</script>

<style>
.modal {
  display: block; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: -50px;
  width: 120%; /* Full width */
  height: 150%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 1% auto 5% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 300%; /* Could be more or less, depending on screen size */
}

* {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 40%;
  padding: 10px;
  margin:0px 40px;
  height: 350px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}


</style>

<script>
// Get the modal
var modal = document.getElementById('id01');
var modal1 = document.getElementById('id02');

var modal2 = document.getElementById('id02');
var modal3 = document.getElementById('id03');


// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

window.onclick = function(event) {
    if (event.target == modal1) {
        modal1.style.display = "none";
    }
}

window.onclick = function(event) {
    if (event.target == modal2) {
        modal2.style.display = "none";
    }
}
</script>
</head>
</html>
<?php

if(isset($_POST["docupdate"]))
{

$aid = $_POST["aid"];

// $output = $_POST["output"];
// if($output == "true")
// {

//   $out = "Accept";
// }
// else
// {
//   $out = "Reject";
// }
$rc = $_POST["rc"];
if($rc == "true")
{

  $r = "Accept";
}
else
{
  $r = "Reject";
}

$li = $_POST["li"];
if($li == "true")
{

  $l = "Accept";
}
else
{
  $l = "Reject";
}

$ins = $_POST["ins"];
if($ins == "true")
{

  $in = "Accept";
}
else
{
  $in = "Reject";
}

$po = $_POST["po"];
if($po == "true")
{

  $p = "Accept";
}
else
{
  $p = "Reject";
}

$aadhar = $_POST["aadhar"];
if($aadhar == "true")
{

  $aa = "Accept";
}
else
{
  $aa = "Reject";
}
$pan = $_POST["pan"];
if($pan == "true")
{

  $pa = "Accept";
}
else
{
  $pa = "Reject";
}

$up = DB::table('driverRegistration')->where('mobileNumber','=',$aid)->update(['rcStatus' =>$r,'licenseStatus' =>$l,'insuranceStatus'=>$in,'pollutionStatus' =>$p,'aadharStatus'=>$aa, 'panStatus'=>$pa]);


$sel =DB::table('driverRegistration')->select('*')->where('mobileNumber','=',$aid)->get();

foreach ($sel as $bel) {

$status = $bel->status;

$rcStatus = $bel->rcStatus;
$licenseStatus = $bel->licenseStatus;
$insuranceStatus = $bel->insuranceStatus;
$pollutionStatus = $bel->pollutionStatus;
$aadharStatus = $bel->aadharStatus;
$panStatus = $bel->panStatus;
}
if( $rcStatus=="Accept" && $licenseStatus =="Accept" && $insuranceStatus =="Accept" && $pollutionStatus=="Accept" && $aadharStatus =="Accept")
{

  $up = DB::table('driverRegistration')->where('mobileNumber','=',$aid)->update(['VerifyingStatus' => 4]);

}
}


if(isset($_POST["getDetail"]))
 {


     $cid = $_POST["did"];

     $sel =DB::table('driverRegistration')->where('mobileNumber','=',$cid)->select('*')->get();
     echo '
     <div id="id02" class="modal">
  
   <div class="modal-content animate"   style="text-align:center;width:30%;background-color:;font-size:15px;">

            <h3 style="">Vehicle Details<a href="#" style="font-size:20px;float:right;margin:0px 20px;" onclick="fun2();">&#10006;</a> </h3>        
                    
   
     
      ';

      date_default_timezone_set('Asia/Kolkata');
 $daytoday = date('Y-m-d ');

 foreach($sel as $did){
      $did->mobileNumber;
      $driverid = $did->d_id;
   $firstname = $did->firstName;
  $lastname =$did->lastName;
  $mobile = $did->mobileNumber;
 $vehicletype=$did->vehicleType;
 $seats = $did->seats;
  $VehicleNumber=$did->vehicleNumber;
 //$RCNumber = $did->rcNumber;
  $LicenceNumber = $did->licenseNumber;
 $pollutionCheck = $did->pollutionCheck;
 $pollutionExpiry=$did->p_expiryDate;
 $insurance=$did->insurance;
  $insuranceExpirey=$did->i_expiryDate;

 $date1=date_create("$insuranceExpirey");
 $date2=date_create("$pollutionExpiry");
 $date3=date_create("$daytoday");
 $diff1=date_diff($date3,$date2); 
 $diff2=date_diff($date1,$date2);

 $left_t = $diff1->format("%R%a");
 $left_I = $diff2->format("%R%a");

 echo '
 <br>

 <div style="border-style: solid;
   border-color: coral;width:100%;text-align:center;">';
 if($left_t < 3)
 {

   echo "Pollution Expiery time left &nbsp".$left_t."<br>";
 }
 if($left_I < 3)
 {

   echo "Insurance Expiery time left &nbsp&nbsp".$left_I."<br>";
 }
 echo '
 </div>
 <br>
            <div><b>DriverId:</b>'.$driverid.'</div> 
            <br>
                  <div><b>VehicleNumber:</b>'.$VehicleNumber.'</div> 
                  <br>
                     
                    <div><b>LicenceNumber:</b>'.$LicenceNumber.'</div> 
                     <br>
                     <div><b>PollutionCheck:</b>'.$pollutionCheck.'</div>
                     <br>
                     <div><b>PollutionExp:</b>'.$pollutionExpiry.'</div> 
                     <br>
                     <div><b>Insurance:</b>'.$insurance.'</div>
                     <br>
                     <div><b>InsuranceExpirey:</b>'.$insuranceExpirey.'</div> 
                     <br>
                    


 ';

 }
 echo '
    
      </div>
       </div>
       ';

   }

if(isset($_POST["Edithard"]))
{

  $aid = $_POST["aid"];
  $nid = $_POST["nid"];
  $vid = $_POST["vid"];

  echo '
<div id="id02" class="modal" >
<br>
<br>
<p></p>
<form  method="post" class="modal-content animate" style="background-color:;text-align:center;font-size:16px;width:30%">
<center>

<div>

<input type="hidden" name="aid"  value="'.$aid.'" id="hiddenaid">
</div>
<h3>Edit Cost</h3>
<div>
HardcodeId:'.$aid.'
</div>


<div>
Name:<br>
<input type="text" name="name" id="name" value='.$nid.' placeholder="name" required>

</div>
<br>
<div>
Value:<br>
<input type="text" name="value" id="value" value='.$vid.' placeholder="value" required>
</div>
<div>
<input type="submit"  id="hardsubmit" name="accept" value="submit">
</div>
<br>
<div>
</div>
<br>
</center>

</form>


</div>';

}


if(isset($_POST["insertInfo"]))
{
$aid = $_POST["aid"];
$select = DB::table('driverRegistration')->where('d_id',$aid)->update(['verified' => 'Accept']);
}
if(isset($_POST["rej"]))
{
	$rid = $_POST["rid"];
echo '
	<div id="id02" class="modal" >
<br>
<br>
<p></p>
<form  method="post" class="modal-content animate" style="background-color:;text-align:center;font-size:16px;width:30%">
<center>
<div>
<input type="hidden" name="aid"  value="'.$rid.'" id="hidden">
</div>
<h3>Reject Reason</h3>
<br>
<div>
Comments<br>
<textarea  rows="6" cols="30" name="reason" id="reason" placeholder="reason" required></textarea>

</div>
<br>
<div>
<input type="submit"  id="rejsubmit" name="reject" value="submit">
</div>
<br>
<div>
</div>
<br>
</center>

</form>


</div>';
}


if(isset($_POST["Payment"]))
{

  $aid = $_POST["aid"];

echo '
<div id="id02" class="modal">
<br>
<br>
<p></p>
<form  method="post" class="modal-content animate" style="background-color:;text-align:center;font-size:16px;width:30%">
<center>

<div>

<input type="hidden" name="aid"  value="'.$aid.'" id="hidden">


</div>
<h3>payment</h3>
SupervisorId:'.$aid.'
<div>';
echo '
</div>
<div>
<br>
<div>
Money:<input type="text"  id="mny" name="mny" size:4px>
</div>
</div>


<br>
<div>
<input type="submit"  id="Payed" name="accept" value="submit">
</div>
<div>
</div>
</center>

</form>


</div>';

}



if(isset($_POST["AssignAgnt"]))
{

  $aid = $_POST["aid"];
$sel = DB::table('agentsRegistration')->where('s_id','=',-1)->select('*')->get();
$sel123 = DB::table('agentsRegistration')->where('s_id','=',$aid)->select('*')->get();
echo '
<div id="id02" class="modal">
<br>
<br>
<p></p>
<form  method="post" class="modal-content animate" style="background-color:;text-align:center;font-size:16px;width:30%">
<center>

<div>

<input type="hidden" name="aid"  value="'.$aid.'" id="hidden">


</div>
<h3>Assigned Agents</h3>
SupervisorId:'.$aid.'
<div>
AssignedAgents:';

foreach ($sel123 as $trs123) {
  echo $trs123->S_No;
  echo ",";

}

echo '
</div>
<div>
<br>
AgentIds:<select name="sel" id="sel">';

foreach ($sel as $trs) {
  echo '

:<option value='.$trs->S_No.'>'.$trs->S_No.'</option>
';


}

echo '</select>
</div>


<br>
<div>
<input type="submit"  id="Assignsub" name="accept" value="submit">
</div>
<div>
</div>
</center>

</form>


</div>';

}



if(isset($_POST["insertAgntInfo"]))
{

  $aid = $_POST["aid"];
$nid = $_POST["nid"];

echo '
<div id="id02" class="modal">
<br>
<br>
<p></p>
<form  method="post" class="modal-content animate" style="background-color:;text-align:center;font-size:16px;width:30%">
<center>

<div>

<input type="hidden" name="aid"  value="'.$aid.'" id="hidden">
<input type="hidden" name="nid"  value="'.$nid.'" id="hidden123">

</div>
<h3>Credentials</h3>
<div>

<br>
mobileNumber:'.$aid.'
</div>

<div>

<br>
<select name="sel" id="sel">
<option value="-1">Agent</option>
<option value="0">Supervisor</option>
</select>

</div>


<br>
<div>
<input type="submit"  id="submitAgnt" name="accept" value="submit">
</div>
<div>
</div>
</center>

</form>


</div>';

// $select = DB::table('agentsRegistration')->where('mobileNumber',$aid)->update(['verified' => 'Accept']);

}

if(isset($_POST["Agntrej"]))
{

  $rid = $_POST["rid"];

  echo '
  <div id="id02" class="modal" >
<br>
<br>
<p></p>
<form  method="post" class="modal-content animate" style="background-color:;text-align:center;font-size:16px;width:30%">
<center>

<div>

<input type="hidden" name="aid"  value="'.$rid.'" id="hidden">

</div>
<h3>Reject Reason</h3>
<br>

<div>
Comments<br>
<textarea  rows="6" cols="30" name="reason" id="reason" placeholder="reason" required></textarea>

</div>
<br>
<div>
<input type="submit"  id="Agntrejsubmit" name="reject" value="submit">
</div>
<br>
<div>
</div>
<br>
</center>

</form>


</div>';
}
if(isset($_POST["AddRoutes"]))
{
  

  echo '
  <div id="id02" class="modal" >
  
  <div class="modal-content animate" style="background-color:orange;text-align:center;font-size:16px;width:30%">

   

   <fieldset>
<form method="post">

<br>
<h3>Add Routes<a href="#" style="font-size:20px;float:right;margin:0px 40px;" onclick="fun2();">&#10006;</a></h3>
<br>
  <div>
Source:
<input type="text" name="sel1" id="source" style="border:2px solid black;" placeholder="eg:Lingampally" size="12" onkeypress="return lettersOnly(event)">
<!--<select name="sel1" id="source" style="height:30px;">
<option>Select</option>
<option>Jbs</option>
<option>Lingampally</option>
<option>Miyapur</option>
<option>Chandhanagar</option>
</select> -->
&nbsp;
Destination:
<input type="text" name="sel2" style="border:2px solid black;" id="destination" placeholder="eg:Gachibowli" size="12" onkeypress="return lettersOnly(event)">
<!--<select name="sel2" id="destination" style="height:30px;">
<option>Select</option>
<option>Uppal</option>
<option>Koti</option>
<option>Mehdhipatnam</option>
<option>Jbs</option>
</select> -->

</div>
<br>

  <div>
Latitude:
<input type="text" name="lat" id="lat" style="border:2px solid black;" placeholder="eg:17.099" size="8" onkeypress="return isNumber(event)">

&nbsp;
Longituted:
<input type="text" name="long" style="border:2px solid black;" id="long" placeholder="eg:17.899" size="8" onkeypress="return isNumber(event)">

</div>

<br>

  <div>
CashCoupen:
<input type="text" name="cashcoupen" id="cashcoupen" style="border:2px solid black;" placeholder="eg:ahnxvnm" size="8" required>

&nbsp;
CoupenAmount:
<input type="text" name="amnt" style="border:2px solid black;" id="amnt" placeholder="eg:30" size="8" required>

</div>

<div>
  <br>
  <div>
AutoLatestCost:
<input type="text" name="autoLatestCost" id="autoLatestCost" placeholder="Amount" size="4" onkeypress="return isNumber(event)" style="border:2px solid black;">

</div>
<br>
<div>
AutoOldCost:
<input type="text" name="autoOldCost" id="autoOldCost" placeholder="Amount" size="4" onkeypress="return isNumber(event)" style="border:2px solid black;">
</div>
<br>
<div>
CabLatestCost:
<input type="text" name="cabLatestCost" id="cabLatestCost" placeholder="Amount" size="4" onkeypress="return isNumber(event)" style="border:2px solid black;">
</div>

<br>
<div>
CabOldCost:
<input type="text" name="cabOldCost" id="cabOldCost" placeholder="Amount" size="4" onkeypress="return isNumber(event)" style="border:2px solid black;">
</div>

<br>
<div>
EstimatedTime:
<input type="text" name="estimatedTime" id="estimatedTime" placeholder="Time" size="4" onkeypress="return isNumber(event)" style="border:2px solid black;">
</div>
<br>
<div>

<input type="submit" value="submit" id="locationsub" style="border:2px solid black;color:green">
</div>


</form>
</fieldset>   
<br>  ';


echo '  
      </div>
      </div>
      ';

  }

  


if(isset($_POST["getRegAgentDetailnum"]))
{

  

  $aid= $_POST["aid"];
  $sel =DB::table('agentsRegistration')->select ('*')->where('mobileNumber','=',$aid)->get();

  echo '
  <div id="id02" class="modal">
  
  <div class="modal-content animate" style="background-color:;text-align:center;font-size:16px;width:30%">

        <h3 style="">Agent Details<a href="#" style="font-size:20px;float:right;margin:0px 20px;" onclick="fun2();">&#10006;</a> </h3>   
                    
  
      ';

      

foreach($sel as $del)
{

$agentid = $del->id;
$firstname = $del->firstName;
$lastname =$del->lastName;
$mobile = $del->mobileNumber;
$qualification=$del->qualification;
$SmartPhone = $del->smartPhone;
$bike = $del->bike;
$requestedRole =$del->requestedRole;

$assignedRole = $del->assignedRole;
$documentType=$del->documentType;
$documentLocation=$del->documentLocation;
$SupervisorId = $del->s_id;
$workingstatus =$del->workingStatus;

$createdBy = $del->createdBy;
$createdDate = $del->createdDate;
$modifiedDate=$del->modifiedDate;
$modifiedBy=$del->modifiedBy; 

echo '
<br>
<div>mobileNumber:'.$mobile.'</div> 
<br>
           <div>DocumentType:'.$documentType.'</div>
           <br>
          <div>document:<a href="'.$documentLocation.'"  download='.$firstname.' target="_blank">Doc</a> </div>
          <br>
                 <div>CreatedBy123:'.$createdBy.'</div> 
                 <br>
                    <div>CreatedDate:'.$createdDate.'</div>
                    <br>
                   <div>ModifiedDate:'.$modifiedDate.'</div>
                   <br>
                  <div>ModifiedBy:'.$modifiedBy.'</div> <br>';


}
echo '
      </div>
      </div>
      ';

  }



if(isset($_POST["getSuperDetail"]))

{

$acid= $_POST["aid"];
$sel1 =DB::table('rideDetails')->select('*')->where('s_id','=',$acid)->get();
$sel2 =DB::table('rideDetails')->select('*')->where('s_id','=',$acid)->count();
echo '
<div id="id02" class="modal">

<div class="modal-content animate" style="background-color;text-align:center;font-size:16px;width:30%">
<h3 style="">Supervisor Details<a href="#" style="font-size:20px;float:right;margin:0px 20px;" onclick="fun2();">&#10006;</a> </h3>

';

echo "agentid:".$acid."<br>"; 

if($sel2 != 0)
{

foreach($sel1 as $sup)
{
$giid = $sup->gi_id;
$rid = $sup->r_id;

$did =$sup->d_id;
$goid = $sup->go_id;

$source = $sup->source;
$destination=$sup->destination;
$PassangerCount = $sup->passengerCount;

$totalFare = $sup->totalFare;

echo '
<br>
<div><b>AgentGetInId:</b>'.$rid.'</div> 
<br>
<div><b>RideId:</b>'.$giid.'</div>
<br>

<div><b>DriverId:</b>'.$did.'</div>
<br>
<div><b>Source:</b>'.$source.'</div>
<br>
<div><b>Destination:</b>'.$destination.'</div> 
<br>
<div><b>PassangerCount:</b>'.$PassangerCount.'</div>
<br>
<div><b>TotalFare:</b>'.$totalFare.'</div>

<br>
';

}
}
else
{
  echo "no details empty";
}
echo '

</div>
</div>
';
}




if(isset($_POST["getRegAgentDetail"]))
{

  

  $aid= $_POST["aid"];
  $sel =DB::table('agentsRegistration')->select ('*')->where('id','=',$aid)->get();

  echo '
  <div id="id02" class="modal">
  
  <div class="modal-content animate" style="background-color:;text-align:center;font-size:16px;width:30%">

        <h3 style="">Agent Details<a href="#" style="font-size:20px;float:right;margin:0px 20px;" onclick="fun2();">&#10006;</a> </h3>   
                    
  
      ';

      

foreach($sel as $del)
{

$agentid = $del->id;
$firstname = $del->firstName;
$lastname =$del->lastName;
$mobile = $del->mobileNumber;
$qualification=$del->qualification;
$SmartPhone = $del->smartPhone;
$bike = $del->bike;
$requestedRole =$del->requestedRole;

$assignedRole = $del->assignedRole;
$documentType=$del->documentType;
$documentLocation=$del->documentLocation;
$SupervisorId = $del->s_id;
$workingstatus =$del->workingStatus;

$createdBy = $del->createdBy;
$createdDate = $del->createdDate;
$modifiedDate=$del->modifiedDate;
$modifiedBy=$del->modifiedBy; 

echo '
<br>
<div>AgentId:'.$agentid.'</div> 
<br>
           <div>DocumentType:'.$documentType.'</div>
           <br>
          <div>document:<a href="'.$documentLocation.'"  download='.$firstname.' target="_blank">Doc</a> </div>
          <br>
                 <div>CreatedBy123:'.$createdBy.'</div> 
                 <br>
                    <div>CreatedDate:'.$createdDate.'</div>
                    <br>
                   <div>ModifiedDate:'.$modifiedDate.'</div>
                   <br>
                  <div>ModifiedBy:'.$modifiedBy.'</div> <br>';


}
echo '
      </div>
      </div>
      ';

  }

  if(isset($_POST['selsubmit']))
{
  $mid= $_POST["mid"];
    $nnid= $_POST["nnid"];

   $sel =DB::table('physicalVerification')->insert(['d_id' => $mid, 'verifier' => $nnid ]); 

   if($sel)
   {

  $sel =DB::table('agentsRegistration')->where('id','=',$nnid)->update(['Assigned' => '1']);

   }
 }





  if(isset($_POST["getDetailReg"]))
{

  

  $did= $_POST["cid"];
  $sel =DB::table('driverRegistration')->select('*')->where('d_id','=',$did)->get();

  echo '
  <div id="id02" class="modal">
  
  <div class="modal-content animate"   style="text-align:center;width:25%;background-color:;font-size:15px;">

           <h3 style="">Vehicle Details<a href="#" style="font-size:20px;float:right;margin:0px 20px;" onclick="fun2();">&#10006;</a> </h3>        
                    
   
     
      ';

      date_default_timezone_set('Asia/Kolkata');
$daytoday = date('Y-m-d ');

foreach($sel as $sed)
{

$driverid = $sed->d_id;
$firstname = $sed->firstName;
$lastname =$sed->lastName;
$mobile = $sed->mobileNumber;
$vehicletype=$sed->vehicleType;
$seats = $sed->seats;
$VehicleNumber=$sed->vehicleNumber;

$LicenceNumber =$sed->licenseNumber;
$pollutionCheck = $sed->pollutionCheck;
$pollutionExpiry=$sed->p_expiryDate;
$insurance=$sed->insurance;
$insuranceExpirey=$sed->i_expiryDate;

$date1=date_create("$insuranceExpirey");
$date2=date_create("$pollutionExpiry");
$date3=date_create("$daytoday");
$diff1=date_diff($date3,$date2); 
$diff2=date_diff($date1,$date2);

$left_t = $diff1->format("%R%a");
$left_I = $diff2->format("%R%a");
echo '
<br>

<div style="border-style: solid;
  border-color: coral;width:100%;text-align:center;">';
if($left_t < 3)
{

  echo "Pollution Expiery time left &nbsp".$left_t."<br>";
}
if($left_I < 3)
{

  echo "Insurance Expiery time left &nbsp&nbsp".$left_I."<br>";
}
echo '
</div>
<br>
           <div><b>DriverId:</b>'.$did.'</div> 
           <br>
                 <div><b>VehicleNumber:</b>'.$VehicleNumber.'</div> 
                
                    <br>
                    <div><b>LicenceNumber:</b>'.$LicenceNumber.'</div> 
                    <br>
                    <div><b>PollutionCheck:</b>'.$pollutionCheck.'</div>
                    <br>
                    <div><b>PollutionExp:</b>'.$pollutionExpiry.'</div> 
                    <br>
                    <div><b>Insurance:</b>'.$insurance.'</div>
                    <br>
                    <div><b>InsuranceExpirey:</b>'.$insuranceExpirey.'</div> 
                    <br>
                    


';

}
echo '
    
      </div>
      </div>
      ';

  }




  if(isset($_POST["getDriverDocs"]))
{

  

  $did= $_POST["cid"];

  $sel =DB::table('driverRegistration')->select('*')->where('mobileNumber','=',$did)->get();

  echo '
  <div id="id02" cid="id02-'.$did.'" class="modal">
  
  <div id="isd'.$did.'" class="modal-content animate" style="background-color:;text-align:center;font-size:16px;width:50%;height:70%">

           <h3 style="">Document Details111<a href="#" style="font-size:20px;float:right;margin:0px 20px;" onclick="fun2();">&#10006;</a> </h3>
                  
      ';
foreach($sel as $bel)
{
$driverid = $bel->d_id;
$firstname = $bel->firstName;
$lastname =$bel->lastName;
$mobile = $bel->mobileNumber;
$vehicletype=$bel->vehicleType;
$seats = $bel->seats;
$VehicleNumber=$bel->vehicleNumber;

$documentLocation = $bel->documentLocation;
$documentLocationRc = $bel->documentLocationRc;
$documentLocationLicense = $bel->documentLocationLicense;
$documentLocationInsurance = $bel->documentLocationInsurance;
$documentLocationPollution = $bel->documentLocationPollution;
$documentLocationAadhar = $bel->documentLocationAadhar;
$documentLocationPan = $bel->documentLocationPan;
$status = $bel->status;
$rcStatus = $bel->rcStatus;
$licenseStatus = $bel->licenseStatus;
$insuranceStatus = $bel->insuranceStatus;
$pollutionStatus = $bel->pollutionStatus;
$aadharStatus = $bel->aadharStatus;
$panStatus = $bel->panStatus;
$LicenceNumber = $bel->licenseNumber;
$RcNumber = $bel->RcNumber;
$insurance=$bel->insurance;
$pollutionCheck = $bel->pollutionCheck;
$pollutionExpiry=$bel->p_expiryDate;

$insuranceExpirey=$bel->i_expiryDate;

// if($documentLocation == '')
// {
//   $output ='Not Uploaded';
// }
// else{
//   $output = '
// <td><a   href="'.$documentLocation.'" download='.$firstname.' target="_blank">Doc</a></td>';
// }
if($documentLocationRc == '')
{
 $rc = 'Not Uploaded';
}
else{
  $rc='<td><a href="'.$documentLocationRc.'" download target="_blank">RC</a></td>';
}
if($documentLocationLicense == '')
{
  $li = 'Not Uploaded';
}
else{
  $li = '
<td><a   href="'.$documentLocationLicense.'" download='.$firstname.' target="_blank">License</a></td>';
}
if($documentLocationInsurance == '')
{
 $ins = 'Not Uploaded';
}
else{
 $ins
 ='<td><a   href="'.$documentLocationInsurance.'" download='.$firstname.' target="_blank">Insurance</a></td>';
}

if($documentLocationPollution == '')
{
  $po = 'Not Uploaded';
}
else{
 $po ='
<td><a   href="'.$documentLocationPollution.'" download='.$firstname.' target="_blank">Pollution</a></td>';
}
if($documentLocationAadhar == '')
{
$aadhar = 'Not Uploaded';
}
else{
  $aadhar ='
<td><a   href="'.$documentLocationAadhar.'" download='.$firstname.' target="_blank">Aadhar</a></td>';
}
if($documentLocationPan == '')
{
$pan ='Not Uploaded';
}
else{
  $pan = '
<td><a   href="'.$documentLocationPan.'" download='.$firstname.' target="_blank">Pan</a></td>';
}

$status = $bel->status;

$rcStatus = $bel->rcStatus;
$licenseStatus = $bel->licenseStatus;
$insuranceStatus = $bel->insuranceStatus;
$pollutionStatus = $bel->pollutionStatus;
$aadharStatus = $bel->aadharStatus;
$panStatus = $bel->panStatus;

echo ' <div><b>DriverId123:</b>&nbsp;'.$driverid.' </div> ';
$sel = DB::table('agentsRegistration')->select('id')->where('verified','=','Accepted')->where('Assigned','!=',1)->get();
                    if($rcStatus=="Accept" && $licenseStatus =="Accept" && $insuranceStatus =="Accept" && $pollutionStatus=="Accept" && $aadharStatus =="Accept")
{
  $seld = DB::table('physicalVerification')->where('d_id','=',$driverid)->select('*')->count();
if($seld == 0)
{
echo '
 <b>Assign Agent</b>
<br>
<select id="name">';
foreach($sel as $dd)
{
  $pd = $dd->id;
echo '
<option>'.$pd.'</option>';
}
echo '</select>
<input type="submit" value="submit" mid="'.$driverid.'"" id="selsubmit">';
}
else
{
   $seld = DB::table('physicalVerification')->where('d_id','=',$driverid)->select('*')->get();
   foreach ($seld  as $depp) {
    $verifier = $depp->verifier;
    $ddid = $depp->d_id;
   }
 echo $verifier."   Assigned"; 
}
}


echo '

<br>
<br>

                    <div class="row">

                    <div class="column" style="background-color:#aaa;">
                  

                    <div><b>RCNumber:</b>'.$RcNumber.'&nbsp;</div>
                     <br>
                    <div><b>LicenceNumber:</b>'.$LicenceNumber.'&nbsp;</div>
                    <br>
                    <div><b>PollutionCheck:</b>'.$pollutionCheck.'&nbsp;</div>
                    <br>
                    <div><b>Insurance:</b>'.$insurance.'&nbsp;</div>
                    
  
  </div>
    <div class="column" style="background-color:#bbb;">';
  

               
echo '
                 
                 <br>
                    <div><b>RCDocument:</b>&nbsp;'.$rc.''; if($rcStatus == 'pending' || $rcStatus == 'Reject' ){ echo '&nbsp;&nbsp;&nbsp;<input type="checkbox" id="rc"> ';}
                 elseif($rcStatus == 'Accept'){
                   echo '&nbsp;&nbsp;&nbsp;<input type="checkbox"   id="rc" checked>';

                 } echo  '</div>
                    <br>
                   <div><b>LicenceDocument:</b>&nbsp;'.$li.''; if($licenseStatus == 'pending' || $licenseStatus == 'Reject'){ echo '&nbsp;&nbsp;&nbsp;<input type="checkbox"  id="li"> ';}
                 elseif($licenseStatus == 'Accept'){
                   echo '&nbsp;&nbsp;&nbsp;<input type="checkbox"  id="li" checked>';

                 } echo  '</div>
                   <br>
                    <div><b>InsuranceDocument:</b>&nbsp;'.$ins.''; if($insuranceStatus == 'pending' || $insuranceStatus == 'Reject'){ echo '&nbsp;&nbsp;&nbsp;<input type="checkbox" id="ins"> ';}
                 elseif($insuranceStatus == 'Accept'){
                   echo '&nbsp;&nbsp;&nbsp;<input type="checkbox"  id="ins" checked>';

                 } echo  '</div>
                    <br>
                    <div><b>PollutionDocument:</b>&nbsp;'.$po.''; if($pollutionStatus == 'pending' || $pollutionStatus == 'Reject'){ echo '&nbsp;&nbsp;&nbsp;<input type="checkbox"   id="po"> ';}
                 elseif($pollutionStatus == 'Accept'){
                   echo '&nbsp;&nbsp;&nbsp;<input type="checkbox"  id="po" checked>';

                 } echo  '</div>
                    <br>
                    <div><b>AadharDocument:</b>&nbsp;'.$aadhar.''; if($aadharStatus == 'pending' || $aadharStatus == 'Reject'){ echo '&nbsp;&nbsp;&nbsp;<input type="checkbox"   id="aadhar"> ';}
                 elseif($aadharStatus == 'Accept'){
                   echo '&nbsp;&nbsp;&nbsp;<input type="checkbox"  id="aadhar" checked>';

                 } echo  '</div>
                    <br>
                    <div><b>PanDocument:</b>&nbsp;'.$pan.''; if($panStatus == 'pending' || $panStatus == 'Reject'){ echo '&nbsp;&nbsp;&nbsp;<input type="checkbox"   id="pan"> ';}
                 elseif($panStatus == 'Accept'){
                   echo '&nbsp;&nbsp;&nbsp;<input type="checkbox" id="pan" checked>';

                 } echo  '</div> <br>

                   ';


}
echo ' 
</div><br>';

if( $rcStatus=="Accept" && $licenseStatus =="Accept" && $insuranceStatus =="Accept" && $pollutionStatus=="Accept" && $aadharStatus =="Accept")
{
echo '<br><br><div>Data Submited</div>';
}
else
{

echo '<div><input type="submit" id="driverdoc" did='.$mobile.'  mid='.$mobile.' class="docaccept" value="submit"></div>';
}
echo '
</div>

      </div>
      </div>
      ';

  }


//   if(isset($_POST["getAgentPaidMoney"]))
// {
// $sel =DB::table('settlementDetails')->select('*')->get();
// echo '

// <div class="driver-content" id="mainfun" >
//       <div class="cont">
        
// <div class="heading"   >
 
//     <h3> Agent PaidMoney</h3>
//       </div>
        
//   </div>
 

// <div  class="ids">
// <table id="extable" class="table table-striped table-bordered" style="width:100%;text-align:center;">
//       <thead>
//         <tr>
          
//           <th>AgentGetOutIdGet</th>

//           <th>SettelMentId</th>        
//           <th>SettelMentDate</th>
//                     <th>TotalRides</th>
//                     <th>TotalPaid</th> 
//                     <th>TotalUnPaid</th>
                
//                     <th>SettelMentStatus</th>
         
//         </tr>
//         </thead>
  
//       ';


  
      
// foreach ($sel as $pd) {


// $goid = $pd->go_id;
// $setid =  $pd->set_id;

// $setdate = $pd->setDate;
// $TotalRides =  $pd->totalRides;
// $TotalPaid =  $pd->totalPaid;
// $TotalUnPaid =  $pd->totalUnpaid;
// //$PendingAmount =  $pd->pendingAmount;
// $SettelMentStatus= $pd->settlementStatus;

// echo '
// <tr>
// <td>'.$goid.'</td>
// <td>'.$setid.'</td>
// <td>'.$setdate.'</td>

// <td> '.$TotalRides.'</td>
// <td>'.$TotalPaid.'</td>
// <td>'.$TotalUnPaid.'</td>

// <td>'.$SettelMentStatus.'</td>






// </tr>';

// }
// echo '
//       </table>
//       </div>';

// }

if(isset($_POST["Edit"]))
{

  $ao = $_POST["ao"];
 $aid= $_POST["aid"];
 $did = $_POST["did"];
 $cid =  $_POST["cid"];
     
$an = $_POST["an"];
 
  $co = $_POST["co"];
  $cn = $_POST["cn"];

  echo '
<div id="id02" class="modal" >
<br>
<br>
<p></p>
<form  method="post" class="modal-content animate" style="background-color:;text-align:center;font-size:16px;width:30%">
<center>

<div>

<input type="hidden" name="aid"  value="'.$aid.'" id="hiddenaid">
<input type="hidden" name="aid"  value="'.$did.'" id="hiddendid">
<input type="hidden" name="aid"  value="'.$cid.'" id="hiddencid">


</div>
<h3>Edit Cost</h3>
<div>
LocationId:'.$cid.'
</div>
<div><h3>'.$aid.' -  '.$did.'</h3></div>

<div>
AutoOldCost<br>
<input type="text" name="old" id="autooldCost" value='.$an.' placeholder="Old Cost" required>

</div>
<br>
<div>
AutoNewCost<br>
<input type="text" name="new" id="autonewCost" placeholder="New Cost" required>

</div>
<br>
<div>
CarOldCost<br>
<input type="text" name="new" id="carOldCost" value='.$cn.' placeholder="New Cost" required>

</div>
<br>
<div>
CarNewCost<br>
<input type="text" name="new" id="carnewCost" placeholder="New Cost" required>

</div>
<br>
<div>

<input type="submit"  id="editsubmit" name="accept" value="submit">
</div>
<br>
<div>
</div>
<br>
</center>

</form>


</div>';

}


?>