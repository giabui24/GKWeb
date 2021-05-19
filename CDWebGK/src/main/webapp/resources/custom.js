$("#gioitinh1").on('change', function() {
  var selectedOption = $("#gioitinh1 option:selected");
  var selectedValue = selectedOption.val();  // gets the selected value

	$.ajax({
		url: "/CDWebGK/danhsach/laydanhsachgioitinh",
		type: "GET",
	 	contentType: 'application/json; charset=utf-8',
		data: {
			gioitinh:selectedValue,
		},
		    dataType: 'json',
		      encoding: 'UTF-8', 
		success: function(data) {
			 $("#tablenam").find("tr").remove();
			   $("#tablenu").find("tr").remove();
	
		if(selectedValue=="Nam"){
			$("#container-all").hide();
			$("#container-nam").show();
			$("#container-nu").hide();
			for (var i = 0; i < data.length; i++) {
                             $("#tablenam").last().append("<tr><td class='name'>" + data[i].name + "</td><td class='birthday'>" + data[i].ngaysinh + "</td><td class='gender'>" + data[i].gioitinh + "</td><td class='email'>" + data[i].email + "</td></tr>");
                   
                      }
                       
                         $("#tablenam").show();
                      
            }else{
	if(selectedValue=="Nữ"){ 
		$("#container-all").hide();
			$("#container-nam").hide();
			$("#container-nu").show();
			for (var i = 0; i < data.length; i++) {

                             $("#tablenu").last().append("<tr><td class='name'>" + data[i].name + "</td><td class='birthday'>" + data[i].ngaysinh + "</td><td class='gender'>" + data[i].gioitinh + "</td><td class='email'>" + data[i].email + "</td></tr>");
                
                      }
                     
                        $("#tablenu").show();
                      
		}           
/*			if(selectedValue=="Nam"){
	$("#container-all").hide();
	$("#container-nu").hide();
	$("#container-nam").show();	
}else{
	if(selectedValue=="Nữ"){
		$("#container-all").hide();
	$("#container-nam").hide();
	$("#container-nu").show();	
	}
	
}*/
		}
		}
		})
});
 function Validate() {
           
               var rePass = $("#matkhau").val();
               var pass = $("#rematkhau").val();
               if (rePass != pass){
	$("#passcheck").html("<p>"+"Mật khẩu không trùng khớp"+"</p>").css('color', 'red').css("margin-left", "2%");;
	return false;
}
            
          
       };