var id_ch = 0;

var id = $('#info_id').val();

function reset_focus() {
   $("#info_id").focus();
   document.form.info_id.readOnly = false;
   id_ch = 0
}

function login_ok() {
   var id = $("#id").val();
   var pw = $("#pw").val();

   if (!id) {
      alert("아이디를 입력해주시길 바랍니다.");
      $("#id").focus();
   } else if (!pw) {
      alert("비밀번호 입력해주시길 바랍니다.");
      $("#pw").focus();
   } else {

      $.ajax({
         url : '/loginOk',
         data : {
            "id" : id,
            "pw" : pw
         },
         success : function(data) {

            if (data == 1) {
               alert('로그인 되었습니다.');
               document.getElementById('login_ok').submit();
               id_ch = 1;
            } else {
               alert('아이디 또는 비밀번호가 일치하지 않습니다.');
               $("#id").val('');
               $("#pw").val('');
               $("#id").focus();
            }

         }

      });
   }
}

function checkemail() {
   if (form.info_select.value == '1') {
      form.info_email2.readonly = false;
      form.info_email2.value = '';
      form.info_email2.focus();
   } else {
      form.info_email2.readonly = true;
      form.info_email2.value = form.info_select.value;
   }
}
function loginChk() {

   var id = $('#info_id').val();

   var rege = /[^a-zA-Z0-9]+|^([a-z]+|[0-9]+|[A-Z]+)$/i;

   if (id.indexOf(" ") >= 0) {
      alert("아이디에 공백을 사용할 수 없습니다.")
      return false;
   } else if (id.length < 8 || id.length > 20) {
      alert("아이디를 8~20자까지 입력해주세요.")
      return false;
   } else if(rege.test(id) == true){
      alert("영문과 숫자를 조합하여 주십시오.");
      return false;
   } else {
      $.ajax({
         url : '/loginChk',
         data : {
            "id" : id
         },
         success : function(data) {
            test = true;
            if (data == 0) {
               id_ch = 1;
               document.form.info_id.readOnly = true;
               $(".info_text2:eq(0)").html("사용가능한 아이디 입니다.").css("color","green");
            } else {
               $(".info_text2:eq(0)").html("이미 사용중인 아이디 입니다.").css("color","red");
            }

         }

      });

   }
}
function check_input() {

   var formChk = false;
   var id = $("#info_id").val();
   var pw = $("#info_pw").val();
   var pwch = $("#info_pwch").val();
   var email1 = $("#info_email1").val();
   var email2 = $("#info_email2").val();
   var regEmail = /^[a-zA-Z0-9.-]+\.[a-zA-Z]{2,3}$/;

   if (!id) {
      alert('아이디를 입력해 주세요.');
      $("#info_id").focus();
   } else if (id.indexOf(" ") >= 0) {
      alert("아이디에 공백을 사용할 수 없습니다.");
   } else if (id.length < 8 || id.length > 20) {
      alert("아이디를 8~20자까지 입력해주세요.");
      $("#info_id").focus();
   } else if (id_ch == 0) {
      alert('아이디 중복 확인을 해주세요');
      $("#info_id").focus();
   } else if (!pw) {
      alert('비밀번호를 입력해 주세요.');
      $("#info_pw").focus();
   } else if (pw.indexOf(" ") >= 0) {
      alert("비밀번호에 공백을 사용할 수 없습니다.")
      return false;
   } else if (pw.length < 8 || pw.length > 20) {
      alert("비밀번호를 8~20자까지 입력해주세요.")
      return false;
   } else if (!pwch) {
      alert('비밀번호 확인을 입력해 주세요.');
      $("#info_pwch").focus();
   } else if (pw !== pwch) {
      alert('비밀번호가 일치하지 않습니다.');
      $("#info_pwch").focus();
   } else if (!email1 || email1.indexOf(" ") >= 0) {
      alert("이메일을 입력해 주세요.");
      $("#info_email1").focus();
   } else if (!email2 || email2.indexOf(" ") >= 0) {
      alert("이메일을 입력해 주세요.");
      $("#info_email2").focus();
   } else if(email1.length > 30) {
	   alert("이메일을 30자 이내로 입력해주세요.");
	   $("#info_email1").focus();
   } else if(email2.length > 30) {
	   alert("이메일을 30자 이내로 입력해주세요.");
	   $("#info_email2").focus();
   }else if (!regEmail.test(email2) == true){
      alert("이메일주소를 확인해 주세요.");
      $("#info_email2").focus();
      
   } else {
      formChk = true;

      if (formChk) {
         alert("가입이 완료되었습니다.");
         document.getElementById('info_submit').submit();
      } else {
         alert("실패");
      }
   }
}