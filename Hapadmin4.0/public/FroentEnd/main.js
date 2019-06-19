$(document).ready(function(){
//t0 get regoister button
//Count of new Reg Drivers starts
new_Reg();
function new_Reg(){
      $.ajax({

         url : "/vehicle",
      type: "POST",
         data : {new_Reg:1,'_token': $('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#newregcount").html(data);
         }
      })
   }
   //Count of new Reg Drivers ends

//Count of Accepted Drivers starts
count_bookings();
   function count_bookings(){
      $.ajax({
         url : "/vehicle",
         method : "POST",
         data : {count_Reg:1,'_token': $('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#count").html(data);
         }
      })
   }
//Count of Accepted Drivers ends

//Count of Declined Drivers starts
count_DclDriver();
   function count_DclDriver(){
      $.ajax({
         url : "/vehicle",
         method : "POST",
         data : {count_Dcl:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#dclcount").html(data);
         }
      })
   }
//Count of Declined Drivers ends


//Count of Driver Reviews starts
count_DriverReviews();
   function count_DriverReviews(){
      $.ajax({
         url : "/vehicle",
         method : "POST",
         data : {count_DriverReviews:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#count_DriverReviews").html(data);
         }
      })
   }
//Count of Driver Reviews ends


//Count of Driver Rides starts
count_NoofRide();
   function count_NoofRide(){

      $.ajax({
         url : "/vehicle",
         method : "POST",
         data : {count_NoofRide:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success : function(data){

            $("#count_NoofRide").html(data);
         }
      })
   }
//Count of Driver Rides ends

  //Count of new Registered Agents starts 
   new_AgntReg();
function new_AgntReg(){
      $.ajax({
         url : "/vehicle",
         method : "POST",
         data : {new_AgntReg:1,'_token': $('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#newAgntregcount").html(data);
         }
      })
   }
    //Count of new Registered Agents ends 

//Count of Accepted Agents starts
    count_Agntbookings();
   function count_Agntbookings(){
      $.ajax({
         url : "/vehicle",
         method : "POST",
         data : {count_AgntReg:1,'_token': $('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#count_AgntReg").html(data);
         }
      })
     
   }
//Count of Accepted Agents ends

//Count of Rejected Agents starts
count_AgntDcl();
   function count_AgntDcl(){
      $.ajax({
         url : "/vehicle",
         method : "POST",
         data : {Agntdclcount:1,'_token': $('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#Agntdclcount").html(data);
         }
      })  
   }
//Count of rejected Agents ends


//Count of agent Getins starts
count_AgntGetIns();
   function count_AgntGetIns(){
      $.ajax({
         url : "/vehicle",
         method : "POST",
         data : {count_AgntGetIns:1,'_token': $('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#count_AgntGetIns").html(data);
         }
      })
     
   }
//Count of agent Getins ends

//Count of Agent Total Get Ins starts
count_AgntGetTotalIns();
   function count_AgntGetTotalIns(){
      $.ajax({
         url : "/vehicle",
         method : "POST",
         data : {count_AgntGetTotalIns:1,'_token': $('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#count_AgntGetTotalIns").html(data);
         }
      })
   
   }
//Count of Agent Total Get Ins ends

//Count of Agent  Get outs starts
count_AgntGetouts();
   function count_AgntGetouts(){
      $.ajax({
         url : "/vehicle",
         method : "POST",
         data : {count_AgntGetouts:1,'_token': $('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#count_AgntGetouts").html(data);
         }
      })
      
   }
//Count of Agent  Get outs ends

//Count of Agent total Get outs starts
count_AgntGetTotalouts();
   function count_AgntGetTotalouts(){
      $.ajax({
         url : "/vehicle",
         method : "POST",
         data : {count_AgntGetTotalouts:1,'_token': $('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#count_AgntGetTotalouts").html(data);
         }
      })
   }
//Count of Agent total Get outs ends

//Count of Accepted supervisor starts
   count_AccSup();
   function count_AccSup(){
      $.ajax({
         url : "/vehicle",
         method : "POST",
         data : {count_AccSup:1,'_token': $('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#count_AccSup").html(data);
         }
      })
   }
//Count of Accepted supervisor ends

//Count of Rejected supervisor starts
count_DclSup();
   function count_DclSup(){
      $.ajax({
         url : "/vehicle",
         method : "POST",
         data : {count_DclSup:1,'_token': $('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#count_DclSup").html(data);
         }
      })
   }
   //Count of rejected supervisor ends

//Agent paid count starts
   Agent_paidCount();
function Agent_paidCount(){
   $.ajax({
      url : "/vehicle",
      method : "POST",
      data : {Agent_paidCount:1,'_token': $('meta[name="csrf-token"]').attr('content')},
      success : function(data){
         $("#Agent_paidCount").html(data);
      }
   })
      
   }
//Agent paid count ends

//Count of new Reg passangers starts
cnt_Passanger();
function cnt_Passanger(){  
      $.ajax({
         url : "/vehicle",
      type: "POST",
         data : {cnt_Passanger:1,'_token': $('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#cnt_Passanger").html(data);
         }
      })
   }
//Count of new Reg passangers ends

//Count of Requested passangers starts
cnt_Reqpass();
function cnt_Reqpass(){  
      $.ajax({
         url : "/vehicle",
      type: "POST",
         data : {cnt_Reqpass:1,'_token': $('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#cnt_Reqpass").html(data);
         }
      })
   }
//Count of Requested passangers ends





//Count of passangers starts
cnt_getPassanger();
function cnt_getPassanger(){  
      $.ajax({
         url : "/vehicle",
      type: "POST",
         data : {cnt_getPassanger:1,'_token': $('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#cnt_getPassanger").html(data);
         }
      })
   }
//Count of passangers ends



//Passanger count .js starts
$("body").delegate("#getPassangercnt","click",function()
  {
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {getPassangercnt:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });
//Passanger count .js ends

//Passanger request .js starts
$("body").delegate("#Reqpass","click",function()
  {
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {Reqpass:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });
//Passanger request .js ends

//Passanger Feedback .js starts
$("body").delegate("#getPassanger","click",function()
  {
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {getPassanger:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });
//Passanger Feedback .js ends

// Accepted Drivers .js starts
$("body").delegate("#getRegDrivers","click",function()
  {

 
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {getRegDriver123:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });
//Accepted Drivers .js Ends

//Rejected Drivers .js Starts
$("body").delegate("#getDclDrivers","click",function()
  { 
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {getDclDrivers:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });
//Rejected Drivers .js Ends






count_RegusSuoervisors();
   function count_RegusSuoervisors(){

      $.ajax({
         url : "vehicle.php",
         method : "POST",
         data : {count_RegusSuoervisors:1},
         success : function(data){

            $("#count_RegusSuoervisors").html(data);
         }
      })
   }



$("body").delegate("#getDrive","click",function()
  {

 
 
 $.ajax({
         url      :  "action.php",
         method   :  "POST",
         data  :  {getDriver:1},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })



  });

//get driver details

$("body").delegate("#getDrive","click",function()
  {

 
 
 $.ajax({
         url      :  "action.php",
         method   :  "POST",
         data  :  {getDriver123:1},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })



  });






//Agent Accepted .js starts here
$("body").delegate("#getRegAgents","click",function()
  {
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {getRegAgents:1,'_token': $('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });
//Agent Accepted .js Ends here



//Driver Rides .js starts
$("body").delegate("#getDriverRides","click",function()
  {
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {getDriverRides:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });
//Driver Rides .js Ends

//Agent Reject .js starts
$("body").delegate("#getAgntDclDrivers","click",function()
  {
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {getAgntDclDrivers:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });
//Agent Reject .js Ends

//Driver new Registration .js starts
$("body").delegate("#dreg","click",function()
  {
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {getDriver:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });
//Driver new Registration Ends


//get driver Reviews
$("body").delegate("#getDriverReviews","click",function()
  {
 
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {getDriverReviews:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })

  });
//driver Reviews Ends

//Agent Registration .js starts
$("body").delegate("#RegAgent","click",function()
  {

  $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {RegAgent:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });
//Agent Registration .js Ends

//Agent getAgentGetins .js starts
$("body").delegate("#getAgentGetins","click",function()
  {
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {getAgentGetins:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });
//Agent getAgentGetins .js ends



//cadcoins .js starts
$("body").delegate("#getCadcoin","click",function()
  {
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {getCadcoin:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });
//cadcoins .js ends

//Agent total getins .js starts
$("body").delegate("#getAgentTotalins","click",function()
  {
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {getAgentTotalins:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });
//Agent total getins .js ends

//Agent  getouts .js starts
$("body").delegate("#getAgentGetouts","click",function()
  {
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {getAgentGetouts:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });
//Agent  getouts .js ends

//Agent total getouts .js starts
$("body").delegate("#getAgentTotalouts","click",function()
  {
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {getAgentTotalouts:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });
//Agent total getouts .js ends

//Agent paid Money starts
$("body").delegate("#getAgentPaidMoney","click",function()
  { 
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {getAgentPaidMoney:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })

  });
//Agent paid money ends


$("body").delegate("#getSupervisor","click",function()
  { 
 $.ajax({
         url      :  "action.php",
         method   :  "POST",
         data  :  {getSupervisor:1},
         success  :  function(data){
            $(".alldisplay").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });


$("body").delegate("#getDriverDtls","click",function()
  {

 
 
 $.ajax({
         url      :  "action.php",
         method   :  "POST",
         data  :  {getDriverDtls:1},
         success  :  function(data){
            $(".alldisplay").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })



  });



$("body").delegate(".ids1","click",function(event){
      
      var did = $(this).attr('id');

   
      
         $.ajax({
         url      :  "/details",
         method   :  "POST",
         data  :  {getDetail:1,did:did,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#getpopup").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })


$("body").delegate(".driverdoc","click",function(event){
      
      var cid = $(this).attr('did');


         $.ajax({
         url      :  "/details",
         method   :  "POST",
         data  :  {getDriverDocs:1,cid:cid,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#getpopup").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })




$("body").delegate("#selsubmit","click",function(event){
      
      var nnid = $("#name").val();
      var mid =$(this).attr('mid');
 

alert(nnid);
alert(mid);
         $.ajax({
         url      :  "/details",
         method   :  "POST",
         data  :  {selsubmit:1,mid:mid,nnid:nnid,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#getpopup").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })


$("body").delegate(".ids2","click",function(event){
      
      var cid = $(this).attr('id');

      
         $.ajax({
         url      :  "/details",
         method   :  "POST",
         data  :  {getDetailReg:1,cid:cid,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#getpopup").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })

$("body").delegate(".ids3","click",function(event){
      
      var aid = $(this).attr('id');

      
         $.ajax({
         url      :  "vehicle.php",
         method   :  "POST",
         data  :  {getAgentDetail:1,aid:aid},
         success  :  function(data){
            $("#getpopup").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })

$("body").delegate(".ids4","click",function(event){
      
      var aid = $(this).attr('id');

   
         $.ajax({
         url      :  "/details",
         method   :  "POST",
         data  :  {getRegAgentDetail:1,aid:aid,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#getpopup").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })


$("body").delegate(".ids41","click",function(event){
      
      var aid = $(this).attr('id');

 
         $.ajax({
         url      :  "/details",
         method   :  "POST",
         data  :  {getRegAgentDetailnum:1,aid:aid,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#getpopup").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })

$("body").delegate(".ids5","click",function(event){
      
      var aid = $(this).attr('id');

    
         $.ajax({
         url      :  "vehicle.php",
         method   :  "POST",
         data  :  {getSuperAgentDetail:1,aid:aid},
         success  :  function(data){
            $("#getpopup").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })


$("body").delegate(".accept","click",function(event){
      
      var aid = $(this).attr('aid');
      alert(aid);
         $.ajax({
         url      :  "/details",
         method   :  "POST",
         data  :  {insertInfo:1,aid:aid,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
         
            $("#getpopup").html(data);
                   
                    regDriver(); 
            count_DclDriver();
                    new_Reg();
                    count_bookings();


            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })



$("body").delegate(".docaccept","click",function(event){
      
      var aid =$(this).attr('mid');
      // var output= $('#output').prop('checked');
      var rc = $('#rc').prop('checked');
       var li = $('#li').prop('checked');
      
 var ins =  $('#ins').prop('checked');
  var po = $('#po').prop('checked');    
     var aadhar= $('#aadhar').prop('checked');
var pan =$('#pan').prop('checked');
       
alert(pan);

         $.ajax({
         url      :  "/details",
         method   :  "POST",
         data  :  {docupdate:1,aid:aid,rc:rc,li:li,ins:ins,po:po,aadhar:aadhar,pan:pan,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
          $("#getpopup").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })


$("body").delegate("#HardCodes","click",function()
  {
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {HardCodes:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
         
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });



$("body").delegate(".Edithard","click",function(event){
      

       var aid=$(this).attr('aid');
         var nid=$(this).attr('nid');
           var vid=$(this).attr('vid');
         $.ajax({
         url      :  "/details",
         method   :  "POST",
          data: {Edithard:1,aid:aid,nid:nid,vid:vid,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
         
            $("#getpopup").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })


$("body").delegate("#hardsubmit","click",function(event){

       var aid=$('#hiddenaid').val();
       var nid = $('#name').val();
       var vid = $('#value').val();
         event.preventDefault();
            $.ajax({
                type: 'POST',
                url: '/vehicle',
                data: {hardupdate:1,aid:aid,nid:nid,vid:vid,'_token':$('meta[name="csrf-token"]').attr('content')},
                success: function(data)
                {
                  $("#getpopup").html(data);   
                  HardCodes();           
         
                }
            });
        });



$("body").delegate(".Active","click",function(event){
      
      var aid = $(this).attr('aid');
      var cid = $(this).attr('cid');
      var did = $(this).attr('did');


      
         $.ajax({
         url      :  "/vehicle",
         method   :  "POST",
         data  :  {insertInfoActive:1,aid:aid,cid:cid,did:did,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
         
            $("#getpopup").html(data);
            active();


            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })

$("body").delegate(".DriverActive","click",function(event){
      
      var aid = $(this).attr('aid');
      

   
      
         $.ajax({
         url      :  "/vehicle",
         method   :  "POST",
         data  :  {insertDriverActive:1,aid:aid,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
         
            $("#getpopup").html(data);
            Driveractive();


            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })

$("body").delegate(".AgentActive","click",function(event){
      
      var aid = $(this).attr('aid');
       $.ajax({
         url      :  "/vehicle",
         method   :  "POST",
         data  :  {insertAgentActive:1,aid:aid,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
         
            $("#getpopup").html(data);
            Agentactive();


            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })

$("body").delegate(".superActive","click",function(event){
      
      var aid = $(this).attr('aid');
      

      
         $.ajax({
         url      :  "/vehicle",
         method   :  "POST",
         data  :  {insertsuperActive:1,aid:aid,'_token': $('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
         
            $("#getpopup").html(data);
            superactive();


            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })

$("body").delegate(".InActive","click",function(event){
      
      var aid = $(this).attr('rid');
         var cid = $(this).attr('cid');
         var did = $(this).attr('did');



      
         $.ajax({
         url      :  "/vehicle",
         method   :  "POST",
         data  :  {insertInfoInActive:1,aid:aid,cid:cid,did:did,'_token': $('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
         
            $("#getpopup").html(data);

                    Inactive();
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })


$("body").delegate(".AgentInActive","click",function(event){
      
      var aid = $(this).attr('rid');
      



      
         $.ajax({
         url      :  "/vehicle",
         method   :  "POST",
         data  :  {insertAgentInActive:1,aid:aid,'_token': $('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
         
            $("#getpopup").html(data);

                    AgentInactive();
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })

$("body").delegate(".superInActive","click",function(event){
      
      var aid = $(this).attr('rid');
      
     
      

      
        
         $.ajax({
         url      :  "/vehicle",
         method   :  "POST",
         data  :  {insertsuperInActive:1,aid:aid,'_token': $('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
         
            $("#getpopup").html(data);

                   superInactive();
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })

$("body").delegate(".DriverInActive","click",function(event){
      
      var aid = $(this).attr('rid');
      



      
         $.ajax({
         url      :  "/vehicle",
         method   :  "POST",
         data  :  {insertDriverInActive:1,aid:aid,'_token': $('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
         
            $("#getpopup").html(data);

                    DriverInactive();
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })


  
  
$("body").delegate(".Agntaccept","click",function(event){
    
   var aid = $(this).attr('aid');
   var nid= $(this).attr('nid');

   
      $.ajax({
      url   : "/details",
      method  : "POST",
      data  : {insertAgntInfo:1,aid:aid,nid:nid,'_token': $('meta[name="csrf-token"]').attr('content')},
      success : function(data){
      
       count_AgntDcl();
                     count_Agntbookings();
                     count_RegusSuoervisors();
                     count_AccSup();
                  new_AgntReg();
                  regAgnt();
                    
         $("#getpopup").html(data);


         if($("body").width() < 480){
            $("body").scrollTop(683);
         }
      }
   })

})


//Registered superVisor .js starts
$("body").delegate("#Reg_Supervisors","click",function()
  {
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {Reg_Supervisorsemp:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });
//Registered superVisor .js ends

$("body").delegate("#Registrations_Supervisors","click",function()
  {
 $.ajax({
         url      :  "action.php",
         method   :  "POST",
         data  :  {Registrations_Supervisors:1},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });




//Declined supervisor starts
$("body").delegate("#Dcl_Supervisors","click",function()
  {
 
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {Dcl_Supervisors:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });
//Declined supervisor ends

$("body").delegate("#Number_Agents","click",function()
  {

 
 
 $.ajax({
         url      :  "action.php",
         method   :  "POST",
         data  :  {Number_Agents:1},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })



  });




// $("body").delegate("#submit","click",function(event){

       

//          var r= $('#username').val();
//          var p=$('#pass').val();
//          var res=$('#reason').val();
//          var id=$('#hidden').val();
//          var name=$('#hiddenname').val();

//          alert(name);
//          event.preventDefault();
//             $.ajax({
//                 type: 'POST',
//                 url: '/vehicle',
//                 data: {insertInto:1,r:r,p:p,id:id,res:res,name:name,'_token':$('meta[name="csrf-token"]').attr('content')},
//                 success: function(data)
//                 {

//                     $("#getpopup").html(data);
                   
//                     regDriver(); 
//             count_DclDriver();
//                     new_Reg();
//                     count_bookings();
         
//                 }
//             });
//         });



$("body").delegate("#rejsubmit","click",function(event){

       

         
         var res=$('#reason').val();
         var id=$('#hidden').val();
         
         event.preventDefault();
            $.ajax({
                type: 'POST',
                url: '/vehicle',
                data: {rejupdate:1,id:id,res:res,'_token':$('meta[name="csrf-token"]').attr('content')},
                success: function(data)
                {

                    $("#getpopup").html(data);
                   
                    regDriver(); 
            count_DclDriver();
                    new_Reg();
                    count_bookings();
            
                }
            });
        });



$("body").delegate("#Agntrejsubmit","click",function(event){

       

         
         var res=$('#reason').val();
         var id=$('#hidden').val();
         
         event.preventDefault();
            $.ajax({
                type: 'POST',
                url: '/vehicle',
                data: {Agntrejupdate:1,id:id,res:res,'_token':$('meta[name="csrf-token"]').attr('content')},
                success: function(data)
                {

                   
                  $("#getpopup").html(data);
                   
                    new_AgntReg();
count_Agntbookings();
count_AgntDcl();
count_AccSup();
count_DclSup();
regAgnt();     }
            });
        });



$("body").delegate("#submitAgnt","click",function(event){      
var sel= $('#sel').val();
      
         var id=$('#hidden').val();
         var sel=$('#sel').val();

         event.preventDefault();
            $.ajax({
                type: 'POST',
                url: '/vehicle',
                data: {insertIntoAgnt:1,id:id,sel:sel,'_token':$('meta[name="csrf-token"]').attr('content')},
                success: function(data)
                {
                      count_AgntDcl();
                     count_Agntbookings();
                     count_RegusSuoervisors();
                     count_AccSup();
                  new_AgntReg();
                  regAgnt();
                    $("#getpopup").html(data);
                }
            });
        });


$("body").delegate(".Payment","click",function(event){
    
   var aid = $(this).attr('id');
   // var nid= $(this).attr('nid');

   
      $.ajax({
      url   : "/details",
      method  : "POST",
      data  : {Payment:1,aid:aid,'_token': $('meta[name="csrf-token"]').attr('content')},
      success : function(data){
      
                    
         $("#getpopup").html(data);
         if($("body").width() < 480){
            $("body").scrollTop(683);
         }
      }
   })

})


$("body").delegate("#Assignsub","click",function(event){      

      
         var id=$('#hidden').val();
         var sel=$('#sel').val();

         event.preventDefault();
            $.ajax({
                type: 'POST',
                url: '/vehicle',
                data: {Assignsub:1,id:id,sel:sel,'_token':$('meta[name="csrf-token"]').attr('content')},
                success: function(data)
                {
                      
                    $("#getpopup").html(data);
                }
            });
        });



$("body").delegate(".Edit","click",function(event){
      

       var aid=$(this).attr('aid');
       var cid=$(this).attr('cid');
       var did=$(this).attr('did');
 var autooldCost=$(this).attr('AutoOldCost');
  var autonewCost=$(this).attr('AutoLatestCost');
  var carOldCost=$(this).attr('CarOldCost');
   var carnewCost=$(this).attr('CarLatestCost');
         $.ajax({
         url      :  "/details",
         method   :  "POST",
          data: {Edit:1,aid:aid,did:did,cid:cid,ao:autooldCost,an:autonewCost,co:carOldCost,cn:carnewCost,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
         
            $("#getpopup").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })



$("body").delegate("#editsubmit","click",function(event){

       var aid=$('#hiddenaid').val();
       var did=$('#hiddendid').val();
       var cid=$('#hiddencid').val();
 var autooldCost=$('#autooldCost').val();
  var autonewCost=$('#autonewCost').val();
  var carOldCost=$('#carOldCost').val();
   var carnewCost=$('#carnewCost').val();

         event.preventDefault();
            $.ajax({
                type: 'POST',
                url: '/vehicle',
                data: {updateloc:1,aid:aid,did:did,cid:cid,autooldCost:autooldCost,autonewCost:autonewCost,carOldCost:carOldCost,carnewCost:carnewCost,'_token':$('meta[name="csrf-token"]').attr('content')},
                success: function(data)
                {

                  $("#getpopup").html(data);

           
            Locationdtls()
                  
         
                }
            });
        });

$("body").delegate("#paymentsall","click",function()
  {
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {paymentsall:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });





$("body").delegate(".AssignAgnt","click",function(event){
    
   var aid = $(this).attr('aid');
   // var nid= $(this).attr('nid');

   
      $.ajax({
      url   : "/details",
      method  : "POST",
      data  : {AssignAgnt:1,aid:aid,'_token': $('meta[name="csrf-token"]').attr('content')},
      success : function(data){
      
                    
         $("#getpopup").html(data);
         if($("body").width() < 480){
            $("body").scrollTop(683);
         }
      }
   })

})

$("body").delegate("#Payed","click",function(event){

       var aid=$('#hidden').val();
       var mny = $('#mny').val();
         event.preventDefault();
            $.ajax({
                type: 'POST',
                url: '/vehicle',
                data: {payed:1,aid:aid,mny:mny,'_token':$('meta[name="csrf-token"]').attr('content')},
                success: function(data)
                {

                  $("#getpopup").html(data);
                  superactive();

                  
                }
            });
        });



// $("body").delegate("#submitAgnt","click",function(event){

      
// var sel= $('#sel').val();
//          var r= $('#username').val();
//          var p=$('#pass').val();
//          var res=$('#reason').val();
//          var id=$('#hidden').val();
//          var nid=$('#hidden123').val();

//          event.preventDefault();
//             $.ajax({
//                 type: 'POST',
//                 url: '/vehicle',
//                 data: {insertIntoAgnt:1,r:r,p:p,id:id,res:res,nid:nid,sel:sel,'_token':$('meta[name="csrf-token"]').attr('content')},
//                 success: function(data)
//                 {
//                       count_AgntDcl();
//                      count_Agntbookings();
//                      count_RegusSuoervisors();
//                      count_AccSup();
//                   new_AgntReg();
//                   regAgnt();
//                     $("#getpopup").html(data);
//                 }
//             });
//         });


$("body").delegate("#locationsub","click",function(event){
       

         var s= $('#source').val();
         var d=$('#destination').val();
         var al=$('#autoLatestCost').val();
         var ao=$('#autoOldCost').val();
         var cl= $('#cabLatestCost').val();
         var co=$('#cabOldCost').val();
         var est= $('#estimatedTime').val();
         var lat= $('#lat').val();
         var long= $('#long').val();
          var cashcoupen= $('#cashcoupen').val();
         var amnt= $('#amnt').val();
  

      
         event.preventDefault();
            $.ajax({
                type: 'POST',
                url: '/vehicle',
               data: {insertIntoLoc:1,s:s,d:d,al:al,ao:ao,cl:cl,co:co,est:est,lat:lat,long:long,cashcoupen:cashcoupen,amnt:amnt,'_token':$('meta[name="csrf-token"]').attr('content')},
               
                success: function(data)
                {
                  

 if(s=='' || d=='' || al=='' || ao =='' || cl =='' || co =='' || est =='' )
{
   alert("Please Fill All Details ");
}
else
{
Locationdtls();
$("#getpopup").html(data);
                       
            }
        }


            });


      
        });





$("body").delegate(".rej","click",function(event){
      
      var rid = $(this).attr('rid');

      
         $.ajax({
         url      :  "/details",
         method   :  "POST",
         data  :  {rej:1,rid:rid,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            
            $("#getpopup").html(data);

            regDriver();
            new_Reg();
            count_DclDriver();
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })





$("body").delegate(".Agntrej","click",function(event){
      
      var rid = $(this).attr('rid');

      
         $.ajax({
         url      :  "/details",
         method   :  "POST",
         data  :  {Agntrej:1,rid:rid,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            
            $("#getpopup").html(data);

 count_AgntDcl();
                     count_Agntbookings();
                  new_AgntReg();
                  regAgnt();
      
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
   
   })


//Routes .js starts here
$("body").delegate("#Routes","click",function()
  {
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {Routes:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });
//Routes .js ends here

//Referral .js starts here
$("body").delegate("#refferal","click",function()
  {
 $.ajax({
         url      :  "/action",
         method   :  "POST",
         data  :  {refferal:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })
  });
//Referral .js ends here

$("body").delegate("#AddRoutes","click",function()
  {
 
 
 $.ajax({
         url      :  "/details",
         method   :  "POST",
         data  :  {AddRoutes:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#getpopup").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
            }
         }
      })



  });



   function regDriver(){
      
      $.ajax({
         url : "/action",
         method : "POST",
         data : {getDriver:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#fun").html(data);
         }
      })
   }





   function regAgnt(){
      
      $.ajax({
         url : "/action",
         method : "POST",
         data : {RegAgent:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#fun").html(data);
         }
      })
   }



function active(){


$.ajax({
         url : "/action",
         method : "POST",
         data : {Routes:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#fun").html(data);
         }
      })


}


function Driveractive(){


$.ajax({
         url : "/action",
         method : "POST",
         data : {getRegDriver123:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#fun").html(data);
         }
      })


}

function Agentactive(){
   


$.ajax({
         url : "/action",
         method : "POST",
         data : {getRegAgents:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#fun").html(data);
            
         }
      })


}

function Inactive(){

$.ajax({
         url : "/action",
         method : "POST",
         data : {Routes:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#fun").html(data);
         }
      })

   
}


function superactive(){

   
$.ajax({
         url : "/action",
         method : "POST",
         data : {Reg_Supervisorsemp:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#fun").html(data);
         }
      })

   
}


function superInactive(){


$.ajax({
         url : "/action",
         method : "POST",
         data : {Reg_Supervisorsemp:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#fun").html(data);
         }
      })

   
}
function DriverInactive(){


$.ajax({
         url : "/action",
         method : "POST",
         data : {getRegDriver123:1,'_token': $('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#fun").html(data);
         }
      })

   
}

function AgentInactive(){


$.ajax({
         url : "/action",
         method : "POST",
         data : {getRegAgents:1,'_token': $('meta[name="csrf-token"]').attr('content')},
         success : function(data){
            $("#fun").html(data);
         }
      })

   
}

function HardCodes(){
      
      $.ajax({
        url      :  "/action",
         method   :  "POST",
         data  :  {gethardcode:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
         }
      }
      })
   }


   function Locationdtls(){
      
      $.ajax({
        url      :  "/action",
         method   :  "POST",
         data  :  {Routes:1,'_token':$('meta[name="csrf-token"]').attr('content')},
         success  :  function(data){
            $("#fun").html(data);
            if($("body").width() < 480){
               $("body").scrollTop(683);
         }
      }
      })
   }



});
