function CheckAddUser() {

	var id = document.getElementById("id");
	var password = document.getElementById("password");
	var name = document.getElementById("name");
	var email = document.getElementById("email");
	var phonenumber = document.getElementById("phonenumber");

	// 유저 아이디 체크
	if (isNaN(Number(id.value))){
		alert("[아이디]\n아이디는 반드시 9자리 숫자로 이루어진 학번입니다.");
		id.select();
		id.focus();
		return false;
	}
	// 유저 비밀번호 체크
	if (password.value.length < 5 || password.value.length > 12) {
		alert("[비밀번호]\n최소 5자에서 최대 12자까지 입력하세요");
		password.select();
		password.focus();
		return false;
	}
	// 이름, 이메일, 전화번호 null 체크
	if(name==null){
		alert("[이름]\n이름을 반드시 입력해주세요");
		name.select();
		name.focus();
		return false;
	}

	if(email==null){
		alert("[이메일]\n이메일을 반드시 입력해주세요");
		email.select();
		email.focus();
		return false;
	}

	if(phonenumber==null){
		alert("[전화번호]\n전화번호를 반드시 입력해주세요");
		phonenumber.select();
		phonenumber.focus();
		return false;
	}

	 document.newUser.submit()
}
