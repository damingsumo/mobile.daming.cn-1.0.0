$(function(){ 
 
	$(".left").on("touchstart", function(e) {
	 
	 startX = e.originalEvent.changedTouches[0].pageX;
	});

	$(".left").on("touchend", function(e) {
	 
	 moveEndX = e.originalEvent.changedTouches[0].pageX;
	 X = moveEndX - startX;
	 
	 if ( X > 0 ) {
	 	$(".img").animate({"margin-left":'0'}, "slow");
	 	$(".round1").addClass("color").siblings().removeClass("color");
	 }
	 else if ( X < 0 ) {
		$(".img").animate({"margin-left":'-100%'}, "slow");
	 	$(".round2").addClass("color").siblings().removeClass("color");
	 }
	});
	$(".round1").on("touchstart",function(e){
		$(".img").animate({"margin-left":'0'}, "slow");
	 	$(".round1").addClass("color").siblings().removeClass("color");
	 });
	$(".round2").on("touchstart",function(e){
		$(".img").animate({"margin-left":'-100%'}, "slow");
	 	$(".round2").addClass("color").siblings().removeClass("color");
	 });
	//修改身材数据
	$(".reset img").on("touchend", function(e){
		 var SelectArr = $(".size_list li select")
		  for (var i = 0; i < SelectArr.length; i++) {
		 	 SelectArr[i].options[0].selected = true;
		 	 $(".size_list li select").removeClass("active"); 
  		  }
	}); 
	$(".size_list li:first-child img").on("touchstart", function(e){ 
		$(".proper").eq(0).removeClass("none");
	}); 
	$(".size_list li:nth-child(2) img").on("touchstart", function(e){ 
		$(".proper").eq(1).removeClass("none");
	});
	$(".size_list li:nth-child(3) img").on("touchstart", function(e){ 
		$(".proper").eq(2).removeClass("none");
	});
	$(".size_list li:nth-child(4) img").on("touchstart", function(e){ 
		$(".proper").eq(3).removeClass("none");
	});
	$(".size_list li:nth-child(5) img").on("touchstart", function(e){ 
		$(".proper").eq(4).removeClass("none");
	});
	$(".size_list li:nth-child(6) img").on("touchstart", function(e){ 
		$(".proper").eq(5).removeClass("none");
	});
	$(".size_list li:nth-child(7) img").on("touchstart", function(e){ 
		$(".proper").eq(6).removeClass("none");
	});
	$(".size_list li:nth-child(8) img").on("touchstart", function(e){ 
		$(".proper").eq(7).removeClass("none");
	});
	$(".size_list li:nth-child(9) img").on("touchstart", function(e){ 
		$(".proper").eq(8).removeClass("none");
	});
	$(".size_list li:nth-child(10) img").on("touchstart", function(e){ 
		$(".proper").eq(9).removeClass("none");
	});
	$(".illustrate_button").on("touchend", function(e){ 
		 $(".proper").addClass("none");
	}); 
	$(".first").change(function() {
		if($(".first option:selected").text() !="65cm"){
			$(".first").addClass("active");
		} else{
			$(".first").removeClass("active");
		}
	});
	$(".second").change(function() {
		if($(".second option:selected").text() !="30cm"){
			$(".second").addClass("active");
		} else{
			$(".second").removeClass("active");
		}
	});
	$(".third").change(function() {
		if($(".third option:selected").text() !="52cm"){
			$(".third").addClass("active");
		} else{
			$(".third").removeClass("active");
		}
	});
	$(".forth").change(function() {
		if($(".forth option:selected").text() !="21cm"){
			$(".forth").addClass("active");
		} else{
			$(".forth").removeClass("active");
		}
	});
	$(".fifth").change(function() {
		if($(".fifth option:selected").text() !="44cm"){
			$(".fifth").addClass("active");
		} else{
			$(".fifth").removeClass("active");
		}
	});
	$(".sixth").change(function() {
		if($(".sixth option:selected").text() !="39cm"){
			$(".sixth").addClass("active");
		} else{
			$(".sixth").removeClass("active");
		}
	});
	$(".seventh").change(function() {
		if($(".seventh option:selected").text() !="74cm"){
			$(".seventh").addClass("active");
		} else{
			$(".seventh").removeClass("active");
		}
	});
	$(".eighth").change(function() {
		if($(".eighth option:selected").text() !="40cm"){
			$(".eighth").addClass("active");
		} else{
			$(".eighth").removeClass("active");
		}
	});
	$(".ninth").change(function() {
		if($(".ninth option:selected").text() !="61cm"){
			$(".ninth").addClass("active");
		} else{
			$(".first").removeClass("active");
		}
	});
	$(".tenth").change(function() {
		if($(".tenth option:selected").text() !="26cm"){
			$(".tenth").addClass("active");
		} else{
			$(".tenth").removeClass("active");
		}
	});
	// 身材特征
	$(".content5_center>div:nth-child(2)>ul>li").on("touchend", function(e){
		$(".content5_center>div:nth-child(2)").addClass("kuang5");
		$(".content5_center").addClass("kuang51");
	});
	
		$(".content5_top").on("touchend", function(e){
			$(".change5").removeClass("kuang5");
			$(".content5_center>ul>li div ul:nth-child(2) li span").removeClass("border5");
			$(".content5_center>ul>li div ul:nth-child(2) li:nth-child(3) span").addClass("border5");
			$(".content5_center").removeClass("kuang51");
		});
		$(".right5 ul:nth-child(3) li").on("touchend", function(e){
		$(this).addClass("border5").siblings().removeClass("border5");
		 
	});
		var str=$(".right5 ul:nth-child(3) li:nth-child(3)").val(); 
        $("#waist").val(str); 
        $("#belly").val(str); 
        $("#stern_type").val(str); 
        $("#hip_type").val(str); 
        $("#shoulder").val(str); 
        $("#arm").val(str); 
        $("#arm_circumference").val(str); 
        $("#hip").val(str);  
        $("#thigh").val(str);  
        $("#leg").val(str);  
        $("#body_thick").val(str);  
        $("#body_length").val(str);
	$(".right51 ul:nth-child(3) li").on("touchstart", function(e){
        var index5 = $(this).index();
		var str=$(this).val(); 
        $("#waist").val(str);
		$(".left51 ul li").eq(index5).show().siblings().hide();
	});
	$(".right52 ul:nth-child(3) li").on("touchend", function(e){
		var index5 = $(this).index();
		var str=$(this).val(); 
        $("#belly").val(str);
		$(".left52 ul li").eq(index5).show().siblings().hide();
	});
	$(".right53 ul:nth-child(3) li").on("touchend", function(e){
		var index5 = $(this).index();
		var str=$(this).val(); 
        $("#stern_type").val(str);
		$(".left53 ul li").eq(index5).show().siblings().hide();
	});
	$(".right54 ul:nth-child(3) li").on("touchend", function(e){
		var index5 = $(this).index();
		var str=$(this).val(); 
        $("#hip_type").val(str);
		$(".left54 ul li").eq(index5).show().siblings().hide();
	});
	$(".right55 ul:nth-child(3) li").on("touchend", function(e){
		var index5 = $(this).index();
		var str=$(this).val(); 
        $("#shoulder").val(str);
		$(".left55 ul li").eq(index5).show().siblings().hide();
	});
	$(".right56 ul:nth-child(3) li").on("touchend", function(e){
		var index5 = $(this).index();
		var str=$(this).val(); 
        $("#arm").val(str);
		$(".left56 ul li").eq(index5).show().siblings().hide();
	});
	$(".right57 ul:nth-child(3) li").on("touchend", function(e){
		var index5 = $(this).index();
		var str=$(this).val(); 
        $("#arm_circumference").val(str);
		$(".left57 ul li").eq(index5).show().siblings().hide();
	});
	$(".right58 ul:nth-child(3) li").on("touchend", function(e){
		var index5 = $(this).index();
		var str=$(this).val(); 
        $("#hip").val(str);
		$(".left58 ul li").eq(index5).show().siblings().hide();
	});
	$(".right59 ul:nth-child(3) li").on("touchend", function(e){
		var index5 = $(this).index();
		var str=$(this).val(); 
        $("#thigh").val(str);
		$(".left59 ul li").eq(index5).show().siblings().hide();
	});
	$(".right510 ul:nth-child(3) li").on("touchend", function(e){
		var index5 = $(this).index();
		var str=$(this).val(); 
        $("#leg").val(str);
		$(".left510 ul li").eq(index5).show().siblings().hide();
	});
	$(".right511 ul:nth-child(3) li").on("touchend", function(e){
		var index5 = $(this).index();
		var str=$(this).val(); 
        $("#body_thick").val(str);
		$(".left511 ul li").eq(index5).show().siblings().hide();
	});
	$(".right512 ul:nth-child(3) li").on("touchend", function(e){
		var index5 = $(this).index();
		var str=$(this).val(); 
        $("#body_length").val(str);
		$(".left512 ul li").eq(index5).show().siblings().hide();
	});
	$(".content5_top").on("touchstart", function(e) {
	 // e.preventDefault();
	 startX = e.originalEvent.changedTouches[0].pageX;
	});

	$(".content5_top").on("touchend", function(e) {
	 // e.preventDefault();
	 moveEndX = e.originalEvent.changedTouches[0].pageX;
	 X = moveEndX - startX;
	 
	 if ( X > 0 ) {
	 	$(".content5_top ul").animate({"margin-left":'0'}, "slow");
	 	$(".round51").addClass("color5").siblings().removeClass("color5");
	 }
	 else if ( X < 0 ) {
		$(".content5_top ul").animate({"margin-left":'-100%'}, "slow");
	 	$(".round52").addClass("color5").siblings().removeClass("color5");
	 }
	});
	$(".round51").on("touchstart",function(e){
		$(".content5_top ul").animate({"margin-left":'0'}, "slow");
	 	$(".round51").addClass("color5").siblings().removeClass("color5");
	 });
	$(".round52").on("touchstart",function(e){
		$(".content5_top ul").animate({"margin-left":'-100%'}, "slow");
	 	$(".round52").addClass("color5").siblings().removeClass("color5");
	 });
	 $('.content5_bottom ul li input[type=checkbox]').click(function() {
		   $(".content5_bottom ul li input").attr('disabled', true);
		  		 if ($(".content5_bottom ul li input:checked").length >= 3) {
		   			 $(".content5_bottom ul li input:checked").attr('disabled', false);
		   } else {
		   			 $(".content5_bottom ul li input").attr('disabled', false);
		   }
    });
   // 身高体重
	$(".content6_top").on("touchstart", function(e) {
	 // e.preventDefault();
	 startX = e.originalEvent.changedTouches[0].pageX;
	});

	$(".content6_top").on("touchend", function(e) {
	 // e.preventDefault();
	 moveEndX = e.originalEvent.changedTouches[0].pageX;
	 X = moveEndX - startX;
	 
	 if ( X > 0 ) {
	 	// $(".content6_top ul").animate({"margin-left":'0'}, "slow");
	 	$(".round61").addClass("color6").siblings().removeClass("color6");
	 }
	 else if ( X < 0 ) {
		// $(".content6_top ul").animate({"margin-left":'-100%'}, "slow");
	 	$(".round62").addClass("color6").siblings().removeClass("color6");
	 }
	});
	$(".round61").on("touchstart",function(e){
		// $(".content6_top ul").animate({"margin-left":'0'}, "slow");
	 	$(".round61").addClass("color6").siblings().removeClass("color6");
	 });
	$(".round62").on("touchstart",function(e){
		// $(".content6_top ul").animate({"margin-left":'-100%'}, "slow");
	 	$(".round62").addClass("color6").siblings().removeClass("color6");
	 });

	// $(".content6_bottom>div>div").on("touchstart",function(e){
	// 		if($(".content6_bottom>div>div>div").hasClass("margin-left6")){
	// 			$(".content6_bottom>div>div>div").removeClass("margin-left6");

	// 		} else{
	// 			$(".content6_bottom>div>div>div").addClass("margin-left6");
	// 		}
	// 	});

		$(".content6_bottom>div>div").click(function(){ 
			var str=$(".eur").val();
			if( str == 2){
				$(".content6_bottom>div>div").removeClass("height_color");
				$(".content6_bottom>div>div").addClass("height_color1");
				$(".chest").show();
				$(".chest1").hide();
				$(".eur").val(1);
				$(".content6_bottom>div>div span:first-child").removeClass("none");
				$(".content6_bottom>div>div span:last-child").addClass("none");
				 var _selected = $(".chest1").val(); 
				 if(_selected == 0){
				 	 $(".chest option[value='0']").attr("selected","selected");
				 }else if(_selected == 1){
				 	$(".chest option[value='1']").attr("selected","selected");
                 }else if(_selected == 2){
				 	$(".chest option[value='2']").attr("selected","selected");
                 }else if(_selected == 3){
				 	$(".chest option[value='3']").attr("selected","selected");
                 }else if(_selected == 4){
				 	$(".chest option[value='4']").attr("selected","selected");
                 }else if(_selected == 5){
				 	$(".chest option[value='5']").attr("selected","selected");
                 }else if(_selected == 6){
				 	$(".chest option[value='6']").attr("selected","selected");
                 }else if(_selected == 7){
				 	$(".chest option[value='7']").attr("selected","selected");
                 }else if(_selected == 8){
				 	$(".chest option[value='8']").attr("selected","selected");
                 }else if(_selected == 9){
				    $(".chest option[value='9']").attr("selected","selected");
                 } 
                 
			} else {
				$(".content6_bottom>div>div").addClass("height_color");
				$(".content6_bottom>div>div").removeClass("height_color1"); 
				$(".chest1").show();
				$(".chest").hide();
				$(".eur").val(2);
				$(".content6_bottom>div>div span:last-child").removeClass("none");
				$(".content6_bottom>div>div span:first-child").addClass("none");
				var _selected = $(".chest").val(); 
				 if(_selected == 0){
				 	 $(".chest1 option[value='0']").attr("selected","selected");
				 }else if(_selected == 1){
				 	$(".chest1 option[value='1']").attr("selected","selected");
                 }else if(_selected == 2){
				 	$(".chest1 option[value='2']").attr("selected","selected");
                 }else if(_selected == 3){
				 	$(".chest1 option[value='3']").attr("selected","selected");
                 }else if(_selected == 4){
				 	$(".chest1 option[value='4']").attr("selected","selected");
                 }else if(_selected == 5){
				 	$(".chest1 option[value='5']").attr("selected","selected");
                 }else if(_selected == 6){
				 	$(".chest1 option[value='6']").attr("selected","selected");
                 }else if(_selected == 7){
				 	$(".chest1 option[value='7']").attr("selected","selected");
                 }else if(_selected == 8){
				 	$(".chest1 option[value='8']").attr("selected","selected");
                 }else if(_selected == 9){
				 	$(".chest1 option[value='9']").attr("selected","selected");
                 } 
			};
		}); 
		$(".mess_button button").on("touchstart", function(e) {
			  $(".proper").addClass("none");
			});
				
	//商品详情
	$(".first7 ul li:nth-child(1)").on("touchstart",function(e){
			$(".first7").addClass("none").siblings().removeClass("none");
			$(".second7").removeClass("none").siblings().addClass("none");
		});
		$(".second7").on("touchstart",function(e){
			$(".second7").addClass("none").siblings().removeClass("none");
			$(".first7").removeClass("none").siblings().addClass("none");

		});
		$(".first7 ul li:nth-child(2)").on("touchstart",function(e){
			$(".first7").addClass("none").siblings().removeClass("none");
			$(".third7").removeClass("none").siblings().addClass("none");
			$(".top71 ul li img").css({"margin-left":'4rem'});
			$(".top71 ul").on("touchstart",function(){
				$(".third7").addClass("none").siblings().removeClass("none");
				$(".first7").removeClass("none").siblings().addClass("none");
				$(".top71 ul li img").css({"margin-left":'0rem'});
			});
		});
		$(".first7 ul li:nth-child(3)").on("touchstart",function(e){
			$(".first7").addClass("none").siblings().removeClass("none");
			$(".forth7").removeClass("none").siblings().addClass("none");
			$(".top71 ul li img").css({"margin-left":'4rem'});
			$(".top71 ul").on("touchstart",function(){
				$(".forth7").addClass("none").siblings().removeClass("none");
				$(".first7").removeClass("none").siblings().addClass("none");
				$(".top71 ul li img").css({"margin-left":'0rem'});
			});
		});
		$(".third71 li").on("touchstart",function(e){
			$(this).addClass("bg7").siblings().removeClass("bg7");
		});
		$(".third72 li").on("touchstart",function(e){
			$(this).addClass("bg7").siblings().removeClass("bg7");
		});
		$(".third73 li:nth-child(1)").on("touchstart",function(e){
			$(".third71").removeClass("none").siblings().addClass("none");
			$(".third72").addClass("none").siblings().removeClass("none");
			$(".third73 li:nth-child(2)").addClass("border7_left").siblings().removeClass("border7_left");
			$(".third73 li:nth-child(1)").css({"opacity":"1"});
			$(".third73 li:nth-child(2)").css({"opacity":"0.5"});
		});
		$(".third73 li:nth-child(2)").on("touchstart",function(e){
			$(".third72").removeClass("none").siblings().addClass("none");
			$(".third71").addClass("none").siblings().removeClass("none");
			$(".third73 li:nth-child(1)").addClass("border7_left").siblings().removeClass("border7_left");
			$(".third73 li:nth-child(2)").css({"opacity":"1"});
			$(".third73 li:nth-child(1)").css({"opacity":"0.5"});
		});
		$(".forth71 li").on("touchstart",function(e){
			$(".forth71 li div").remove();
			$(this).addClass("bg7").siblings().removeClass("bg7");
			$(this).append("<div><span>选择颜色</span></div>");
			$(".forth71>li>div").on("touchstart",function(){
				$(".forth77").removeClass("none").siblings().addClass("none");
				$(".forth77>div").on("touchstart",function(){
					$(".forth71").removeClass("none").siblings().addClass("none");
				});
			})
		});
		$(".forth72 li").on("touchstart",function(e){
			$(".forth72 li div").remove();
			$(this).addClass("bg7").siblings().removeClass("bg7");
			$(this).append("<div><span>选择颜色</span></div>");
			$(".forth72>li>div").on("touchstart",function(){
				$(".forth77").removeClass("none").siblings().addClass("none");
				$(".forth77>div").on("touchstart",function(){
					$(".forth72").removeClass("none").siblings().addClass("none");
				});
			})
		});
		$(".forth73 li").on("touchstart",function(e){
			$(".forth73 li div").remove();
			$(this).addClass("bg7").siblings().removeClass("bg7");
			$(this).append("<div><span>选择颜色</span></div>");
			$(".forth73>li>div").on("touchstart",function(){
				$(".forth77").removeClass("none").siblings().addClass("none");
				$(".forth77>div").on("touchstart",function(){
					$(".forth73").removeClass("none").siblings().addClass("none");
				});
			})
		});
		$(".forth74 li").on("touchstart",function(e){
			$(".forth74 li div").remove();
			$(this).addClass("bg7").siblings().removeClass("bg7");
			$(this).append("<div><span>选择颜色</span></div>");
			$(".forth74>li>div").on("touchstart",function(){
				$(".forth77").removeClass("none").siblings().addClass("none");
				$(".forth77>div").on("touchstart",function(){
					$(".forth74").removeClass("none").siblings().addClass("none");
				});
			})
		});
		$(".forth75 li").on("touchstart",function(e){
			$(".forth75 li div").remove();
			$(this).addClass("bg7").siblings().removeClass("bg7");
			$(this).append("<div><span>选择颜色</span></div>");
			$(".forth75>li>div").on("touchstart",function(){
				$(".forth77").removeClass("none").siblings().addClass("none");
				$(".forth77>div").on("touchstart",function(){
					$(".forth75").removeClass("none").siblings().addClass("none");
				});
			})
		});
		$(".forth76 li").on("touchstart",function(e){
			var index7 = $(this).index();
			$(".forth7>div>ul:eq("+index7+")").removeClass("none").siblings().addClass("none");
			$(this).removeClass("border7_left").siblings().addClass("border7_left");
			$(this).addClass("border7_top border7_bottom").siblings().removeClass("border7_top border7_bottom");
			$(".forth76 li:first-child").removeClass("border7_top");
			$(".forth76 li:last-child").removeClass("border7_bottom");
			$(this).css({"opacity":"1"}).siblings().css({"opacity":"0.5"});
		});
		$(".forth77 li").on("touchstart",function(e){
			$(this).addClass("bg7").siblings().removeClass("bg7");
		});
		$(".top71").on("touchstart", function(e) {
			 // e.preventDefault();
			 startX = e.originalEvent.changedTouches[0].pageX;
		});

		$(".top71").on("touchend", function(e) {
			 //e.preventDefault();
			 moveEndX = e.originalEvent.changedTouches[0].pageX;
			 X = moveEndX - startX;
			 
			 if ( X > 0 ) {
			 	$(".top71 ul").animate({"margin-left":'0'}, "slow");
			 	$(".right7 ul").animate({"margin-left":'0'}, "slow");
			 }
			 else if ( X < 0 ) {
				$(".top71 ul").animate({"margin-left":'-100%'}, "slow");
				$(".right7 ul").animate({"margin-left":'-100%'}, "slow");
			 }
		});
	$(".form_detil ul li").on("touchstart", function(e) {
		var index8 = $(this).index();
		$(this).addClass("size_color").siblings().removeClass("size_color"); 
		$(".base table").eq(index8).removeClass("none").siblings().addClass("none");
	});
	
	//尺码推荐
	$(".size_edit ul li:first-child").on("touchstart", function(e) {
	      $(".size_edit ul li:first-child div").addClass("edit_color");
	       $(".size_edit ul li:first-child span").addClass("edit_color");
	       $(".size_edit ul li:nth-child(2) div").removeClass("edit_color");
	       $(".size_edit ul li:nth-child(2) span").removeClass("edit_color");
	       $(".size_edit ul li:last-child div").removeClass("edit_color");
	      $(".size_edit ul li:last-child span").removeClass("edit_color");
	       $(".question1").removeClass("none");
	       $(".question2").addClass("none");
	       $(".question3").addClass("none");
	        
	});
	$(".edit_list ul li").on("touchstart", function(e) { 
		$(this).addClass("size_stylecolor").siblings().removeClass("size_stylecolor"); 
	});
	$(".list_last ul li").on("touchstart", function(e) {
		var index10 = $(this).index();
		$(".last_style div").eq(index10).removeClass("none").siblings(".last_style div").addClass("none");
         
	 }); 
	$(".last_style div .close").on("touchstart", function(e) {  
		$(".last_style div").addClass("none");  
	});  
	$(".last_style div:first-child .close").on("touchstart", function(e) { 
		$(".list_last ul li:first-child").removeClass("size_stylecolor size_style_color");
		$(".list_last ul li:first-child").html("肩部");
		$(".last_style div:first-child .close").addClass("none"); 
        $(".last_style div:first-child .style").removeClass("size_stylecolor"); 
	}); 
	$(".last_style div:nth-child(2) .close").on("touchstart", function(e) { 
		$(".list_last ul li:nth-child(2)").removeClass("size_stylecolor size_style_color"); 
		$(".list_last ul li:nth-child(2)").html("胸部");
		$(".last_style div:nth-child(2) .close").addClass("none"); 
        $(".last_style div:nth-child(2) .style").removeClass("size_stylecolor"); 
	}); 
	$(".last_style div:nth-child(3) .close").on("touchstart", function(e) { 
		$(".list_last ul li:nth-child(3)").removeClass("size_stylecolor size_style_color"); 
		$(".list_last ul li:nth-child(3)").html("胸部");
		$(".last_style div:nth-child(3) .close").addClass("none"); 
        $(".last_style div:nth-child(3) .style").removeClass("size_stylecolor"); 
	}); 
	$(".last_style div:nth-child(4) .close").on("touchstart", function(e) { 
		$(".list_last ul li:nth-child(4)").removeClass("size_stylecolor size_style_color"); 
		$(".list_last ul li:nth-child(4)").html("臀部");
		$(".last_style div:nth-child(4) .close").addClass("none"); 
        $(".last_style div:nth-child(4) .style").removeClass("size_stylecolor"); 
	}); 
	$(".last_style div:nth-child(5) .close").on("touchstart", function(e) { 
		$(".list_last ul li:nth-child(5)").removeClass("size_stylecolor size_style_color"); 
		$(".list_last ul li:nth-child(5)").html("大腿");
		$(".last_style div:nth-child(5) .close").addClass("none"); 
        $(".last_style div:nth-child(5) .style").removeClass("size_stylecolor"); 
	}); 
	$(".last_style div:nth-child(6) .close").on("touchstart", function(e) { 
		$(".list_last ul li:nth-child(6)").removeClass("size_stylecolor size_style_color"); 
		$(".list_last ul li:nth-child(6)").html("小腿");
		$(".last_style div:nth-child(6) .close").addClass("none"); 
        $(".last_style div:nth-child(6) .style").removeClass("size_stylecolor"); 
	}); 
	$(".last_style div:nth-child(7) .close").on("touchstart", function(e) { 
		$(".list_last ul li:nth-child(7)").removeClass("size_stylecolor size_style_color"); 
		$(".list_last ul li:nth-child(7)").html("袖长");
		$(".last_style div:nth-child(7) .close").addClass("none"); 
        $(".last_style div:nth-child(7) .style").removeClass("size_stylecolor"); 
	}); 
	$(".last_style div:nth-child(8) .close").on("touchstart", function(e) { 
		$(".list_last ul li:nth-child(8)").removeClass("size_stylecolor size_style_color"); 
		$(".list_last ul li:nth-child(8)").html("裤长");
		$(".last_style div:nth-child(8) .close").addClass("none"); 
        $(".last_style div:nth-child(8) .style").removeClass("size_stylecolor"); 
	});
	$(".last_style div:first-child span:nth-child(2)").on("touchstart", function(e) { 
		$(".list_last ul li:first-child").addClass("size_stylecolor");
		$(".list_last ul li:first-child").removeClass("size_style_color");
        $(".last_style div:first-child").addClass("none");
        $(".list_last ul li:first-child").html("肩部偏松"); 
        $(".last_style div:first-child span:nth-child(2)").addClass("size_stylecolor");
        $(".last_style div:first-child span:nth-child(3)").removeClass("size_stylecolor");
        $(".last_style div:first-child img:nth-child(4)").removeClass("none");
        $(".last_style div:first-child img:nth-child(5)").addClass("none");  
	});

	$(".last_style div:first-child span:nth-child(3)").on("touchstart", function(e) {
		$(".list_last ul li:first-child").addClass("size_stylecolor");
		$(".list_last ul li:first-child").removeClass("size_style_color");
        $(".last_style div:first-child").addClass("none");
        $(".list_last ul li:first-child").html("肩部偏紧"); 
         $(".last_style div:first-child span:nth-child(3)").addClass("size_stylecolor");
        $(".last_style div:first-child span:nth-child(2)").removeClass("size_stylecolor");
        $(".last_style div:first-child img:nth-child(5)").removeClass("none"); 
        $(".last_style div:first-child img:nth-child(4)").addClass("none"); 
	});
	$(".last_style div:nth-child(2) span:nth-child(2)").on("touchstart", function(e) { 
		$(".list_last ul li:nth-child(2)").addClass("size_stylecolor");
		$(".list_last ul li:nth-child(2)").removeClass("size_style_color");
        $(".last_style div:nth-child(2)").addClass("none");
        $(".list_last ul li:nth-child(2)").html("胸部偏松");
        $(".last_style div:nth-child(2) span:nth-child(2)").addClass("size_stylecolor");
        $(".last_style div:nth-child(2) span:nth-child(3)").removeClass("size_stylecolor");
        $(".last_style div:nth-child(2) img:nth-child(4)").removeClass("none");
        $(".last_style div:nth-child(2) img:nth-child(5)").addClass("none"); 
	});

	$(".last_style div:nth-child(2) span:nth-child(3)").on("touchstart", function(e) {
		$(".list_last ul li:nth-child(2)").addClass("size_stylecolor");
		$(".list_last ul li:nth-child(2)").removeClass("size_style_color");
        $(".last_style div:nth-child(2)").addClass("none");
        $(".list_last ul li:nth-child(2)").html("胸部偏紧");
        $(".last_style div:nth-child(2) span:nth-child(3)").addClass("size_stylecolor");
        $(".last_style div:nth-child(2) span:nth-child(2)").removeClass("size_stylecolor");
        $(".last_style div:nth-child(2) img:nth-child(5)").removeClass("none"); 
        $(".last_style div:nth-child(2) img:nth-child(4)").addClass("none"); 
	});
	$(".last_style div:nth-child(3) span:nth-child(2)").on("touchstart", function(e) { 
		$(".list_last ul li:nth-child(3)").addClass("size_stylecolor");
		$(".list_last ul li:nth-child(3)").removeClass("size_style_color");
        $(".last_style div:nth-child(3)").addClass("none");
        $(".list_last ul li:nth-child(3)").html("腰部偏松"); 
         $(".last_style div:nth-child(3) span:nth-child(2)").addClass("size_stylecolor");
        $(".last_style div:nth-child(3) span:nth-child(3)").removeClass("size_stylecolor");
        $(".last_style div:nth-child(3) img:nth-child(4)").removeClass("none");
        $(".last_style div:nth-child(3) img:nth-child(5)").addClass("none"); 
	});

	$(".last_style div:nth-child(3) span:nth-child(3)").on("touchstart", function(e) {
		$(".list_last ul li:nth-child(3)").addClass("size_stylecolor");
		$(".list_last ul li:nth-child(3)").removeClass("size_style_color");
        $(".last_style div:nth-child(3)").addClass("none");
        $(".list_last ul li:nth-child(3)").html("腰部偏紧");
         $(".last_style div:nth-child(3) span:nth-child(3)").addClass("size_stylecolor");
        $(".last_style div:nth-child(3) span:nth-child(2)").removeClass("size_stylecolor");
        $(".last_style div:nth-child(3) img:nth-child(5)").removeClass("none"); 
        $(".last_style div:nth-child(3) img:nth-child(4)").addClass("none");  
	});
	$(".last_style div:nth-child(4) span:nth-child(2)").on("touchstart", function(e) { 
		$(".list_last ul li:nth-child(4)").addClass("size_stylecolor");
		$(".list_last ul li:nth-child(4)").removeClass("size_style_color");
        $(".last_style div:nth-child(4)").addClass("none");
        $(".list_last ul li:nth-child(4)").html("臀部偏松");
         $(".last_style div:nth-child(4) span:nth-child(2)").addClass("size_stylecolor");
        $(".last_style div:nth-child(4) span:nth-child(3)").removeClass("size_stylecolor");
        $(".last_style div:nth-child(4) img:nth-child(4)").removeClass("none");
        $(".last_style div:nth-child(4) img:nth-child(5)").addClass("none");  
	});

	$(".last_style div:nth-child(4) span:nth-child(3)").on("touchstart", function(e) {
		$(".list_last ul li:nth-child(4)").addClass("size_stylecolor");
		$(".list_last ul li:nth-child(4)").removeClass("size_style_color");
        $(".last_style div:nth-child(4)").addClass("none");
        $(".list_last ul li:nth-child(4)").html("臀部偏紧"); 
         $(".last_style div:nth-child(4) span:nth-child(3)").addClass("size_stylecolor");
        $(".last_style div:nth-child(4) span:nth-child(2)").removeClass("size_stylecolor");
        $(".last_style div:nth-child(4) img:nth-child(5)").removeClass("none"); 
        $(".last_style div:nth-child(4) img:nth-child(4)").addClass("none"); 
	});
	$(".last_style div:nth-child(5) span:nth-child(2)").on("touchstart", function(e) { 
		$(".list_last ul li:nth-child(5)").addClass("size_stylecolor");
		$(".list_last ul li:nth-child(5)").removeClass("size_style_color");
        $(".last_style div:nth-child(5)").addClass("none");
        $(".list_last ul li:nth-child(5)").html("大腿偏松"); 
         $(".last_style div:nth-child(5) span:nth-child(2)").addClass("size_stylecolor");
        $(".last_style div:nth-child(5) span:nth-child(3)").removeClass("size_stylecolor");
        $(".last_style div:nth-child(5) img:nth-child(4)").removeClass("none");
        $(".last_style div:nth-child(5) img:nth-child(5)").addClass("none"); 
	});

	$(".last_style div:nth-child(5) span:nth-child(3)").on("touchstart", function(e) {
		$(".list_last ul li:nth-child(5)").addClass("size_stylecolor");
		$(".list_last ul li:nth-child(5)").removeClass("size_style_color");
        $(".last_style div:nth-child(5)").addClass("none");
        $(".list_last ul li:nth-child(5)").html("大腿偏紧"); 
         $(".last_style div:nth-child(5) span:nth-child(3)").addClass("size_stylecolor");
        $(".last_style div:nth-child(5) span:nth-child(2)").removeClass("size_stylecolor");
        $(".last_style div:nth-child(5) img:nth-child(5)").removeClass("none"); 
        $(".last_style div:nth-child(5) img:nth-child(4)").addClass("none"); 
	});
	$(".last_style div:nth-child(6) span:nth-child(2)").on("touchstart", function(e) { 
		$(".list_last ul li:nth-child(6)").addClass("size_stylecolor");
		$(".list_last ul li:nth-child(6)").removeClass("size_style_color");
        $(".last_style div:nth-child(6)").addClass("none");
        $(".list_last ul li:nth-child(6)").html("小腿偏松");
         $(".last_style div:nth-child(6) span:nth-child(2)").addClass("size_stylecolor");
        $(".last_style div:nth-child(6) span:nth-child(3)").removeClass("size_stylecolor");
        $(".last_style div:nth-child(6) img:nth-child(4)").removeClass("none");
        $(".last_style div:nth-child(6) img:nth-child(5)").addClass("none");  
	});

	$(".last_style div:nth-child(6) span:nth-child(3)").on("touchstart", function(e) {
		$(".list_last ul li:nth-child(6)").addClass("size_stylecolor");
		$(".list_last ul li:nth-child(6)").removeClass("size_style_color");
        $(".last_style div:nth-child(6)").addClass("none");
        $(".list_last ul li:nth-child(6)").html("小腿偏紧"); 
         $(".last_style div:nth-child(6) span:nth-child(3)").addClass("size_stylecolor");
        $(".last_style div:nth-child(6) span:nth-child(2)").removeClass("size_stylecolor");
        $(".last_style div:nth-child(6) img:nth-child(5)").removeClass("none"); 
        $(".last_style div:nth-child(6) img:nth-child(4)").addClass("none"); 
	});
	$(".last_style div:nth-child(7) span:nth-child(2)").on("touchstart", function(e) { 
		$(".list_last ul li:nth-child(7)").addClass("size_stylecolor");
		$(".list_last ul li:nth-child(7)").removeClass("size_style_color");
        $(".last_style div:nth-child(7)").addClass("none");
        $(".list_last ul li:nth-child(7)").html("袖长偏长");
         $(".last_style div:nth-child(7) span:nth-child(2)").addClass("size_stylecolor");
        $(".last_style div:nth-child(7) span:nth-child(3)").removeClass("size_stylecolor");
        $(".last_style div:nth-child(7) img:nth-child(4)").removeClass("none");
        $(".last_style div:nth-child(7) img:nth-child(5)").addClass("none");  
	});

	$(".last_style div:nth-child(7) span:nth-child(3)").on("touchstart", function(e) {
		$(".list_last ul li:nth-child(7)").addClass("size_stylecolor");
		$(".list_last ul li:nth-child(7)").removeClass("size_style_color");
        $(".last_style div:nth-child(7)").addClass("none");
        $(".list_last ul li:nth-child(7)").html("袖长偏短"); 
         $(".last_style div:nth-child(7) span:nth-child(3)").addClass("size_stylecolor");
        $(".last_style div:nth-child(7) span:nth-child(2)").removeClass("size_stylecolor");
        $(".last_style div:nth-child(7) img:nth-child(5)").removeClass("none"); 
        $(".last_style div:nth-child(7) img:nth-child(4)").addClass("none"); 
	});
	$(".last_style div:nth-child(8) span:nth-child(2)").on("touchstart", function(e) { 
		$(".list_last ul li:nth-child(8)").addClass("size_stylecolor");
		$(".list_last ul li:nth-child(8)").removeClass("size_style_color");
        $(".last_style div:nth-child(8)").addClass("none");
        $(".list_last ul li:nth-child(8)").html("裤长偏长"); 
         $(".last_style div:nth-child(8) span:nth-child(2)").addClass("size_stylecolor");
        $(".last_style div:nth-child(8) span:nth-child(3)").removeClass("size_stylecolor");
        $(".last_style div:nth-child(8) img:nth-child(4)").removeClass("none");
        $(".last_style div:nth-child(8) img:nth-child(5)").addClass("none"); 
	});
    $(".last_style div:nth-child(8) span:nth-child(3)").on("touchstart", function(e) {
		$(".list_last ul li:nth-child(8)").addClass("size_stylecolor");
		$(".list_last ul li:nth-child(8)").removeClass("size_style_color");
        $(".last_style div:nth-child(8)").addClass("none");
        $(".list_last ul li:nth-child(8)").html("裤长偏短");
         $(".last_style div:nth-child(8) span:nth-child(3)").addClass("size_stylecolor");
        $(".last_style div:nth-child(8) span:nth-child(2)").removeClass("size_stylecolor");
        $(".last_style div:nth-child(8) img:nth-child(5)").removeClass("none"); 
        $(".last_style div:nth-child(8) img:nth-child(4)").addClass("none");  
	});
	$(".size_edit ul li:nth-child(2)").on("touchstart", function(e) {
	     $(".size_edit ul li:nth-child(2) div").addClass("edit_color");
	       $(".size_edit ul li:nth-child(2)  span").addClass("edit_color");
	       $(".size_edit ul li:first-child div").removeClass("edit_color");
	       $(".size_edit ul li:first-child span").removeClass("edit_color");
	       $(".size_edit ul li:last-child div").removeClass("edit_color");
	      $(".size_edit ul li:last-child span").removeClass("edit_color");
	      $(".question2").removeClass("none");
	       $(".question1").addClass("none");
	       $(".question3").addClass("none");
	});
	$(".size_edit ul li:last-child").on("touchstart", function(e) {
	     $(".size_edit ul li:last-child div").addClass("edit_color");
	       $(".size_edit ul li:last-child  span").addClass("edit_color");
	       $(".size_edit ul li:first-child div").removeClass("edit_color");
	       $(".size_edit ul li:first-child span").removeClass("edit_color");
	       $(".size_edit ul li:nth-child(2) div").removeClass("edit_color");
	      $(".size_edit ul li:nth-child(2) span").removeClass("edit_color");
	      $(".question3").removeClass("none");
	       $(".question2").addClass("none");
	       $(".question1").addClass("none");
	});
	$(".size_style span").on("touchstart", function(e) { 
		$(this).addClass("size_stylecolor").siblings().removeClass("size_stylecolor");  
	});
	$(".size_style span:first-child").on("touchstart", function(e) { 
		$(".edit_list1").removeClass("none");
		$(".edit_number").addClass("none");
	});
	$(".size_style span:last-child").on("touchstart", function(e) { 
		$(".edit_list1").addClass("none");
		$(".edit_number").removeClass("none");
	});
	// 底部
	$(".footer ul li").on("touchstart", function(e) {
		$(this).addClass("opacity").siblings().removeClass("opacity"); 
	});
   //发行发色修改  发型合成
   //马尾辫
    var data1=['images/mawei.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    			'images/edanlian.png','images/neichen.png','images/jinse.png'];
 	$(".hairstyle li:nth-child(1)").click(function(){ 
 		base64=[]; 
        draw(function(){
        document.getElementById('imgBox').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data1.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();  
        function drawing(n){
        	 alert(1);
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data1[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,63,75,75,130);//马尾
                         drawing(n+1);//递归
                          
                   }
                     else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
        //                  ctx.fillStyle = 'rgba(255, 251, 240,0.1)';
 						 // ctx.fillRect(44,155,122,50);
 					} 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
      		// 			 ctx.fillStyle = 'rgba(255, 251, 240,0.1)';
 						 // ctx.fillRect(2,204,207,450);
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                         
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,75,100);//脸
                         drawing(n+1);//递归

                    } else {
                    	 ctx.drawImage(img,60,72,80,79);//内衬1
                         drawing(n+1);//递归 

                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });


 
 //丸子头
  var data2=['images/bozi.png','images/shenzi.png','images/xiongzhao.png',
           'images/edanlian.png','images/wanzi.png'];
 	$(".hairstyle li:nth-child(2)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('imgBox').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data2.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data2[n]; 
                img.onload=function(){
                     if(n==0){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==1){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==2){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	  ctx.drawImage(img,63,73,75,100);//脸
                         drawing(n+1);//递归
                    }  
                    else{
                    	  ctx.drawImage(img,60,53,80,120);//丸子
                         drawing(n+1);//递归
                        
                    }  
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });
    //波波头
    var data3=['images/bobo.png','images/bozi.png','images/shenzi.png',
    		   'images/xiongzhao.png','images/edanlian.png','images/199.png']; 
    $(".hairstyle li:nth-child(3)").click(function(){
    	base64=[]
        draw(function(){
        document.getElementById('imgBox').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data3.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data3[n]; 
                img.onload=function(){
                    if(n==0){
                         ctx.drawImage(img,63,75,80,110);//波波头
                         drawing(n+1);//递归
                    }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,75,100);//脸
                         drawing(n+1);//递归
                    } 
                     else {
                      	ctx.drawImage(img,57,71,88,125);//头发
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片
                base64.push(c.toDataURL("images/png",0.8));
                //alert(JSON.stringify(base64));
                fn();
            }
        }
        drawing(0);
    }
    });
    //长直发
     var data4=['images/changzhi1.png','images/bozi.png','images/shenzi.png',
    		   'images/xiongzhao.png','images/edanlian.png','images/changzhi.png']; 
    $(".hairstyle li:nth-child(4)").click(function(){
    	base64=[]
        draw(function(){
        document.getElementById('imgBox').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data4.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data4[n]; 
                img.onload=function(){
                    if(n==0){
                    	 ctx.drawImage(img,59,83,100,160);//长直
                         drawing(n+1);//递归
                        
                    }
                      else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,75,100);//脸
                         drawing(n+1);//递归
                    } 
                    else {
                     	 ctx.drawImage(img,48,72,115,170);//内衬
                         drawing(n+1);//递归
                    }  
                }
            }else{
            //保存生成作品图片
                base64.push(c.toDataURL("images/png",0.8));
                //alert(JSON.stringify(base64));
                fn();
            }
        }
        drawing(0);
    }
    });
  //超长直发
	var data5=['images/chaochangzhi.png','images/bozi.png',
	'images/shenzi.png','images/xiongzhao.png','images/edanlian.png','images/chaochangzhi1.png']; 
    $(".hairstyle li:nth-child(5)").click(function(){
    	base64=[]
        draw(function(){
        document.getElementById('imgBox').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data5.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data5[n]; 
                img.onload=function(){
                    if(n==0){
                    	 ctx.drawImage(img,71,83,83,160);//长直
                         drawing(n+1);//递归
                        
                    }
                     else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,75,100);//脸
                         drawing(n+1);//递归
                    }  
                    else {
                     	 ctx.drawImage(img,43,65,100,250);//内衬
                         drawing(n+1);//递归
                    }  
                }
            }else{
            //保存生成作品图片
                base64.push(c.toDataURL("images/png",0.8));
                //alert(JSON.stringify(base64));
                fn();
            }
        }
        drawing(0);
    }
    });
	//刘海马尾
	var data6=['images/liuhaimawei.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/edanlian.png','images/liuhaimawei1.png'];
 	$(".hairstyle li:nth-child(6)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('imgBox').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data6.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data6[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,62,80,75,130);//马尾
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,75,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,57,60,85,100);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });
	//高马尾
	var data7=['images/gaomawei.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/edanlian.png','images/neichen2.png'];
 	$(".hairstyle li:nth-child(7)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('imgBox').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data7.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data7[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,61,76,75,160);//马尾
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,75,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,63,72,72,85);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });
	//中长卷发
	var data8=['images/zhongchangjuan.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/edanlian.png','images/zhongchangjuan1.png'];
 	$(".hairstyle li:nth-child(8)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('imgBox').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data8.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data8[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58,70,80,120);//中长卷
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,75,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,51,65,105,140);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });
    
    //刘海短发
	var data9=['images/liuhaiduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/edanlian.png','images/liuhaiduanfa1.png'];
 	$(".hairstyle li:nth-child(9)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('imgBox').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data9.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data9[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58,61,80,120);//中长卷
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,75,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,59,60,85,120);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	
    //刘海长发
	var data10=['images/liuhaichangfa1.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/edanlian.png','images/liuhaichangfa.png'];
 	$(".hairstyle li:nth-child(10)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('imgBox').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data10.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data10[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58,63,80,150);//刘海长发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,75,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,49,63,110,170);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//低丸子头
	var data11=['images/diwanzitou.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/edanlian.png','images/diwanzitou1.png'];
 	$(".hairstyle li:nth-child(11)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('imgBox').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data11.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data11[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,65,60,70,95);//刘海长发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,75,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,59,59,83,100);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//超短发
	var data12=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/edanlian.png','images/chaoduanfa1.png'];
 	$(".hairstyle li:nth-child(12)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('imgBox').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data12.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data12[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58,73,84,100);//超短发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,75,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,55,60,90,86);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//超长卷发
	var data13=['images/chaochangjuanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/edanlian.png','images/chaochangjuanfa1.png'];
 	$(".hairstyle li:nth-child(13)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('imgBox').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data13.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data13[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58,70,84,170);//超长卷发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,75,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,36,60,130,230);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//短卷发
	var data14=['images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/edanlian.png','images/duanjuanfa.png'];
 	$(".hairstyle li:nth-child(14)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('imgBox').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data14.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data14[n]; 
                img.onload=function(){
                     if(n==0){
                     	    ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                          ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,63,73,75,100);//脸
                         drawing(n+1);//递归
                    } 
                     else {
                     	 ctx.drawImage(img,60,54,80,90);//短卷发
                         drawing(n+1);//递归
                    	 
                    }
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//刘海卷发
	var data15=['images/liuhaijuanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/edanlian.png','images/liuhaijuanfa1.png'];
 	$(".hairstyle li:nth-child(15)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('imgBox').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data15.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域
                var a = 58;
                img.src=data15[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,a,70,84,170);//超长卷发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,75,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,38,60,130,230);//内衬1
                         drawing(n+1);//递归
                    }
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

   //人脸五官图片合成
   //尖蛋脸
  var data16=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/jiandanlian.png','images/chaoduanfa1.png'];
 	$(".headstyle li:nth-child(1)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data16.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域
                var a = 58.5;
                img.src=data16[n]; 
                img.onload=function(){
                     if(n==0){
                     	 ctx.drawImage(img,a,72,85,100);//头发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                         ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,77,100);//尖蛋脸
                         drawing(n+1);//递归

                    }  
                     else {
                    	ctx.drawImage(img,56,60,89,86);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//圆脸
  var data17=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/yuanlian.png','images/chaoduanfa1.png'];
 	$(".headstyle li:nth-child(2)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data17.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域
                var a = 58.5;
                img.src=data17[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,a,72,85,100);//头发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,77,100);//尖蛋脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,56,60,89,86);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//鹅蛋脸
    var data18=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/edanlian.png','images/chaoduanfa1.png'];
 	$(".headstyle li:nth-child(3)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data18.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data18[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58.5,72,85,100);//头发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,77,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,56,60,89,86);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//菱形脸
    var data19=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/lingxinglian.png','images/chaoduanfa1.png'];
 	$(".headstyle li:nth-child(4)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data19.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data19[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58.5,72,85,100);//头发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,77,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,56,60,89,86);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//正方脸
    var data20=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/zhengfanglian.png','images/chaoduanfa1.png'];
 	$(".headstyle li:nth-child(5)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data20.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data20[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58,72,87,100);//头发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,77,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,56,60,91,86);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//长脸
    var data21=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/changlian.png','images/chaoduanfa1.png'];
 	$(".headstyle li:nth-child(6)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data21.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data21[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58.5,72,85,100);//头发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,77,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,56,60,89,86);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//心形脸
    var data22=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/xinxinglian.png','images/chaoduanfa1.png'];
 	$(".headstyle li:nth-child(7)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data22.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data22[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58.5,72,85,100);//头发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,77,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,56,60,89,86);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//长蛋脸
    var data23=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/changdanlian.png','images/chaoduanfa1.png'];
 	$(".headstyle li:nth-child(8)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data23.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data23[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58.5,72,85,100);//头发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,77,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,56,60,89,86);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//圆蛋脸
    var data24=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/yuandanlian.png','images/chaoduanfa1.png'];
 	$(".headstyle li:nth-child(9)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data24.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();
        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data24[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58.5,72,85,100);//头发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,77,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,56,60,89,86);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//大圆脸
    var data25=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/dayuanlian.png','images/chaoduanfa1.png'];
 	$(".headstyle li:nth-child(10)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data25.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();

        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data25[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58,72,87,100);//头发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,77,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,56,60,91,86);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });
	
	//长方脸
    var data26=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/changfanglian.png','images/chaoduanfa1.png'];
 	$(".headstyle li:nth-child(11)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data26.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();

        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data26[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58,72,87,100);//头发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,77,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,56,60,91,86);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });
	
	//小梨形脸
    var data27=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/xiaolixinglian.png','images/chaoduanfa1.png'];
 	$(".headstyle li:nth-child(12)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data27.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();

        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data27[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58,72,87,100);//头发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,77,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,56,60,91,86);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//小方脸
    var data28=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/xiaofanglian.png','images/chaoduanfa1.png'];
 	$(".headstyle li:nth-child(13)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data28.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();

        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data28[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58,72,87,100);//头发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,77,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,56,60,91,86);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//小菱形脸
    var data29=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/xiaolingxinglian.png','images/chaoduanfa1.png'];
 	$(".headstyle li:nth-child(14)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data29.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();

        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data29[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58,72,87,100);//头发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,77,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,56,60,91,86);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//长圆脸
    var data30=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/changyuanlian.png','images/chaoduanfa1.png'];
 	$(".headstyle li:nth-child(15)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data30.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();

        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data30[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58,72,87,100);//头发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,77,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,56,60,91,86);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//长菱脸
    var data31=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/changlinglian.png','images/chaoduanfa1.png'];
 	$(".headstyle li:nth-child(16)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data31.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();

        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data31[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58,72,87,100);//头发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,77,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,56,60,91,86);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//方菱脸
    var data32=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/fanglinglian.png','images/chaoduanfa1.png'];
 	$(".headstyle li:nth-child(17)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data32.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();

        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data32[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58,72,87,100);//头发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,77,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,56,60,91,86);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//长梨菱脸
    var data33=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/changlilinglian.png','images/chaoduanfa1.png'];
 	$(".headstyle li:nth-child(18)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data33.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();

        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data33[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58,72,87,100);//头发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,77,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,56,60,91,86);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//圆蛋菱脸
    var data34=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/yuandanlinglian.png','images/chaoduanfa1.png'];
 	$(".headstyle li:nth-child(19)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data34.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();

        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data34[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58,72,87,100);//头发
                         drawing(n+1);//递归
                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,77,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,56,60,91,86);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });

	//锥菱脸
    var data35=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
    'images/zhuilinglian.png','images/chaoduanfa1.png'];
 	$(".headstyle li:nth-child(20)").click(function(){
 		base64=[];
        draw(function(){
        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data35.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();

        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data35[n]; 
                img.onload=function(){
                     if(n==0){
                     	  ctx.drawImage(img,58,72,87,100);//头发
                         drawing(n+1);//递归

                   }
                   else if(n==1){
                           ctx.drawImage(img,44,155,122,50);//脖子
                         drawing(n+1);//递归
                         
                    } 
                    else if(n==2){
                    	 ctx.drawImage(img,2,204,207,450);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                    	 ctx.drawImage(img,42,194,130,200);//胸罩
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                    	  ctx.drawImage(img,63,73,77,100);//脸
                         drawing(n+1);//递归
                    }  
                     else {
                    	ctx.drawImage(img,56,60,91,86);//内衬1
                         drawing(n+1);//递归
                    } 
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    });
//改变身高体重
	$(function(){
		$(".height").change(function(){
			var h = $(".height option:selected").attr("title");
			
			$(".content6_top ul li img").height(h);
		})
	});
	$(function(){
		$(".weight").change(function(){
			var w = $(".weight option:selected").attr("title");
			$(".content6_top ul li img").width(w);
		})
	});
	$(function(){
		$(".chest").change(function(){  
			var c = $(".content6_top ul li img").height(); 
			var cc = $(".content6_top ul li img").width();
			var chest = $(".chest option:selected").val();
			if(chest < 5){
				var ch = c-2;
				var chh = cc-4;
				$(".content6_top ul li img").height(ch);
				$(".content6_top ul li img").width(chh);
 			}else{
 				var ch = c+1;
				var chh = cc+2;
				$(".content6_top ul li img").height(ch);
				$(".content6_top ul li img").width(chh);
 			}
		})
	});
	$(function(){
		$(".chest1").change(function(){
			var c1 = $(".content6_top ul li img").height(); 
			var cc1 = $(".content6_top ul li img").width();
			var chest1 = $(".chest1 option:selected").val();
			if(chest1 < 5){
				var ch1 = c1-2;
				var chh1 = cc1-4;
				$(".content6_top ul li img").height(ch1);
				$(".content6_top ul li img").width(chh1);
 			}else{
 				var ch1 = c1+2;
				var chh1 = cc1+4;
				$(".content6_top ul li img").height(ch1);
				$(".content6_top ul li img").width(chh1);
 			}
		})
	});
	$(function(){
		$(".cup").change(function(){
			var cup = $(".content6_top ul li img").height(); 
			var cupp = $(".content6_top ul li img").width();
			var cup2 = $(".cup option:selected").val();
            if(cup2 < 3){
				var cup1 = cup-2;
				var cupp1 = cupp-4;
				$(".content6_top ul li img").height(cup1);
				$(".content6_top ul li img").width(cupp1);
 			}else{
 				var cup1 = cup+2;
				var cupp1 = cupp+4;
				$(".content6_top ul li img").height(cup1);
				$(".content6_top ul li img").width(cupp1);
 			}
		})
	});
})