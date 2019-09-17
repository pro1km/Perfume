var bascket = [];
var items = [
	{code: 1, img : "../images/incense/cedarwood.png", name : "Cedarwood(시더우드)", description : " 포근한 향 "},
	{code: 2, img : "../images/incense/amber.png", name : "Amber(엠버)", description : " 깊이 있는 향 "},
	{code: 3, img : "../images/incense/farouli.png", name : "Pachuli(파츌리)", description : " 쌉쌉한 향 "},
	{code: 4, img : "../images/incense/pine.png", name : "Pine(파인)", description : " 솔잎 향 "},
	{code: 5, img : "../images/incense/eucalyptus.png", name : "Eucalyptus(유칼립투스)", description : " 맑은 향 "},
	{code: 6, img : "../images/incense/aquanot.png", name : "Aquanot(아쿠아노트)", description : " 바다 향 "},
	{code: 7, img : "../images/incense/orcmos.png", name : "Orcmos(오크모스)", description : " 신비로운 향 "},
	{code: 8, img : "../images/incense/vergamo.png", name : "Vergamot(베르가못)", description : " 상큼한 향 "},
	{code: 9, img : "../images/incense/mint.png", name : "Mint(민트)", description : " 상쾌한 향 "},
	{code: 10, img : "../images/incense/thyme.png", name : "Thyme(타임)", description : " 산뜻한 향 "},
	{code: 11, img : "../images/incense/aloe.png", name : "Aloe(알로에)", description : " 달콤한 향 "},
	{code: 12, img : "../images/incense/bamboo.png", name : "Bamboo(대나무)", description : " 자연적인 향 "}
];

$(function() {
	$('ul.tab li').click(function() {
		var activeTab = $(this).attr('data-tab');
		$('ul.tab li').removeClass('current');
		$('.tabcontent').removeClass('current');
		$(this).addClass('current');
		$('#' + activeTab).addClass('current');
	})
});

$(function(){
	
	$('.m1_img').draggable({
		revert : true,
		helper : 'clone',
		zIndex : 100
	});
	
	var count = 1;

	$('.m1_cbox2').droppable({
		drop : function(event, ui) {
			
			if(count == 3){
				alert("더 이상 향을 선택하실 수 없습니다.");
			}else if(count > 3){
				alert("더 이상 향을 선택하실 수 없습니다.");
			}else{
				var item = $(ui.draggable).clone();
				var code = parseInt($(item).attr("data-code"));
				$('<div class="drag"></div>').append(item).
				append('<br><button class="cancel" data-code=' + code + '>취소</button>').
				appendTo($(this));	
				
				bascket.push(code);
				// console.log(count);
				count++;
				
				if(count == 2){
					$(".stop_step1").prop("disabled", true);
				}else{
					$(".stop_step1").prop("disabled", false);
					$(".alert_text").css("opacity", "0");
				}
				console.log(code);
				
			}
			
			$('.cancel').off('click');
			$('.cancel').on('click', function() {
				var code = parseInt($(this).attr("data-code"));

				for(var i=0; i < bascket.length; i++) {					
					if(bascket[i] === code)
						bascket.splice(i, 1);
						$(".stop_step1").prop("disabled", true);
						$(".alert_text").css({
							"opacity": "100",
							"transition": "all 0.8s"
						});
				}

				$(this).parent('.drag').remove();
				count--;
			});
		}

	});
	

	$("#step2, #step3, #step4, #step5").css("display", "none");

	$("button").on("click", function() {
		$("#step1, #step2, #step3, #step4, #step5").css("display", "none");
		
		var step = parseInt($(this).attr("data-step"));

		if(step <= 5){
			$("#step" + step).css({
				"display": "block",
				"transition" : "all 0.9s"	
			});
			
		}
		
		if(step == 3) {
			$(".m2_circle").html("");
			$(".m2_rcbox2_name").html("");
			$(".m2_rcbox2_desc").html("");
			for(let loop of bascket) {
				let item = getItem(loop);
				
				if(item){
					$(".m2_circle").prepend('<img src="' + item.img + '" data-code=' + item.code + ' style="padding-top:100px; padding-left:40px;">');
					$(".m2_rcbox2_name").prepend('<div style="float:left; padding:10px;">' + item.name+ '</div>');
					$(".m2_rcbox2_desc").prepend('<div style="float:left; padding:10px;">' + item.description + '</div>');
				}
			}
		}

		if(step == 4){
			
			$(".m3_hid").html("");
			for(let loop of bascket) {
				let item = getItem(loop);
				
				if(item){
					$(".m3_hid").append('<input type="hidden" name="incense" value="'+ item.name +'">');
					
				}
			}
			
			$('#radio1').click(function () {
				$('.s_h').show('fade');
			});
			$('#radio2').click(function () {
				$('.s_h').hide('fade');
			});
		}
		
		if(step == 5){
			
			$(".m4_box4").on("click", function(){
				alert("향수가 제작되었습니다.");
			})

			$(".m4_box3").html("");
			for(let loop of bascket) {
				let item = getItem(loop);
				
				if(item){
					$(".m4_box3").prepend('<img src="' + item.img + '" data-code=' + item.code + ' style="padding-left:50px; padding-top:10px">');
				}
			}
			
			var bottle = $("input[name='bottle']:checked");

			if(bottle){
				$(".m4_box3").append("<img src="+ bottle.val() +">");
			}
			
		}
		
	});
	
});

function getItem(code) {
	for(let item of items )
		if(item.code === code)
			return item;
}