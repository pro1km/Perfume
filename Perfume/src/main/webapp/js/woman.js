var bascket = [];
var items = [
	{code: 1, img : "../images/incense/rose.png", name : "Rose(장미)", description : " 딥한 장미 향 " },
	{code: 2, img : "../images/incense/daisy.png", name : "Daisy(데이지)", description : " 전형적인 데이지 향 "},
	{code: 3, img : "../images/incense/violet.png", name : "Violet(바이올렛)", description : " 향긋한 바이올렛 향 "},
	{code: 4, img : "../images/incense/cherryblossom.png", name : "Cherry blossom(체리블라썸)", description : " 달콤한 체리블라썸 향 "},
	{code: 5, img : "../images/incense/cherry.png", name : "Cherry(체리)", description : " 달달한 체리 향 "},
	{code: 6, img : "../images/incense/lemon.png", name : "Lemon(레몬)", description : " 상큼한 레몬 향 "},
	{code: 7, img : "../images/incense/orange.png", name : "Orange(오렌지)", description : " 달콤한 오렌지 향 "},
	{code: 8, img : "../images/incense/citron.png", name : "Citron(유자)", description : " 새콤한 유자 향 "},
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
	
	$('.w1_img').draggable({
		revert : true,
		helper : 'clone',
		zIndex : 100
	});
	
	var count = 1;

	$('.w1_cbox2').droppable({
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
				console.log(count);
				count++;
				
				if(count == 2){
					$(".stop_step1").prop("disabled", true);
				}else{
					$(".stop_step1").prop("disabled", false);
					$(".alert_text").css("opacity", "0");
				}
				
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
			$(".w2_circle").html("");
			$(".w2_rcbox2_name").html("");
			$(".w2_rcbox2_desc").html("");
			for(let loop of bascket) {
				let item = getItem(loop);
				
				if(item){
					$(".w2_circle").prepend('<img src="' + item.img + '" data-code=' + item.code + ' style="padding-top:100px; padding-left:40px;">');
					$(".w2_rcbox2_name").prepend('<div style="float:left; padding:10px;">' + item.name+ '</div>');
					$(".w2_rcbox2_desc").prepend('<div style="float:left; padding:10px;">' + item.description + '</div>');
				}
			}							
		}

		if(step == 4){
			
			
			$(".w3_hid").html("");
			for(let loop of bascket) {
				let item = getItem(loop);
				
				if(item){
					$(".w3_hid").append('<input type="hidden" name="incense" value="'+ item.name +'">');
					
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
			
			$(".w4_box4").on("click", function(){
				alert("향수가 제작되었습니다.");
			})
			
			$(".w4_box3").html("");
			for(let loop of bascket) {
				let item = getItem(loop);
				
				if(item){
					$(".w4_box3").prepend('<img src="' + item.img + '" data-code=' + item.code + ' style="padding-left:50px; padding-top:10px">');
				}
			}
			
			var bottle = $("input[name='bottle']:checked");

			if(bottle){
				$(".w4_box3").append("<img src="+ bottle.val() +">");
			}
		}
		
	});
	
});

function getItem(code) {
	for(let item of items )
		if(item.code === code)
			return item;
}

