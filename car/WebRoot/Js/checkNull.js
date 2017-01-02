// 验证控件是否为空,必须紧跟提示非空的控件后加span标签
function checkNull(){
		var username=document.getElementById("username");
		var password=document.getElementById("password");
		var sex=document.getElementsByName("sex");
		var gender=document.getElementById("sex");
		var age=document.getElementById("age");
		var idcard=document.getElementById("idcard");
		var tel=document.getElementById("tel");
		var address=document.getElementById("address");
		var intime=document.getElementById("intime");
		if(username.value==""){
			username.nextSibling.innerHTML="用户名不能为空";
			return false;
		}
		if(password.value==""){
			username.nextSibling.innerHTML="";
			password.nextSibling.innerHTML="密码不能为空";
			return false;
		}
		var b=false;
		for(var i=0;i<sex.length;i++){
			//alert(sex[i].checked);
			b|=sex[i].checked;	
		}
		//alert(b);
		if(!b){
			//alert("hello");
			username.nextSibling.innerHTML="";
			password.nextSibling.innerHTML="";
			gender.nextSibling.nextSibling.innerHTML="性别不能不选";
			return false;
		}
		
		if(age.value==""){
			username.nextSibling.innerHTML="";
			password.nextSibling.innerHTML="";
			gender.nextSibling.nextSibling.innerHTML="";
			age.nextSibling.innerHTML="年龄不能为空";
			return false;
		}
		var ageReg=/^[1-9][0-9]{0,1}$/;
		if(!ageReg.test(age.value)){
			username.nextSibling.innerHTML="";
			password.nextSibling.innerHTML="";
			gender.nextSibling.nextSibling.innerHTML="";
			age.nextSibling.innerHTML="年龄不符";
			return false;
		}
		if(idcard.value==""){
			username.nextSibling.innerHTML="";
			password.nextSibling.innerHTML="";
			gender.nextSibling.nextSibling.innerHTML="";
			age.nextSibling.innerHTML="";
			idcard.nextSibling.innerHTML="身份证不能为空";
			return false;
		}
		var idcardReg=isIDCard2=/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;
		if(!idcardReg.test(idcard.value)){
			username.nextSibling.innerHTML="";
			password.nextSibling.innerHTML="";
			gender.nextSibling.nextSibling.innerHTML="";
			age.nextSibling.innerHTML="";
			idcard.nextSibling.innerHTML="身份证不符";
			return false;
		}    		
		if(tel.value==""){
			username.nextSibling.innerHTML="";
			password.nextSibling.innerHTML="";
			gender.nextSibling.nextSibling.innerHTML="";
			age.nextSibling.innerHTML="";
			idcard.nextSibling.innerHTML="";
			tel.nextSibling.innerHTML="电话不能为空";
			return false;
		}
		var telReg=/^1[34578]\d{9}$/;
		if(!telReg.test(tel.value)){
			username.nextSibling.innerHTML="";
			password.nextSibling.innerHTML="";
			gender.nextSibling.nextSibling.innerHTML="";
			age.nextSibling.innerHTML="";
			idcard.nextSibling.innerHTML="";
			tel.nextSibling.innerHTML="电话不符";
			return false;
		}
		if(address.value==""){
			username.nextSibling.innerHTML="";
			password.nextSibling.innerHTML="";
			gender.nextSibling.nextSibling.innerHTML="";
			age.nextSibling.innerHTML="";
			idcard.nextSibling.innerHTML="";
			tel.nextSibling.innerHTML="";
			address.nextSibling.innerHTML="地址不能为空";
			return false;
		}
		if(intime.value==""){
			username.nextSibling.innerHTML="";
			password.nextSibling.innerHTML="";
			gender.nextSibling.nextSibling.innerHTML="";
			age.nextSibling.innerHTML="";
			idcard.nextSibling.innerHTML="";
			tel.nextSibling.innerHTML="";
			address.nextSibling.innerHTML="";
			intime.nextSibling.innerHTML="入职时间不能为空";
			return false;
		}
	}
