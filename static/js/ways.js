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
	// $(".content5_top").on("touchstart", function(e) {
	//  // e.preventDefault();
	//  startX = e.originalEvent.changedTouches[0].pageX;
	// });

	// $(".content5_top").on("touchend", function(e) {
	//  // e.preventDefault();
	//  moveEndX = e.originalEvent.changedTouches[0].pageX;
	//  X = moveEndX - startX;
	 
	//  if ( X > 0 ) {
	//  	$(".content5_top ul").animate({"margin-left":'0'}, "slow");
	//  	$(".round51").addClass("color5").siblings().removeClass("color5");
	//  }
	//  else if ( X < 0 ) {
	// 	$(".content5_top ul").animate({"margin-left":'-100%'}, "slow");
	//  	$(".round52").addClass("color5").siblings().removeClass("color5");
	//  }
	// });
	// $(".round51").on("touchstart",function(e){
	// 	$(".content5_top ul").animate({"margin-left":'0'}, "slow");
	//  	$(".round51").addClass("color5").siblings().removeClass("color5");
	//  });
	// $(".round52").on("touchstart",function(e){
	// 	$(".content5_top ul").animate({"margin-left":'-100%'}, "slow");
	//  	$(".round52").addClass("color5").siblings().removeClass("color5");
	//  });
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
		// $(".third71 li").on("touchstart",function(e){
		// 	$(this).addClass("bg7").siblings().removeClass("bg7");
		// });
		// $(".third72 li").on("touchstart",function(e){
		// 	$(this).addClass("bg7").siblings().removeClass("bg7");
		// });
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
	// 底部{staticurl action='301.png' type='img'}
	$(".footer ul li").on("touchstart", function(e) {
		$(this).addClass("opacity").siblings().removeClass("opacity"); 
	});
   //发行发色修改  发型合成
   //马尾辫
 //    var data1=['images/mawei.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
 //    			'images/edanlian.png'];
 // 	$(".hairstyle li:nth-child(1)").click(function(){ 
 // 		base64=[]; 
 //        draw(function(){
 //        document.getElementById('imgBox').innerHTML='<img src="'+base64[0]+'">';
 //        }) 
 //    function draw(fn){
 //        var c=document.createElement('canvas'),
 //        ctx=c.getContext('2d'),
 //        len=data1.length;
 //        c.width=200;
 //        c.height=230;
 //        ctx.rect(0,0,c.width,c.height);
 //        ctx.fillStyle='#f8f8f8';
 //        ctx.fill();  
 //        function drawing(n){
 //            if(n<len){
 //                var img=new Image;
 //                img.crossOrigin = 'Anonymous'; //解决跨域
	// 			img.src=data1[n]; 
 //                img.onload=function(){
 //                     if(n==0){
 //                     	  ctx.drawImage(img,63,75,75,130);//马尾
 //                         drawing(n+1);//递归
                          
 //                   }
 //                      else if(n==1){
 //                           ctx.drawImage(img,38,155,150,50);//脖子
 //                         drawing(n+1);//递归
                          
 //          		} 
 //                    else if(n==2){
 //                       ctx.drawImage(img,-10,204,250,500);//身子
 //                         drawing(n+1);//递归
 //                    } 
 //                     else if(n==3){
 //                       ctx.drawImage(img,42,194,150,200);//胸罩
 //                         drawing(n+1);//递归
                         
 //                    } 
 //                     else if(n==4){
 //                        ctx.drawImage(img,63,55,88,120);//脸
 //                         drawing(n+1);//递归
 //                    }  
 //                }
 //            }else{
 //            //保存生成作品图片 
 //             base64.push(c.toDataURL("image/png",0.8));
 //                fn();
 //            }
 //        }
 //        drawing(0);
 //    }
 //    });


 
 // //丸子头
 //  var data2=['images/bozi.png','images/shenzi.png','images/xiongzhao.png',
 //           'images/edanlian.png'];
 // 	$(".hairstyle li:nth-child(2)").click(function(){
 // 		base64=[];
 //        draw(function(){
 //        document.getElementById('imgBox').innerHTML='<img src="'+base64[0]+'">';
 //        }) 
 //    function draw(fn){
 //        var c=document.createElement('canvas'),
 //        ctx=c.getContext('2d'),
 //        len=data2.length;
 //        c.width=200;
 //        c.height=230;
 //        ctx.rect(0,0,c.width,c.height);
 //        ctx.fillStyle='#f8f8f8';
 //        ctx.fill();
 //        function drawing(n){
 //            if(n<len){
 //                var img=new Image;
 //                img.crossOrigin = 'Anonymous'; //解决跨域

 //                img.src=data2[n]; 
 //                img.onload=function(){
 //                     if(n==0){
 //                           ctx.drawImage(img,38,155,150,50);//脖子
 //                         drawing(n+1);//递归
 //                    } 
 //                    else if(n==1){
 //                    	 ctx.drawImage(img,-10,204,250,500);//身子
 //                         drawing(n+1);//递归
 //                    } 
 //                     else if(n==2){
 //                    	 ctx.drawImage(img,42,194,150,200);//胸罩
 //                         drawing(n+1);//递归
 //                    } 
 //                     else if(n==3){
 //                    	  ctx.drawImage(img,63,55,88,120);//脸
 //                         drawing(n+1);//递归
 //                    } 
 //                }
 //            }else{
 //            //保存生成作品图片 
 //             base64.push(c.toDataURL("image/png",0.8));
 //                fn();
 //            }
 //        }
 //        drawing(0);
 //    } 
	//   var canvas = document.getElementById("MyCanvas");
	//   var context = canvas.getContext("2d");
	//   var img = new Image();
	//       img.src= "images/wanzi.png";
	//   var widthL = 190;
	//   var height = 100;
	//   img.onload = function () //确保图片已经加载完毕  
	//   {  
	//       context.drawImage(img,40,0,190,100);
	//       var dataL = context.getImageData(40,0,widthL,height);
	//         for (var i=0; i<dataL.data.length; i+=4 ) {
	//           dataL.data[i] = 0;
	//           dataL.data[i+1] = 0;
	//           dataL.data[i+2] = 87;
	//       }
	//       context.putImageData(dataL,40,0);
	      
	//   } 
 //    });

   //人脸五官图片合成
   //尖蛋脸
 //  var data16=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
 //    'images/jiandanlian.png'];
 // 	$(".headstyle li:nth-child(1)").click(function(){
 // 		base64=[];
 //        draw(function(){
 //        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
 //        }) 
 //    function draw(fn){
 //        var c=document.createElement('canvas'),
 //        ctx=c.getContext('2d'),
 //        len=data16.length;
 //        c.width=200;
 //        c.height=230;
 //        ctx.rect(0,0,c.width,c.height);
 //        ctx.fillStyle='#f8f8f8';
 //        ctx.fill();
        
 //        function drawing(n){
 //            if(n<len){
 //                var img=new Image;
 //                img.crossOrigin = 'Anonymous'; //解决跨域
 //                var a = 58.5;
 //                img.src=data16[n]; 
 //                img.onload=function(){
 //                     if(n==0){
 //                     	 ctx.drawImage(img,a,72,85,100);//头发
 //                         drawing(n+1);//递归
 //                   }
 //                   else if(n==1){
 //                         ctx.drawImage(img,44,155,122,50);//脖子
 //                         drawing(n+1);//递归
 //                    } 
 //                    else if(n==2){
 //                    	 ctx.drawImage(img,2,204,207,450);//身子
 //                         drawing(n+1);//递归
 //                    } 
 //                     else if(n==3){
 //                    	 ctx.drawImage(img,42,194,130,200);//胸罩
 //                         drawing(n+1);//递归
 //                    } 
 //                     else if(n==4){
 //                    	  ctx.drawImage(img,63,73,77,100);//尖蛋脸
 //                         drawing(n+1);//递归

 //                    }   
 //                }
 //            }else{
 //            //保存生成作品图片 
 //             base64.push(c.toDataURL("image/png",0.8));
 //                fn();
 //            }
 //        }
 //        drawing(0);
 //    }
 //    });

	// //圆脸
 //  var data17=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png','images/xiongzhao.png',
 //    'images/yuanlian.png'];
 // 	$(".headstyle li:nth-child(2)").click(function(){
 // 		base64=[];
 //        draw(function(){
 //        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
 //        }) 
 //    function draw(fn){
 //        var c=document.createElement('canvas'),
 //        ctx=c.getContext('2d'),
 //        len=data17.length;
 //        c.width=200;
 //        c.height=230;
 //        ctx.rect(0,0,c.width,c.height);
 //        ctx.fillStyle='#f8f8f8';
 //        ctx.fill();
 //        function drawing(n){
 //            if(n<len){
 //                var img=new Image;
 //                img.crossOrigin = 'Anonymous'; //解决跨域
 //                var a = 58.5;
 //                img.src=data17[n]; 
 //                img.onload=function(){
 //                     if(n==0){
 //                     	  ctx.drawImage(img,a,72,85,100);//头发
 //                         drawing(n+1);//递归
 //                   }
 //                   else if(n==1){
 //                           ctx.drawImage(img,44,155,122,50);//脖子
 //                         drawing(n+1);//递归
 //                    } 
 //                    else if(n==2){
 //                    	 ctx.drawImage(img,2,204,207,450);//身子
 //                         drawing(n+1);//递归
 //                    } 
 //                     else if(n==3){
 //                    	 ctx.drawImage(img,42,194,130,200);//胸罩
 //                         drawing(n+1);//递归
 //                    } 
 //                     else if(n==4){
 //                    	  ctx.drawImage(img,63,73,77,100);//尖蛋脸
 //                         drawing(n+1);//递归
 //                    }  
 //                     else {
 //                    	ctx.drawImage(img,56,60,89,86);//内衬1
 //                         drawing(n+1);//递归
 //                    } 
 //                }
 //            }else{
 //            //保存生成作品图片 
 //             base64.push(c.toDataURL("image/png",0.8));
 //                fn();
 //            }
 //        }
 //        drawing(0);
 //    }
 //    });
//改变身高体重
	// $(function(){
	// 	$(".height").change(function(){
	// 		var h = $(".height option:selected").attr("title");
			
	// 		$(".content6_top ul li img").height(h);
	// 	})
	// });
	// $(function(){
	// 	$(".weight").change(function(){
	// 		var w = $(".weight option:selected").attr("title");
	// 		$(".content6_top ul li img").width(w);
	// 	})
	// });
	// $(function(){
	// 	$(".chest").change(function(){  
	// 		var c = $(".content6_top ul li img").height(); 
	// 		var cc = $(".content6_top ul li img").width();
	// 		var chest = $(".chest option:selected").val();
	// 		if(chest < 5){
	// 			var ch = c-2;
	// 			var chh = cc-4;
	// 			$(".content6_top ul li img").height(ch);
	// 			$(".content6_top ul li img").width(chh);
 // 			}else{
 // 				var ch = c+1;
	// 			var chh = cc+2;
	// 			$(".content6_top ul li img").height(ch);
	// 			$(".content6_top ul li img").width(chh);
 // 			}
	// 	})
	// });
	// $(function(){
	// 	$(".chest1").change(function(){
	// 		var c1 = $(".content6_top ul li img").height(); 
	// 		var cc1 = $(".content6_top ul li img").width();
	// 		var chest1 = $(".chest1 option:selected").val();
	// 		if(chest1 < 5){
	// 			var ch1 = c1-2;
	// 			var chh1 = cc1-4;
	// 			$(".content6_top ul li img").height(ch1);
	// 			$(".content6_top ul li img").width(chh1);
 // 			}else{
 // 				var ch1 = c1+2;
	// 			var chh1 = cc1+4;
	// 			$(".content6_top ul li img").height(ch1);
	// 			$(".content6_top ul li img").width(chh1);
 // 			}
	// 	})
	// });
	// $(function(){
	// 	$(".cup").change(function(){
	// 		var cup = $(".content6_top ul li img").height(); 
	// 		var cupp = $(".content6_top ul li img").width();
	// 		var cup2 = $(".cup option:selected").val();
 //            if(cup2 < 3){
	// 			var cup1 = cup-2;
	// 			var cupp1 = cupp-4;
	// 			$(".content6_top ul li img").height(cup1);
	// 			$(".content6_top ul li img").width(cupp1);
 // 			}else{
 // 				var cup1 = cup+2;
	// 			var cupp1 = cupp+4;
	// 			$(".content6_top ul li img").height(cup1);
	// 			$(".content6_top ul li img").width(cupp1);
 // 			}
	// 	})
	// });
   //人的模型
// $(document).ready(function(){
//     var data59=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png',
//     'images/zhuilinglian.png','images/chaoduanfa1.png'];
//  		base64=[];
//         draw(function(){
//        document.getElementById('ad').innerHTML='<img src="'+base64[0]+'" >';
//         }) 
//     function draw(fn){
//         var c=document.createElement('canvas'),
//         ctx=c.getContext('2d'),
//         len=data59.length;
//         c.width=200;
//         c.height=350;
//         ctx.rect(0,0,c.width,c.height);
//         ctx.fillStyle='#c9dbe7';
//         ctx.fill();

//         function drawing(n){
//             if(n<len){
//                 var img=new Image;
//                 img.crossOrigin = 'Anonymous'; //解决跨域

//                 img.src=data59[n]; 
//                 img.onload=function(){
//                      if(n==0){
//                      	  ctx.drawImage(img,63,12,38,56);//头发
//                          drawing(n+1);//递归

//                    }
//                    else if(n==1){
//                            ctx.drawImage(img,55,60,59,20);//脖子
//                          drawing(n+1);//递归
                         
//                     } 
//                     else if(n==2){
//                     	 ctx.drawImage(img,35,80,100,240);//身子
//                          drawing(n+1);//递归
//                     } 
//                      else if(n==3){
//                     	  ctx.drawImage(img,65,18,35,48.5);//脸
//                          drawing(n+1);//递归
//                     }
//                     else if(n==4){
//                     	 ctx.drawImage(img,61,15,42,35);//内衬1
//                          drawing(n+1);//递归
//                     } 
//                 }
//             }else{
//             //保存生成作品图片 
//              base64.push(c.toDataURL("images/png",0.8));
//                 fn();
//             }
//         }
//         drawing(0);
//     }
//   }); 
// $(document).ready(function(){
//  var data60=['images/chaoduanfa.png','images/bozi.png','images/shenzi.png',
//     'images/zhuilinglian.png','images/chaoduanfa1.png'];
 
//  		base64=[];
//         draw(function(){
//        document.getElementById('as').innerHTML='<img src="'+base64[0]+'" >';
//         }) 
//     function draw(fn){
//         var c=document.createElement('canvas'),
//         ctx=c.getContext('2d'),
//         len=data60.length;
//         c.width=200;
//         c.height=350;
//         ctx.rect(0,0,c.width,c.height);
//         ctx.fillStyle='#c9dbe7';
//         ctx.fill();

//         function drawing(n){
//             if(n<len){
//                 var img=new Image;
//                 img.crossOrigin = 'Anonymous'; //解决跨域

//                 img.src=data60[n]; 
//                 img.onload=function(){
//                      if(n==0){
//                      	  ctx.drawImage(img,63,12,38,56);//头发
//                          drawing(n+1);//递归

//                    }
//                    else if(n==1){
//                            ctx.drawImage(img,55,60,59,20);//脖子
//                          drawing(n+1);//递归
                         
//                     } 
//                     else if(n==2){
//                     	 ctx.drawImage(img,35,80,100,240);//身子
//                          drawing(n+1);//递归
//                     } 
//                      else if(n==3){
//                     	  ctx.drawImage(img,65,18,35,48.5);//脸
//                          drawing(n+1);//递归
//                     } 
//                      else if(n==4){
//                     	 ctx.drawImage(img,61,15,42,35);//内衬1
//                          drawing(n+1);//递归
//                     } 
//                 }
//             }else{
//             //保存生成作品图片 
//              base64.push(c.toDataURL("images/png",0.8));
//                 fn();
//             }
//         }
//         drawing(0);
//     }
//    }); 
 // $(".asdd li:nth-child(2)").trigger("myClick");
//商品列表
//  var data60=['data:image/png;base64,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',
//  			'images/lujian.png','images/changxue.png'];
//  $(".clothes_list li:nth-child(1)").bind("myClick", function(){
//  		base64=[];
//         draw(function(){
//         document.getElementById('ad').innerHTML='<img src="'+base64[0]+'" id="img">';
//         }) 
//     function draw(fn){
//         var c=document.createElement('canvas'),
//         ctx=c.getContext('2d'),
//         len=data60.length;
//         c.width=190;
//         c.height=322;
//         ctx.rect(0,0,c.width,c.height);
//         ctx.fillStyle='#c9dbe7';
//         ctx.fill();

//         function drawing(n){
//             if(n<len){
//                 var img=new Image;
//                 img.crossOrigin = 'Anonymous'; //解决跨域

//                 img.src=data60[n]; 
//                 img.onload=function(){
//                      if(n==0){
//                      	  ctx.drawImage(img,25,0,160,300);
//                          drawing(n+1);//递归

//                    }
//                    else if(n==1){
//                     	ctx.drawImage(img,54,64,86,130);
//                          drawing(n+1);//递归
//                     } 
//                     else{
//                     	ctx.drawImage(img,76,270,35,43);
//                          drawing(n+1);//递归
//                     }
//                 }
//             }else{
//             //保存生成作品图片 
//              base64.push(c.toDataURL("image/png",0.8));
//                 fn();
//             }
//         }
//         drawing(0);
//     }
//    });
// $(".clothes_list li:nth-child(1)").trigger("myClick");

// var data62=['data:image/png;base64,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',
//  			'images/changde.png','images/changxue.png'];
//  $(".clothes_list li:nth-child(2)").bind("myClick", function(){
//  		base64=[];
//         draw(function(){
//         document.getElementById('as').innerHTML='<img src="'+base64[0]+'" id="img">';
//         }) 
//     function draw(fn){
//         var c=document.createElement('canvas'),
//         ctx=c.getContext('2d'),
//         len=data62.length;
//         c.width=190;
//         c.height=322;
//         ctx.rect(0,0,c.width,c.height);
//         ctx.fillStyle='#c9dbe7';
//         ctx.fill();

//         function drawing(n){
//             if(n<len){
//                 var img=new Image;
//                 img.crossOrigin = 'Anonymous'; //解决跨域

//                 img.src=data62[n]; 
//                 img.onload=function(){
//                      if(n==0){
//                      	  ctx.drawImage(img,25,0,160,300);
//                          drawing(n+1);//递归

//                    }
//                    else if(n==1){
//                     	ctx.drawImage(img,54,64,86,130);
//                          drawing(n+1);//递归
//                     } 
//                     else{
//                     	ctx.drawImage(img,76,270,35,43);
//                          drawing(n+1);//递归
//                     }
//                 }
//             }else{
//             //保存生成作品图片 
//              base64.push(c.toDataURL("image/png",0.8));
//                 fn();
//             }
//         }
//         drawing(0);
//     }
//    });
// $('.clothes_list li:nth-child(2)').trigger("myClick");
	$(".collocation_left ul li").click(function(){
		var index = $(this).index();
		// console.log(index);
        $(".collocation_right ul").eq(index).removeClass("none").siblings().addClass("none");
	})
    
	$(".frock li").click(function(){
		//点击上装的时候，裙装和裤子消失
		var c=document.getElementById("qunzhuang");  
		var cxt=c.getContext("2d"); 
		cxt.clearRect(0,0,1000,1000); 
		var c=document.getElementById("kuzi");  
		var cxt=c.getContext("2d"); 
		cxt.clearRect(0,0,1000,1000); 
	})  
	$(".Bottoms li").click(function(){
		//点击裤子的时候，裙装和上装消失
		var c=document.getElementById("qunzhuang");  
		var cxt=c.getContext("2d"); 
		cxt.clearRect(0,0,1000,1000); 
		var c=document.getElementById("shangzhuang");  
		var cxt=c.getContext("2d"); 
		cxt.clearRect(0,0,1000,1000); 
	})
	$(".underdress li").click(function(){
		//点击裙装的时候，裤子和上装消失
		var c=document.getElementById("kuzi");  
		var cxt=c.getContext("2d"); 
		cxt.clearRect(0,0,1000,1000); 
		var c=document.getElementById("shangzhuang");  
		var cxt=c.getContext("2d"); 
		cxt.clearRect(0,0,1000,1000); 
	})
	// $(".underdress li:nth-child(1)").click(function(){
	// 	//点击长裙的时候，上装和裤子消失
	// 	var c=document.getElementById("shangzhuang");  
	// 	var cxt=c.getContext("2d"); 
	// 	cxt.clearRect(0,0,1000,1000); 
	// 	var c1=document.getElementById("kuzi");  
	// 	var cxt1=c1.getContext("2d"); 
	// 	cxt1.clearRect(0,0,1000,1000); 
	// }) 
	// $(".underdress li").click(function(){
	// 	//点击长裙的时候，上装和裤子消失
	// 	var c=document.getElementById("duanqun");  
	// 	var cxt=c.getContext("2d"); 
	// 	cxt.clearRect(0,0,1000,1000); 
	// 	var c1=document.getElementById("changqun");  
	// 	var cxt1=c1.getContext("2d"); 
	// 	cxt1.clearRect(0,0,1000,1000); 
	// 	var c2=document.getElementById("kuzi");  
	// 	var cxt2=c2.getContext("2d"); 
	// 	cxt2.clearRect(0,0,1000,1000); 
	// }) 
})