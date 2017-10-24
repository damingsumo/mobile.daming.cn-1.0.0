{include file="common/header.tpl" pageTitle="商品列表"}
  <div class="content3 face">
    <div class="center3" style="text-align:center;">
      <div style="margin:0;">
        <ul id="center3_1">
          <li ><img src="{staticurl action='301.png' type='img'}"></li>
        </ul>
      </div>
      <div class="camera">
      	 <a href="#">
      	 	<img src="{staticurl action='camera.gif' type='img'}">
      	 </a>
      </div>
      <ul>
        <li></li>
      </ul>
    </div>
  </div>
  <form action="face/add" id="myform" method="post">
  <input type="hidden" name="face_id" value="" id="face">
  <input type="hidden" name="complexion_id" value="" id="complexion">
  <div class="bottom3">
    <ul class="bottom3_1">
    {foreach $faces as $face}
      <li value="{$face.face_id}"><img src="{$face.show_url}"><span>{$face.name}</span></li>
     {/foreach}
    </ul>
    <ul class="none bottom3_2 ">
    {foreach $complexions as $complexion}
      <li value="{$complexion.complexion_id}"><img src="{$complexion.picture_url}"><span>{$complexion.name}</span></li>
      {/foreach}
    </ul>
  </div>
  <div class="footer3">
    <input type="submit" value="完成">
  </div>
  </form>
  
   <script>
  //   $(".center3>ul li").on("touchstart",function(e){
  //   var index_3 = $(this).index();
  //   $(this).removeClass("border3").siblings().addClass("border3");
  //   $(".center3_1 li").eq(0).addClass("block").siblings().removeClass("block");
  //   $(".center3_2 li").eq(0).addClass("block").siblings().removeClass("block");
  //   $(".center3>div ul").eq(index_3).removeClass("none").siblings().addClass("none");
  //   $(".bottom3 ul").eq(index_3).removeClass("none").siblings().addClass("none");
  // });
  // $(".bottom3_1 li:first-child").attr("class","bg3");
  // $(".bottom3_2 li:first-child").attr("class","bg3");
  // var str=$(".bottom3_1 li:first-child").val();
  // $("#face").val(str);
  // var str=$(".bottom3_2 li:first-child").val();
  // $("#complexion").val(str);
  // $(".bottom3_1 li").on("touchstart",function(e){
  //   var index_31 = $(this).index();
  //   var str=$(this).val();
  //   $("#face").val(str);
  //   $(this).addClass("bg3").siblings().removeClass("bg3");
  //   $(".center3_1 li").eq(index_31).addClass("block").siblings().removeClass("block");
  // });
  // $(".bottom3_2 li").on("touchstart",function(e){
  //   var index_31 = $(this).index();
  //   var str=$(this).val();
  //   $("#complexion").val(str);
  //   $(this).addClass("bg3").siblings().removeClass("bg3");
  //   $(".center3_2 li").eq(index_31).addClass("block").siblings().removeClass("block");
  // });
$(".center3>ul li").click(function(){
        var index_3 = $(this).index();
        $(this).removeClass("border3").siblings().addClass("border3");
        $(".center3>div ul").eq(index_3).removeClass("none").siblings().addClass("none");
        $(".bottom3 ul").eq(index_3).removeClass("none").siblings().addClass("none");

        $(".bottom3_2 li:nth-child(1)").bind("myClick", function(){
          if($(".bottom3_2 li:nth-child(1)").hasClass("bg3")){
             $(".bottom3_2").scrollLeft(5);
           } 
       });
       $('.bottom3_2 li:nth-child(1)').trigger("myClick");
        $(".bottom3_2 li:nth-child(1)").click(function(){ 
             $(".bottom3_2").scrollLeft(5);  
       });

      $(".bottom3_2 li:nth-child(2)").bind("myClick", function(){
      if($(".bottom3_2 li:nth-child(2)").hasClass("bg3")){
         $(".bottom3_2").scrollLeft(5);
       } 
       });
       $('.bottom3_2 li:nth-child(2)').trigger("myClick");
        $(".bottom3_2 li:nth-child(2)").click(function(){ 
             $(".bottom3_2").scrollLeft(5);  
       });

      $(".bottom3_2 li:nth-child(3)").bind("myClick", function(){
      if($(".bottom3_2 li:nth-child(3)").hasClass("bg3")){
         $(".bottom3_2").scrollLeft(5);
       } 
       });
       $('.bottom3_2 li:nth-child(3)').trigger("myClick");
        $(".bottom3_2 li:nth-child(3)").click(function(){ 
             $(".bottom3_2").scrollLeft(5);  
       });

      $(".bottom3_2 li:nth-child(4)").bind("myClick", function(){
      if($(".bottom3_2 li:nth-child(4)").hasClass("bg3")){
         $(".bottom3_2").scrollLeft(10);
       } 
       });
       $('.bottom3_2 li:nth-child(4)').trigger("myClick");
        $(".bottom3_2 li:nth-child(4)").click(function(){ 
             $(".bottom3_2").scrollLeft(10);  
       });

      $(".bottom3_2 li:nth-child(5)").bind("myClick", function(){
      if($(".bottom3_2 li:nth-child(5)").hasClass("bg3")){
         $(".bottom3_2").scrollLeft(420);
       } 
       });
       $('.bottom3_2 li:nth-child(5)').trigger("myClick");
        $(".bottom3_2 li:nth-child(5)").click(function(){ 
             $(".bottom3_2").scrollLeft(420);  
       });

       $(".bottom3_2 li:nth-child(6)").bind("myClick", function(){
          if($(".bottom3_2 li:nth-child(6)").hasClass("bg3")){
             $(".bottom3_2").scrollLeft(420);
           } 
       });
       $('.bottom3_2 li:nth-child(6)').trigger("myClick");
        $(".bottom3_2 li:nth-child(6)").click(function(){ 
             $(".bottom3_2").scrollLeft(420);  
       });
        
       $(".bottom3_2 li:nth-child(7)").bind("myClick", function(){
          if($(".bottom3_2 li:nth-child(7)").hasClass("bg3")){
             $(".bottom3_2").scrollLeft(420);
           } 
       });
       $('.bottom3_2 li:nth-child(7)').trigger("myClick");
       $(".bottom3_2 li:nth-child(7)").click(function(){ 
             $(".bottom3_2").scrollLeft(420); 
       });
        
       $(".bottom3_2 li:nth-child(8)").bind("myClick", function(){
          if($(".bottom3_2 li:nth-child(8)").hasClass("bg3")){
             $(".bottom3_2").scrollLeft(440);
           } 
       });
       $('.bottom3_2 li:nth-child(8)').trigger("myClick");
        $(".bottom3_2 li:nth-child(8)").click(function(){ 
             $(".bottom3_2").scrollLeft(440); 
       });
    }); 


   var str=$(".bottom3_1 li:first-child").val();
    $("#face").val(str);
    var str=$(".bottom3_2 li:first-child").val();
    $("#complexion").val(str);

  $(".bottom3_1 li:nth-child(1)").bind("myClick", function(){
    if($(".bottom3_1 li:nth-child(1)").hasClass("bg3")){
       $(".bottom3_1").scrollLeft(5);
     } 
   });
   $('.bottom3_1 li:nth-child(1)').trigger("myClick");
    $(".bottom3_1 li:nth-child(1)").click(function(){ 
         $(".bottom3_1").scrollLeft(5); 
   });

   $(".bottom3_1 li:nth-child(2)").bind("myClick", function(){
      if($(".bottom3_1 li:nth-child(2)").hasClass("bg3")){
         $(".bottom3_1").scrollLeft(5);
       } 
   });
   $('.bottom3_1 li:nth-child(2)').trigger("myClick");
    $(".bottom3_1 li:nth-child(2)").click(function(){ 
         $(".bottom3_1").scrollLeft(5); 
   });

   
  $(".bottom3_1 li:nth-child(3)").bind("myClick", function(){
    if($(".bottom3_1 li:nth-child(3)").hasClass("bg3")){
       $(".bottom3_1").scrollLeft(5);
     } 
   });
   $('.bottom3_1 li:nth-child(3)').trigger("myClick");
    $(".bottom3_1 li:nth-child(3)").click(function(){ 
         $(".bottom3_1").scrollLeft(5); 
   });

   
   $(".bottom3_1 li:nth-child(4)").bind("myClick", function(){
    if($(".bottom3_1 li:nth-child(4)").hasClass("bg3")){
       $(".bottom3_1").scrollLeft(10);
     } 
   });
   $('.bottom3_1 li:nth-child(4)').trigger("myClick");
    $(".bottom3_1 li:nth-child(4)").click(function(){ 
         $(".bottom3_1").scrollLeft(10); 
   });

   
  $(".bottom3_1 li:nth-child(5)").bind("myClick", function(){
    if($(".bottom3_1 li:nth-child(5)").hasClass("bg3")){
       $(".bottom3_1").scrollLeft(420);
     } 
   });
   $('.bottom3_1 li:nth-child(5)').trigger("myClick");
    $(".bottom3_1 li:nth-child(5)").click(function(){ 
         $(".bottom3_1").scrollLeft(420); 
   });

   $(".bottom3_1 li:nth-child(6)").bind("myClick", function(){
      if($(".bottom3_1 li:nth-child(6)").hasClass("bg3")){
         $(".bottom3_1").scrollLeft(420);
       } 
   });
   $('.bottom3_1 li:nth-child(6)').trigger("myClick");
    $(".bottom3_1 li:nth-child(6)").click(function(){ 
         $(".bottom3_1").scrollLeft(420);  
   });
    
   $(".bottom3_1 li:nth-child(7)").bind("myClick", function(){
      if($(".bottom3_1 li:nth-child(7)").hasClass("bg3")){
         $(".bottom3_1").scrollLeft(420);
       } 
   });
   $('.bottom3_1 li:nth-child(7)').trigger("myClick");
   $(".bottom3_1 li:nth-child(7)").click(function(){ 
         $(".bottom3_1").scrollLeft(420); 
   });
    
   $(".bottom3_1 li:nth-child(8)").bind("myClick", function(){
      if($(".bottom3_1 li:nth-child(8)").hasClass("bg3")){
         $(".bottom3_1").scrollLeft(440);
       } 
   });
   $('.bottom3_1 li:nth-child(8)').trigger("myClick");
    $(".bottom3_1 li:nth-child(8)").click(function(){ 
         $(".bottom3_1").scrollLeft(440); 
   });

  $(".bottom3_1 li:nth-child(9)").bind("myClick", function(){
        if($(".bottom3_1 li:nth-child(9)").hasClass("bg3")){
           $(".bottom3_1").scrollLeft(840);
         } 
  });
  $('.bottom3_1 li:nth-child(9)').trigger("myClick");
  $(".bottom3_1 li:nth-child(9)").click(function(){ 
       $(".bottom3_1").scrollLeft(840); 
  });
  
  $(".bottom3_1 li:nth-child(10)").bind("myClick", function(){
        if($(".bottom3_1 li:nth-child(10)").hasClass("bg3")){
           $(".bottom3_1").scrollLeft(840);
         } 
  });
  $('.bottom3_1 li:nth-child(10)').trigger("myClick");
  $(".bottom3_1 li:nth-child(10)").click(function(){ 
       $(".bottom3_1").scrollLeft(840); 
  });

   $(".bottom3_1 li:nth-child(11)").bind("myClick", function(){
        if($(".bottom3_1 li:nth-child(11)").hasClass("bg3")){
           $(".bottom3_1").scrollLeft(840);
         } 
  });
  $('.bottom3_1 li:nth-child(11)').trigger("myClick");
  $(".bottom3_1 li:nth-child(11)").click(function(){ 
       $(".bottom3_1").scrollLeft(840); 
  });

  $(".bottom3_1 li:nth-child(12)").bind("myClick", function(){
        if($(".bottom3_1 li:nth-child(12)").hasClass("bg3")){
           $(".bottom3_1").scrollLeft(860);
         } 
  });
  $('.bottom3_1 li:nth-child(12)').trigger("myClick");
  $(".bottom3_1 li:nth-child(12)").click(function(){ 
       $(".bottom3_1").scrollLeft(860); 
  });

   $(".bottom3_1 li:nth-child(13)").bind("myClick", function(){
        if($(".bottom3_1 li:nth-child(13)").hasClass("bg3")){
           $(".bottom3_1").scrollLeft(1260);
         } 
  });
  $('.bottom3_1 li:nth-child(13)').trigger("myClick");
  $(".bottom3_1 li:nth-child(13)").click(function(){ 
       $(".bottom3_1").scrollLeft(1260); 
  });

  $(".bottom3_1 li:nth-child(14)").bind("myClick", function(){
        if($(".bottom3_1 li:nth-child(14)").hasClass("bg3")){
           $(".bottom3_1").scrollLeft(1260);
         } 
  });
  $('.bottom3_1 li:nth-child(14)').trigger("myClick");
  $(".bottom3_1 li:nth-child(14)").click(function(){ 
       $(".bottom3_1").scrollLeft(1260); 
  });

   $(".bottom3_1 li:nth-child(15)").bind("myClick", function(){
        if($(".bottom3_1 li:nth-child(15)").hasClass("bg3")){
           $(".bottom3_1").scrollLeft(1260);
         } 
  });
  $('.bottom3_1 li:nth-child(15)').trigger("myClick");
  $(".bottom3_1 li:nth-child(15)").click(function(){ 
       $(".bottom3_1").scrollLeft(1260); 
  });

   $(".bottom3_1 li:nth-child(16)").bind("myClick", function(){
        if($(".bottom3_1 li:nth-child(16)").hasClass("bg3")){
           $(".bottom3_1").scrollLeft(1280);
         } 
  });
  $('.bottom3_1 li:nth-child(16)').trigger("myClick");
  $(".bottom3_1 li:nth-child(16)").click(function(){ 
       $(".bottom3_1").scrollLeft(1280); 
  });

   $(".bottom3_1 li:nth-child(17)").bind("myClick", function(){
        if($(".bottom3_1 li:nth-child(17)").hasClass("bg3")){
           $(".bottom3_1").scrollLeft(1680);
         } 
  });
  $('.bottom3_1 li:nth-child(17)').trigger("myClick");
  $(".bottom3_1 li:nth-child(17)").click(function(){ 
       $(".bottom3_1").scrollLeft(1680); 
  });

   $(".bottom3_1 li:nth-child(18)").bind("myClick", function(){
        if($(".bottom3_1 li:nth-child(18)").hasClass("bg3")){
           $(".bottom3_1").scrollLeft(1680);
         } 
  });
  $('.bottom3_1 li:nth-child(18)').trigger("myClick");
  $(".bottom3_1 li:nth-child(18)").click(function(){ 
       $(".bottom3_1").scrollLeft(1680); 
  });

   $(".bottom3_1 li:nth-child(19)").bind("myClick", function(){
        if($(".bottom3_1 li:nth-child(19)").hasClass("bg3")){
           $(".bottom3_1").scrollLeft(1680);
         } 
  });
  $('.bottom3_1 li:nth-child(19)').trigger("myClick");
  $(".bottom3_1 li:nth-child(19)").click(function(){ 
       $(".bottom3_1").scrollLeft(1680); 
  });

   $(".bottom3_1 li:nth-child(20)").bind("myClick", function(){
        if($(".bottom3_1 li:nth-child(20)").hasClass("bg3")){
           $(".bottom3_1").scrollLeft(1700);
         } 
  });
  $('.bottom3_1 li:nth-child(20)').trigger("myClick");
  $(".bottom3_1 li:nth-child(20)").click(function(){ 
       $(".bottom3_1").scrollLeft(1700); 
  });
   $(".bottom3_1 li").click(function(){
      var index_31 = $(this).index(); 
      var str=$(this).val();
      $(this).addClass("bg3").siblings().removeClass("bg3"); 
      $("#face").val(str); 
    }); 
   
   $(".bottom3_2 li").click(function(){
    var index_32 = $(this).index();
    var str=$(this).val();
     $("#complexion").val(str);
    $(this).addClass("bg3").siblings().removeClass("bg3"); 
  });
</script>
</body>
</html>