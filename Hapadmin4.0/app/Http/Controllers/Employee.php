<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;
use Session;
use Auth;

class Employee extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

public function home()
    {
return view('Employee.index');

    }


    public function index()
    {
        
      
   if(isset($_POST["insertDriverActive"]))
{

  $rid = $_POST["aid"];

           
  
//$update = $db->query("update driverRegistration set workingStatus='Active' where d_id = '$rid' ");  
     
$select = DB::table('driverRegistration')->where('mobileNumber',$rid)->update(['workingStatus' => 'Active']);


echo $select;

}
   if(isset($_POST["insertDriverInActive"]))
        {
           //Accepted Supervisor Active
           
            $rid= $_POST["aid"];
           
            //$update = $db->query("update agentsRegistration set workingStatus='Active' where id = '$rid' ");  
            
        $select = DB::table('driverRegistration')->where('mobileNumber',$rid)->update(['workingStatus' => 'InActive']);

       echo $select;

   }

       
          //Route insertion
 if(isset($_POST["insertIntoLoc"]))
          {  
          
           $source = $_POST["s"];
           $destination = $_POST["d"];
           $autoLatestCost = $_POST["al"];
           $autoOldCost=$_POST["ao"];
           $cabLatestCost=$_POST["cl"];
            $cabOldCost=$_POST["co"];
            $estimatedTime=$_POST["est"];
              $lat =$_POST["lat"];
            $long =$_POST["long"];
               $cashcoupen =$_POST["cashcoupen"];
            $amnt =$_POST["amnt"];
              date_default_timezone_set('Asia/Kolkata');
          $daytoday = date('Y-m-d h:m:s ');
          
          
          
          if($source != "")
          {
          
          if($destination != "")
          {
            $select = DB::table('locationDetails')->insert(['source' => $source,'destination' =>$destination,'autoLatestCost' =>$autoLatestCost,'autoOldCost'=>$autoOldCost,'cabLatestCost'=>$cabLatestCost,'cabOldCost'=>$cabOldCost,'estimatedTime'=>$estimatedTime,'createdBy'=>'admin','createdDate'=>$daytoday,'modifiedBy'=>'admin','modifiedDate'=>$daytoday,'status'=>'Pending','lat' =>$lat,'lon'=>$long,'cashCouponCode'=> $cashcoupen,'amount'=>$amnt]);

          if($select)
          {
          
            echo '<script>alert("Data Inserted");</script>';
          }
          }
          else{
          
            echo '<script>alert("Please select destination");</script>';
          
          }
          }
          else{
          
            echo '<script>alert("Please select source");</script>';
          
          }
          
          
          
          
          }
 if(isset($_POST["insertInto"]))
{

echo '<script>alert("jjj");</script>';

$name = $_POST["name"];
	$r = $_POST["r"];
	$p = $_POST["p"];
  $res = $_POST["res"];

	$id=$_POST["id"];
	$aname='admin';
$permitted_chars = '0123456789abcdefghijklmnopqrstuvwxyz';
// Output: 54esmdr0qf
$rand = substr(str_shuffle($permitted_chars), 0, 6);


//up = $db->query("insert into usersLogin (id,userName,password,source,workingStatus,role,createdDate,createdBy,modifiedDate,ModifiedBy,rideStatus,agentAvailability,totalAgents) value('$nid','$r','$p','-1','-1','Agent','NOW()','$aname',NOW(),'$aname','-1','-1','-1')");
$up = DB::table('usersLogin')->insert(['id' => $r,'userName' =>$name,'password' =>$p,'source'=>'-1','workingStatus'=>'-1','role'=>'Driver','referralCode'=>$rand,'createdDate'=>NOW(),'createdBy'=>$aname,'modifiedDate'=>NOW(),'ModifiedBy'=>$aname,'rideStatus'=>'-1','agentAvailability'=>'-1','totalAgents'=>'-1']);


if($up)
{

  //$update = $db->query("update driverRegistration set verified = 'Accepted' ,reason='$res',d_id='$r' where mobileNumber='$id'" );
  $select = DB::table('driverRegistration')->where('mobileNumber',$id)->update(['verified' => 'Accepted','reason'=> $res,'d_id'=>$r]);
  echo $select;
}

}

if(isset($_POST['insertIntoAgnt']))
{

  $rid=$_POST['id'];
  $res=$_POST['sel'];

//$update = $db->query("update agentsRegistration set verified='Rejected',reason='$res' where id=$rid");

  if($res == 0)
  {
$select = DB::table('agentsRegistration')->where('mobileNumber',$rid)->update(['verified' => 'Accepted','assigned'=> 'Supervisor','s_id' => $res]);
}
elseif($res == -1)
{
  $select = DB::table('agentsRegistration')->where('mobileNumber',$rid)->update(['verified' => 'Accepted','assigned'=> 'Agent', 's_id' => $res,'verifyingStatus'=> '4','status' => 'Accept' ]);
}

}

if(isset($_POST['rejupdate']))
{

  $rid=$_POST['id'];
  $res=$_POST['res'];
  $select = DB::table('driverRegistration')->where('d_id',$rid)->update(['verified' => 'Rejected','reason'=> $res]);
  echo $select;

//$update = $db->query("update driverRegistration set verified='Rejected',reason='$res' where d_id=$rid");

}



if(isset($_POST['Assignsub']))
{

  $rid=$_POST['id'];
  $res=$_POST['sel'];
$select = DB::table('agentsRegistration')->where('S_No',$res)->update(['s_id' => $rid]);
//$update = $db->query("update agentsRegistration set verified='Rejected',reason='$res' where id=$rid");

}


if(isset($_POST["payed"]))
{
$aid = $_POST["aid"];
$mny = $_POST["mny"];

DB::table('paymentDetails')->insert(['receiverId' => $aid,
  'payeeId' => 'admin','amountPaid' => $mny 


]);
}


if(isset($_POST["updateloc"]))
{
$aid = $_POST["aid"];
  $did = $_POST["did"];
  $cid = $_POST["cid"];

  $ato = $_POST["autooldCost"];
  $atn = $_POST["autonewCost"];
  $co = $_POST["carOldCost"];
   $cn = $_POST["carnewCost"];


DB::table('locationDetails')->where('id','=',$cid)->update(['autoLatestCost' => $atn,

'autooldCost' => $ato,
'cabOldCost' => $co,
'cabLatestCost' => $cn


]);


}


if(isset($_POST["hardupdate"]))
{
$aid = $_POST["aid"];
  $nid = $_POST["nid"];
$vid = $_POST["vid"]; 

DB::table('hardCodeValues')->where('sNo','=',$aid)->update(['name' => $nid,'value' => $vid
]);

}


if(isset($_POST['Agntrejupdate']))
{

  $rid=$_POST['id'];
  $res=$_POST['res'];

//$update = $db->query("update agentsRegistration set verified='Rejected',reason='$res' where id=$rid");
$select = DB::table('agentsRegistration')->where('mobileNumber',$rid)->update(['verified' => 'Rejected','reason'=> $res,
'status' => 'Reject']);


}


    if(isset($_POST["insertsuperActive"]))
        {
           //Accepted Supervisor Active
           
            $rid= $_POST["aid"];
              
           
            //$update = $db->query("update agentsRegistration set workingStatus='Active' where id = '$rid' ");  
            
        $select = DB::table('agentsRegistration')->where('id',$rid)->update(['workingStatus' => 'Active']);

       echo $select;

   }


   if(isset($_POST["insertsuperInActive"]))
        {
           //Accepted Supervisor InActive
           
            $rid= $_POST["aid"];
               
            
  
            //$update = $db->query("update agentsRegistration set workingStatus='Active' where id = '$rid' ");  
            
        $select = DB::table('agentsRegistration')->where('id',$rid)->update(['workingStatus' => 'InActive']);

       echo $select;

   }
   if(isset($_POST["insertAgentActive"]))
        {
           //Accepted Supervisor Active
           
            $rid= $_POST["aid"];
              
            
  
            //$update = $db->query("update agentsRegistration set workingStatus='Active' where id = '$rid' ");  
            
        $select = DB::table('agentsRegistration')->where('id',$rid)->update(['workingStatus' => 'Active']);

       echo $select;

   }
   if(isset($_POST["insertInfoActive"]))
   {
      //routes  Active
      
       $rid= $_POST["aid"];
      
   $cid = $_POST["cid"];
    $did = $_POST["did"];
          
       

       //$update = $db->query("update agentsRegistration set workingStatus='Active' where id = '$rid' ");  
       
   $select = DB::table('locationDetails')->where(['source'=>$rid,'destination'=>$did,'createdDate' => $cid])->update(['status' => 'Active']);

  echo $select;

}
if(isset($_POST["insertInfoInActive"]))
   {
      //routes  Active
      
       $rid= $_POST["aid"];
      
   $cid = $_POST["cid"];
    $did = $_POST["did"];
         

       //$update = $db->query("update agentsRegistration set workingStatus='Active' where id = '$rid' ");  
       
   $select = DB::table('locationDetails')->where(['source'=>$rid,'destination'=>$did,'createdDate' => $cid])->update(['status' => 'InActive']);

  echo $select;

}

   if(isset($_POST["insertAgentInActive"]))
        {
           //Accepted Supervisor InActive
           
            $rid= $_POST["aid"];
              
            //$update = $db->query("update agentsRegistration set workingStatus='Active' where id = '$rid' ");  
            
        $select = DB::table('agentsRegistration')->where('id',$rid)->update(['workingStatus' => 'InActive']);

       echo $select;

   }
 

//count of new Registered drivers starts
        if(isset($_POST["new_Reg"]))
        {
        $select = DB::table('driverRegistration')->where('verified','Pending')->select('*')->count();
       echo $select;
   }
//count of new Registered drivers ends

//count of Accepted drivers starts
   if(isset($_POST["count_Reg"]))
{
$count = $select = DB::table('driverRegistration')->where('verified','Accepted')->select('*')->count();
echo $count;
}
//Count of Accepted Drivers ends

//Count of Declined Drivers starts
if(isset($_POST["count_Dcl"]))
{
//$selDcl = $db->query("select * from driverRegistration where verified ='Rejected'");
$countDcl = DB::table('driverRegistration')->where('verified','Rejected')->select('*')->count();
echo $countDcl;
}
//Count of Declined Drivers ends


   if(isset($_POST["cnt_Passanger"]))
        {
        $sel =DB::table('passengerDetails')->join('passengerFeedback','passengerDetails.id','=','passengerFeedback.id')->select('*')->count();
       echo $sel;
   }


 if(isset($_POST["cnt_getPassanger"]))
        {
        $select = DB::table('passengerDetails')->select('*')->count();
       echo $select;
   }


if(isset($_POST["cnt_Reqpass"]))
        {
        $select = DB::table('passengerRequest')->select('*')->count();
       echo $select;
   }





//count of driver reviews

if(isset($_POST["count_DriverReviews"]))
{

$countDc2 = DB::table('driverFeedback')
            ->join('rideDetails', 'driverFeedback.r_id', '=', 'rideDetails.r_id')
          
            ->select('driverFeedback.*', ' rideDetails.*')
            ->count();


//$selDc2 = $db->query("select ridedetails.source,ridedetails.destination,driverfeedback.r_id,driverfeedback.id,driverfeedback.go_id,driverfeedback.d_id,driverfeedback.rating,driverfeedback.comments from driverfeedback inner join  ridedetails on driverfeedback.r_id  = ridedetails.r_id");

echo $countDc2;

}
//count of driver rides

if(isset($_POST["count_NoofRide"]))
{


//$countDc2 = DB::table('rideDetails')->select('count(r_id) as rid','d_id')->count();

$countDc2=DB::table('rideDetails')->groupBy('d_id')->select('r_id','d_id')->count();


echo $countDc2;

}




//cout of Agent Registered
if(isset($_POST["new_AgntReg"]))
        {

        $select = DB::table('agentsRegistration')->where('verified','Pending')->select('*')->count();

       echo $select;
   }


//get the registered Agents

   if(isset($_POST["count_AgntReg"]))
{

$select = DB::table('agentsRegistration')->where('verified','Accepted')->where('s_id','!=','0')->count();

echo $select;
}
if(isset($_POST["Agntdclcount"]))
{

$select = DB::table('agentsRegistration')->where('verified','Rejected')->where('s_id','!=','0')->count();

echo $select;
}
if(isset($_POST["count_AgntGetIns"]))
{

$select = DB::table('rideDetails')->select('*')->count();

echo $select;
}
if(isset($_POST["count_AgntGetTotalIns"]))
{

$select = DB::table('rideDetails')->groupBy('gi_id')->count();

echo $select;
}
if(isset($_POST["count_AgntGetouts"]))
{

$select = DB::table('transactionDetails')->select('*')->count();

echo $select;
}
if(isset($_POST["count_AgntGetTotalouts"]))
{

$select = DB::table('transactionDetails')->groupBy('go_id')->count();

echo $select;
}
if(isset($_POST["count_AccSup"]))
{

$select = DB::table('agentsRegistration')->where('verified','Accepted')->where('s_id','=','0')->count();


echo $select;
}
if(isset($_POST["count_DclSup"]))
{

$select = DB::table('agentsRegistration')->where('verified','Rejected')->where('s_id','!=','0')->count();


echo $select;
}
   

        
        
}



 public function action()
    {
//get registered drivers


       if(isset($_POST["getRegAgentDetail"]))
{
    $getRegAgentDetail = $_POST["getRegAgentDetail"];

   

 return view('Employee.details')->withttt($getRegAgentDetail);   

    
}

//New Driver Registration 

       if(isset($_POST["getDriver"]))
{
    $getDriver = $_POST["getDriver"];

   

 return view('Employee.details')->withset($getDriver);   

    
}
//New Driver Registration ends

if(isset($_POST["paymentsall"]))
{
$paymentsall = $_POST["paymentsall"];
return view('Employee.details')->withpay($paymentsall);  
}


//get accepted driver
if(isset($_POST["getRegDriver123"]))
{
  $getRegDriver123 = $_POST["getRegDriver123"];
 return view('Employee.details')->withmyset( $getRegDriver123);     
}
//accepted driver Ends


//get Declined Drivers
if(isset($_POST["getDclDrivers"]))
{ 
$getDclDrivers = $_POST["getDclDrivers"];
return view('Employee.details')->withdcl($getDclDrivers);  
}
//accepted driver Ends

//get Drivers Review
if(isset($_POST["getDriverReviews"]))
{   
$getDriverReviews = $_POST["getDriverReviews"];
return view('Employee.details')->withsss($getDriverReviews); 
}
//Drivers Review Ends

//
if(isset($_POST["getDriverRides"])){

   
$getDriverRides = $_POST["getDriverRides"];

return view('Employee.details')->withrid($getDriverRides); 


}
if(isset($_POST["RegAgent"])){

   
$RegAgent = $_POST["RegAgent"];

return view('Employee.details')->withsetagen($RegAgent); 

}

//Agent Accepted
if(isset($_POST["getRegAgents"])){
$RegAgent = $_POST["getRegAgents"];
return view('Employee.details')->withagn($RegAgent); 
}
//Agent Accepted Ends


if(isset($_POST["gethardcode"])){
$hardcode = $_POST["gethardcode"];
return view('Employee.details')->withhad($hardcode); 
}


//Agent Declined Ends
if(isset($_POST["getAgntDclDrivers"])){
  
$dagent = $_POST["getAgntDclDrivers"];
return view('Employee.details')->withdgn($dagent); 
}
//Agent Declined Ends

//Agent Agent Getins starts
if(isset($_POST["getAgentGetins"]))
{
$getin = $_POST["getAgentGetins"];
return view('Employee.details')->withgen($getin); 
}
//Agent Agent Getins ends


if(isset($_POST["getAgentPaidMoney"]))
{


$gpay = $_POST["getAgentPaidMoney"];

return view('Employee.details')->withgpa($gpay); 

}

//Agent total getins starts
if(isset($_POST["getAgentTotalins"]))
{
$totin = $_POST["getAgentTotalins"];
return view('Employee.details')->withtot($totin); 
}
//Agent total getins Ends

//Agent  getouts  starts
if(isset($_POST["getAgentGetouts"]))
{
$gout = $_POST["getAgentGetouts"];
return view('Employee.details')->withot($gout); 
}
//Agent  getouts ends

//Agent total getouts  starts
if(isset($_POST["getAgentTotalouts"]))
{
$gott = $_POST["getAgentTotalouts"];
return view('Employee.details')->withtog($gott); 
}
//Agent total getouts  ends


//sup registrations starts
if(isset($_POST["Reg_Supervisorsemp"]))
{
$Reg_Supervisorsemp = $_POST["Reg_Supervisorsemp"];
return view('Employee.details')->withspr($Reg_Supervisorsemp);  
}
//sup registrations ends

//Declined sup starts
if(isset($_POST["Dcl_Supervisors"]))
{
$Dcl_Supervisors = $_POST["Dcl_Supervisors"];
return view('Employee.details')->withsha($Dcl_Supervisors);  
}
//Declined sup ends

if(isset($_POST["getAgentPaidMoney"]))
{
$getAgentPaidMoney = $_POST["getAgentPaidMoney"];

return view('Employee.details')->withapm($getAgentPaidMoney);  

}

//Routes  starts here
if(isset($_POST["Routes"]))
{
$Routes = $_POST["Routes"];

return view('Employee.details')->withrts($Routes);  

}
//Routes  ends here

//Referral .js starts here
if(isset($_POST["refferal"]))
{
$refferal = $_POST["refferal"];

return view('Employee.details')->withrfl($refferal);  

}
//Referral  ends here

//cadcoins  starts
if(isset($_POST["getCadcoin"]))
{
$getCadcoin = $_POST["getCadcoin"];

return view('Employee.details')->withksd($getCadcoin);  
}
//cadcoins  ends

//Passanger Feedback  starts
if(isset($_POST["getPassanger"]))
{

$getPassanger = $_POST["getPassanger"];

return view('Employee.details')->withpsg($getPassanger);  

}
//Passanger Feedback  ends

if(isset($_POST["HardCodes"]))
{
$HardCodes = $_POST["HardCodes"];
return view('Employee.details')->withhad($HardCodes);  
}


//Passanger count .js starts
if(isset($_POST["getPassangercnt"]))
{
$getPassangercnt = $_POST["getPassangercnt"];
return view('Employee.details')->withpnt($getPassangercnt);  
}
//Passanger count .js ends

//Passanger request .js starts
if(isset($_POST["Reqpass"]))
{
$Reqpass = $_POST["Reqpass"];
return view('Employee.details')->withrpa($Reqpass);  
}
//Passanger request .js starts


 /*if(isset($_POST["getDetail"]))
 {

    echo '<script>alert("hiiiiiiii");</script>';

     $did = $_POST["cid"];
     echo '<script>alert("'.$did.'");</script>';

     $sel =DB::table('driverRegistration')>where('mobileNumber',$did)->select('*');
     echo '
     <div id="id02" class="modal">
  
   <div class="modal-content animate"   style="text-align:center;width:30%;background-color:;font-size:15px;">

            <h3 style="">Vehicle Details<a href="#" style="font-size:20px;float:right;margin:0px 20px;" onclick="fun2();">&#10006;</a> </h3>        
                    
   
     
      ';

      date_default_timezone_set('Asia/Kolkata');
 $daytoday = date('Y-m-d ');

 foreach($sel as $did)
 {

 $driverid = $did->d_id;
 $firstname = $did->firstName;
 $lastname =$did->lastName;
 $mobile = $did->mobileNumber;
 $vehicletype=$did->vehicleType;
 $seats = $did->seats;
 $VehicleNumber=$did->vehicleNumber;
 $RCNumber = $did->rcNumber;
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
            <div><b>DriverId:</b>'.$did.'</div> 
            <br>
                  <div><b>VehicleNumber:</b>'.$VehicleNumber.'</div> 
                  <br>
                     <div><b>RCNumber:</b>'.$RCNumber.'</div>
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

   }*/




    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       return view('Employee.second');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {



    $username = $request->input('usrname');
$pass =$request->input('psw');


if($username =='admin' && $pass == 'hapride' )
{

$request->session()->put('user',$username); 

 return redirect('/admin');


}
else
{
  echo '<script>alert("Wrong details enter");window.location="/";</script>'; 
 
}

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

print_r($id);
        

      }
    
    public function logout(Request $request)
    {
 
      
Session::flush();

return redirect('/homepage');
     
        

      }


 
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        echo $id;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
