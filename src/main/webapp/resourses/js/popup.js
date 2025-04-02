/**
 * 
 */


function      callProduct(id){
//	  alert(id);
	  window.location = "productDetail?productId="+id;
	  
}


function callRequest(prd_name,prd_img,prd_id) {
	  
    $("#sendInquiry").css("display", "block");
    $("#requirment_details_div").css("display", "block");
    
//     alert(prd_name);
    $('#prod_name').text(prd_name);
    $('#prod_image').attr('src',prd_img);
    $('#product_id').text(prd_id);
    var pr =  $('#product_id').text(prd_id) ;
    console.log(  pr    );
   }
   
   function set_send_enquiry(data) {
	   $('#prod_moq').val(data);
}
   function closePopup(){
	   
	   $("#prod_moq").val(""),
	     $("#inquiry_comment").val(""),
	      $("#inquiry_email").val(""),
	      $("#phone").val(""),
	      
	      
	      $("#inquiry_otp_input").val(""),
   	   $('#inquiry_otp_input_error').text("" );
	      $('#inquiry_otp_input_error').css("display", "none");
	      
	      
	      
    $("#sendInquiry").css("display", "none");
    $("#inquiry_success_div").css("display", "none");
    $("#inquiry_form_otp_confirmation_div").css("display", "none");
    
    
 
//     $("#inquiry_email").val(""),
   }
   
   
   
   
   
  
	
 
   $("#frm").submit(function (event) {
	    var formData = {
	    		productName: $("#prod_name").text(),
	    		productId: $("#product_id").text(),
	    		phone: $("#phone").val(),
// 	    		imageUrl: $("#superheroAlias").val(),
	    		
	    		quantity: $("#prod_moq").val(),
	      additionalDetail: $("#inquiry_comment").val(),
	      userEmail: $("#inquiry_email").val(),
	    };
	    console.log(formData);
//	    alert();

	    $.ajax({
	      type: "POST",
	      url: "nextstep",
	      data: formData,
	      dataType: "json",
	      encode: true,
	    }).done(function (data) {
// 	    	alert(data);
	      console.log(data);
	      
	      
	      $('#inquiry_email').val(data.email);
	      $("#requirment_details_div").css("display", "none");
	      
	      
	      $("#inquiry_form_otp_confirmation_div").css("display", "block");
	      
	    });

	    event.preventDefault();
	  });
	  
   
   function otp_validation_btn() {
		var otp = $("#inquiry_otp_input").val();
 	 	var inquiry_email =$('#inquiry_email').val();
    $.ajax({
	      type: "POST",
	      url: "confirmOtp",
	      data: { email: inquiry_email, otp: otp},
	      dataType: "json",
	      encode: true,
	      success : function(data)  {
	    	  console.log(data.check);
		      if(data.check=="true"){
	 	    	  
		    	  
		    	  $("#inquiry_form_otp_confirmation_div").css("display", "none");
			    	
			    	  $("#inquiry_success_div").css("display", "block");
			    	  
			    	  $.post('removeOtp',{ email: data.email } ).done(function(data) { 
			    		  console.log(data.msg); // data is a variable which contains a parsed JSON response to a javascript object.
			    		  
			    		});
		      }else{
		    	  
// 		      alter(false)
		      $('#inquiry_otp_input_error').css("display", "block");
		    	   $('#inquiry_otp_input_error').text("Invalid OTP" );
		    	  
		      }
	    	  
	      },error : function(e) {
				console.log("ERROR: ", e);
				
			}

   });
   
   }
   
   $("#inquiry_resend_otp").click(function(){
   	var inquiry_email =$('#inquiry_email').val();
   
    $.post('resendOtp',{ email: inquiry_email } ).done(function(data) { 
		  console.log(data.msg); // data is a variable which contains a parsed JSON response to a javascript object.
		  
		});
   });
   