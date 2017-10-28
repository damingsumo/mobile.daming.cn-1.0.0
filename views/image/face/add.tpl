{include file="common/header.tpl" pageTitle="商品列表"}
  <div class="content3 face">
    <div class="center3" style="text-align:center;">
      <div style="margin:0;">
        <ul id="center3_1">
          <li id="addface"><img src="{staticurl action='301.png' type='img'}"></li>
        </ul>
      </div>
      <ul>
        <li></li>
      </ul>
    </div>
  </div>
  <form action="/user/face/add" id="myform" method="post">
  <input type="hidden" name="face_id" value="" id="face">
  <input type="hidden" name="complexion_id" value="" id="complexion">
  <div class="bottom3">
    <ul class="bottom3_1">
    {foreach $faces as $face}
      <a onclick="face({$face.face_id})"><li value="{$face.face_id}"><img src="{$face.show_url}"><span>{$face.name}</span></li></a>
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
<!-- <input type="hidden" value="{$userFace.synthesis_url}" id="face_synthesis_url">
  <input type="hidden" value="{$userHairStyle.behide_synthesis_url}" id="behide_synthesis_url">
  <input type="hidden" value="{$userHairStyle.front_synthesis_url}" id="front_synthesis_url">
  <input type="hidden" value="{$userHairStyle.behide_ordinate}" id="behide_ordinate">
  <input type="hidden" value="{$userHairStyle.behide_abscissa}" id="behide_abscissa">
  <input type="hidden" value="{$userHairStyle.behide_length}" id="behide_length">
  <input type="hidden" value="{$userHairStyle.behide_width}" id="behide_width">
  <input type="hidden" value="{$userHairStyle.front_ordinate}" id="front_ordinate">
  <input type="hidden" value="{$userHairStyle.front_abscissa}" id="front_abscissa">
  <input type="hidden" value="{$userHairStyle.front_length}" id="front_length">
  <input type="hidden" value="{$userHairStyle.front_width}" id="front_width"> -->
  </form>
    {literal}
   <script>
   $(document).ready(function(){
      var facestyle = $("#face_synthesis_url").val();
          var behidestyle = $("#behide_synthesis_url").val();
          var frontstyle= $("#front_synthesis_url").val();
          var data2=[behidestyle,'/static/images/bozi.png','/static/images/shenzi.png','/static/images/xiongzhao.png',
          facestyle,frontstyle];
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
        var n = 0;
        function drawing(n){
          
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域
                 var beo =$("#behide_ordinate").val();
                 var bea = $("#behide_abscissa").val();
                 var bel = $("#behide_length").val();
                var bew = $("#behide_width").val();
                 var fro = $("#front_ordinate").val();
                 var fra =  $("#front_abscissa").val();
                 var frl = $("#front_length").val();
                 var frw = $("#front_width").val();
                img.src=data2[n]; 
                img.onload=function(){
                    if(n==0){
                        ctx.drawImage(img,beo,bea,bel,bew);//马尾
                         drawing(n+1);//递归
                         
                          
                   }
                     else if(n==1){
                           ctx.drawImage(img,38,155,150,50);//脖子
                         drawing(n+1);//递归
                          
          } 
                    else if(n==2){
                       ctx.drawImage(img,-10,204,250,500);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                       ctx.drawImage(img,42,194,150,200);//胸罩
                         drawing(n+1);//递归
                         
                    } 
                     else if(n==4){
                        ctx.drawImage(img,63,55,88,120);//脸
                         drawing(n+1);//递归

                    } else {
                       ctx.drawImage(img,fro,fra,frl,frw);//内衬1
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
      // $(this).addClass("bg3").siblings().removeClass("bg3"); 
      $("#face").val(str); 
    }); 
   
   $(".bottom3_2 li").click(function(){
    var index_32 = $(this).index();
    var str=$(this).val();
     $("#complexion").val(str);
    // $(this).addClass("bg3").siblings().removeClass("bg3"); 
  });
$(".bottom3_1 a").click(function(){
        $(this).addClass("bg3").siblings().removeClass("bg3"); 
    });

   function face(face_id) {
    $.ajax({
      type: "POST",
      url: 'face/ajaxGetFace',
      data: {face_id:face_id},
      datatype:'json',
      success: function(data) {
        var member = eval('('+data+')');
        if(member.status == 200) {
           var behidestyle =member.data['hairstyle']['behide_synthesis_url'];
          var facestyle =member.data['face']['synthesis_url'];
          var frontstyle=member.data['hairstyle']['front_synthesis_url'];
          var data4=[behidestyle,'/static/images/bozi.png','/static/images/shenzi.png','/static/images/xiongzhao.png',
          facestyle,frontstyle];
    base64=[]; 
        draw(function(){
        document.getElementById('addface').innerHTML='<img src="'+base64[0]+'">';
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
        var n = 0;
        function drawing(n){
          
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域
                 var beo =member.data['hairstyle']['behide_ordinate'];
                 var bea = member.data['hairstyle']['behide_abscissa'];
                 var bel = member.data['hairstyle']['behide_length'];
                var bew = member.data['hairstyle']['behide_width'];
                 var fro = member.data['hairstyle']['front_ordinate'];
                 var fra = member.data['hairstyle']['front_abscissa'];
                 var frl = member.data['hairstyle']['front_length'];
                 var frw = member.data['hairstyle']['front_width'];
                img.src=data4[n]; 
                img.onload=function(){
                    if(n==0){
                        ctx.drawImage(img,beo,bea,bel,bew);//马尾
                         drawing(n+1);//递归
                         
                          
                   }
                     else if(n==1){
                           ctx.drawImage(img,38,155,150,50);//脖子
                         drawing(n+1);//递归
                          
          } 
                    else if(n==2){
                       ctx.drawImage(img,-10,204,250,500);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                       ctx.drawImage(img,42,194,150,200);//胸罩
                         drawing(n+1);//递归
                         
                    } 
                     else if(n==4){
                        ctx.drawImage(img,63,55,88,120);//脸
                         drawing(n+1);//递归

                    } else {
                       ctx.drawImage(img,fro,fra,frl,frw);//内衬1
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
  




          // window.location.reload();;
        }
      }
    });
  }
</script>
  {/literal}
</body>
</html>