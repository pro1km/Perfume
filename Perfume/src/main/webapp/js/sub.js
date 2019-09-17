function write_ch() {
	var wr_name = $(".wr_name").val();
	var wr_text = $(".wr_textarea").val();
	var formChk = false;

	if (!wr_name) {
		alert("향수 이름을 입력하시길 바랍니다.");
		$(".wr_name").focus();
		return false;
	} else if (!wr_text) {
		alert("향수 내용을 입력하시길 바랍니다.");
		$(".wr_textarea").focus();
		return false;
	} else if (wr_name.length > 50) {
		alert("향수이름을 50자 이내로 입력해주세요.");
		$(".wr_name").val('');
		$(".wr_name").focus();
	} else {
		formChk = true;

		if (formChk) {
			document.getElementById('write_f').submit();
			alert("리뷰가 작성되었습니다.");
		} else {
			alert("실패");
		}

	}
}

function update_ch() {
	var wr_name = $(".wr_name").val();
	var wr_text = $(".wr_textarea").val();
	var formChk = false;

	if (!wr_name) {
		alert("향수 이름을 입력하시길 바랍니다.");
		$(".wr_name").focus();
		return false;
	} else if (!wr_text) {
		alert("향수 내용을 입력하시길 바랍니다.");
		$(".wr_textarea").focus();
		return false;
	} else if (wr_name.length > 50) {
		alert("향수이름을 50자 이내로 입력해주세요.");
		$(".wr_name").val('');
		$(".wr_name").focus();
	} else {
		formChk = true;

		if (formChk) {
			document.getElementById('update_f').submit();
			alert("리뷰가 수정되었습니다.");
		} else {
			alert("실패");
		}

	}
}

function del_msg() {
	alert("게시물이 삭제되었습니다.");
	return false;
}

$(function() {
	slider.on();
});

ok = true;

var slider = {

	on : function() {

		this.timer = setTimeout(function() {
			animation('right');
		}, 5000);

	},
	off : function() {
		clearTimeout(this.timer);
	}

}

var pos = 1;

function animation(type) {

	if (ok == true) {

		ok = false;

		slider.off();

		switch (type) {

		case "left":
			pos = pos == 1 ? 4 : pos - 1;
			break;
		case "right":
			pos = pos == 4 ? 1 : pos + 1;
			break;
		default:
			pos = parseInt(type);
			break;

		}

		$(".visual-slider ul li").removeClass('active');
		$("#btns li a").removeClass('active-btn');

		$(".visual-slider").animate(
				{
					"left" : "-" + (pos - 1) * 100 + '%'
				},
				700,
				function() {
					$(".visual-slider ul li:nth-child(" + pos + ")").addClass(
							'active');
					$("#btns li:nth-child(" + pos + ") a").addClass(
							'active-btn');
				})

		slider.on();

		ok = true;

	}

}