{include file="common/header.tpl" pageTitle="商品列表"}
  <div class="content3">
    <div class="center3" style="text-align:center;">
      <div style="margin:0;">
        <ul class="center3_1">
          <li id="addhairstyle"><img src="images/301.png"></li>
        </ul>
      </div>
      <ul>
        <li></li> 
      </ul>
    </div>
  </div>
  <form action="../hairstyle/add" id="myform" method="post">
  <input type="hidden" value="" id="hair_color_id" name="hair_color_id">
  <input type="hidden" value="" id="hair_style_id" name="hair_style_id">
  <input type="hidden" value="{$image_id}" id="image_id" name="image_id">
  <div class="bottom3">
    <ul class="bottom3_1">
    {foreach $hairStyles as $hairStyle}
      <a onclick="hairstyle({$hairStyle.hair_style_id})"><li value="{$hairStyle.hair_style_id}"><img src="{$hairStyle.show_url}"><span>{$hairStyle.name}</span></li></a>
      {/foreach}
    </ul>
    <ul class="none bottom3_2">
    {foreach $hairColors as $hairColor}
      <li  value="{$hairColor.hair_color_id}"><img src="{$hairColor.picture_url}"><span>{$hairColor.name}</span></li>
      {/foreach}
    </ul>
  </div>
  <div class="footer3">
    <input type="submit" value="完成">
  </div>
<input type="hidden" value="{$userFace.face_synthesis_url}" id="face_synthesis_url">
  <input type="hidden" value="{$userHairStyle.behide_synthesis_url}" id="behide_synthesis_url">
  <input type="hidden" value="{$userHairStyle.front_synthesis_url}" id="front_synthesis_url">
  <input type="hidden" value="{$userHairStyle.behide_ordinate}" id="behide_ordinate">
  <input type="hidden" value="{$userHairStyle.behide_abscissa}" id="behide_abscissa">
  <input type="hidden" value="{$userHairStyle.behide_length}" id="behide_length">
  <input type="hidden" value="{$userHairStyle.behide_width}" id="behide_width">
  <input type="hidden" value="{$userHairStyle.front_ordinate}" id="front_ordinate">
  <input type="hidden" value="{$userHairStyle.front_abscissa}" id="front_abscissa">
  <input type="hidden" value="{$userHairStyle.front_length}" id="front_length">
  <input type="hidden" value="{$userHairStyle.front_width}" id="front_width">
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
     $(".center3>ul li").on("touchstart",function(e){
    var index_3 = $(this).index();
    $(this).removeClass("border3").siblings().addClass("border3");
    $(".center3_1 li").eq(0).addClass("block").siblings().removeClass("block");
    $(".center3_2 li").eq(0).addClass("block").siblings().removeClass("block");
    $(".center3>div ul").eq(index_3).removeClass("none").siblings().addClass("none");
    $(".bottom3 ul").eq(index_3).removeClass("none").siblings().addClass("none");
  });
  $(".bottom3_1 li:first-child").attr("class","bg3");
  $(".bottom3_2 li:first-child").attr("class","bg3");
  var str=$(".bottom3_1 li:first-child").val();
  $("#hair_style_id").val(str);
  var str=$(".bottom3_2 li:first-child").val();
  $("#hair_color_id").val(str);
  $(".bottom3_1 li").on("touchstart",function(e){
    var index_31 = $(this).index();
    var str=$(this).val();
    // $(this).addClass("bg3").siblings().removeClass("bg3");
    $(".center3_1 li").eq(index_31).addClass("block").siblings().removeClass("block");
    $("#hair_style_id").val(str);
  });
  $(".bottom3_2 li").on("touchstart",function(e){
    var index_31 = $(this).index();
    var str=$(this).val();
     $("#hair_color_id").val(str);
    // $(this).addClass("bg3").siblings().removeClass("bg3");
    $(".center3_2 li").eq(index_31).addClass("block").siblings().removeClass("block");
  });
  $(".bottom3_1 a").click(function(){
      $(this).addClass("bg3").siblings().removeClass("bg3");
  });

 function hairstyle(hair_style_id) {
    $.ajax({
      type: "POST",
      url: '/user/hairstyle/ajaxGetHairstyle',
      data: {hair_style_id:hair_style_id},
      datatype:'json',
      success: function(data) {
        var member = eval('('+data+')');
        if(member.status == 200) {
          
          var behidestyle =member.data['hairstyle']['behide_synthesis_url'];
          var facestyle =member.data['face']['synthesis_url'];
          var frontstyle=member.data['hairstyle']['front_synthesis_url'];
          var data3=[behidestyle,'/static/images/bozi.png','/static/images/shenzi.png','/static/images/xiongzhao.png',
          facestyle,frontstyle];
    base64=[]; 
        draw(function(){
        document.getElementById('addhairstyle').innerHTML='<img src="'+base64[0]+'">';
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
                img.src=data3[n]; 
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
  





        }
      }
    });
  }
 </script>
   {/literal}
</body>
</html>