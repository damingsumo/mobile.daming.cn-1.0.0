{include file="common/header.tpl" pageTitle="创建身材"}
  <div class="content3 face">
    <div class="center3" style="text-align:center;">
      <div style="margin:0;">
        <ul id="center3_1" style="position: relative;"> 
          <li id="head">  </li> 
          <canvas id="face" style="position: absolute; left:0;z-index:50;" width="300px" height="380px;"></canvas>
          <canvas id="MyCanvas" style="position: absolute; left:0;z-index:1;" width="300px" height="380px;"></canvas>
           <canvas id="hair" style="position: absolute; left:0;z-index:55;" width="300px" height="380px;"></canvas>
        </ul>
      </div>
      <ul>
        <li></li> 
        <li class="border3"></li> 
      </ul>
    </div>
  </div>
  <form action="edit" id="myform" method="post">
  <input type="hidden" value="" id="face" name="face_id">
  <input type="hidden" value="" id="complexion" name="complexion_id">
  <div class="bottom3">
    <ul class="bottom3_1">
    {foreach $faces as $face}
      <a onclick="face({$face.face_id})" class="bg3"><li value="{$face.face_id}" {if $face.face_id == $image.face_id}  {/if}><img src="http://dev.mgr.daming.com.cn{$face.show_url}"><span>{$face.name}</span></li></a>
      {/foreach}
    </ul>
    <ul class="none bottom3_2">
    {foreach $complexions as $complexion}
      <a onclick="complexion({$complexion.complexion_id})"><li value="{$complexion.complexion_id}" {if $complexion.complexion_id == $image.complexion_id}{/if}><img src="{$complexion.picture_url}"><span>{$complexion.name}</span></li></a>
      {/foreach}
    </ul>
  </div>
  <div class="footer3">
    <input type="submit" value="完成">
  </div>
  <input type="hidden" value="{$userFace.synthesis_url}" id="face_synthesis_url">
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
<script type="text/javascript">
$(document).ready(function(){
    var facestyle = $("#face_synthesis_url").val();
    var behidestyle = $("#behide_synthesis_url").val();
    var frontstyle= $("#front_synthesis_url").val(); 
    var beo =$("#behide_ordinate").val();
    var bea = $("#behide_abscissa").val();
    var bel = $("#behide_length").val();
    var bew = $("#behide_width").val();
    var fro = $("#front_ordinate").val();
    var fra =  $("#front_abscissa").val();
    var frl = $("#front_length").val();
    var frw = $("#front_width").val();  
    var canvas = document.getElementById("MyCanvas"); 
    var ctx = canvas.getContext("2d"); 
    var canvas1 = document.getElementById("face"); 
    var ctx1 = canvas1.getContext("2d"); 
    var canvas2 = document.getElementById("hair"); 
    var ctx2 = canvas2.getContext("2d"); 
    //后面的头发
    var img = new Image(); 
        img.crossOrigin =" anonymous" ; 
        img.src =behidestyle; 
        ctx.clearRect(0,0,1000,1000); 
        img.onload = function(){
             ctx.drawImage(img,beo,parseInt(bea)-30,bel,bew-30); 
             //脖子
              var img1 = new Image(); 
                  img1.crossOrigin =" anonymous" ; 
                  img1.src= "/static/images/bozi.png"; 
              img1.onload = function () //确保图片已经加载完毕  
              {  
                ctx.drawImage(img1,70,275,195,60);  
                 //身子
              var img2 = new Image();
                  img2.crossOrigin =" anonymous" ; 
                  img2.src="/static/images/shenzi.png"; 
                  img2.onload = function () //确保图片已经加载完毕  
                  {  
                        ctx.drawImage(img2,0,335,340,600);  
                        //胸罩
                        var img5 = new Image();
                            img5.crossOrigin =" anonymous" ;
                            img5.src= "/static/images/xiongzhao.png"; 
                        img5.onload = function () //确保图片已经加载完毕  
                        {  
                          ctx.drawImage(img5,66,322,210,255); 
                        }
                   }
              }  
              //脸  
               var img3 = new Image(); 
                   img3.crossOrigin =" anonymous" ; 
                   img3.src =facestyle; 
                   ctx1.clearRect(0,0,1000,1000); 
                img3.onload = function () //确保图片已经加载完毕  
                {  
                  ctx1.drawImage(img3,95,178,130,120);   
                 }
          }
           //前面的头发  
         var img4 = new Image(); 
             img4.crossOrigin =" anonymous" ; 
             img4.src =frontstyle; 
             ctx2.clearRect(0,0,1000,1000); 
          img4.onload = function () //确保图片已经加载完毕  
          {  
            ctx2.drawImage(img4,fro,parseInt(fra)-35,parseInt(frl)+3,frw); 
          }
});
$(".center3>ul li").click(function(){
    var index_3 = $(this).index();
    $(this).removeClass("border3").siblings().addClass("border3");
    $(".center3>div ul").eq(index_3).removeClass("none").siblings().addClass("none");
    $(".bottom3 ul").eq(index_3).removeClass("none").siblings().addClass("none");
}); 
var str=$(".bottom3_1 li:first-child").val();
$("#face").val(str);
var str=$(".bottom3_2 li:first-child").val();
$("#complexion").val(str); 
$(".bottom3_1 a").click(function(){
    $(this).addClass("bg3").siblings().removeClass("bg3"); 
});
$(".bottom3_2 a").click(function(){
      $(this).addClass("bg3").siblings().removeClass("bg3"); 
});
function face(face_id) {
    $("#face").attr("value",face_id);
    var complexion_id = $("#complexion").val();
    $.ajax({
      type: "POST",
      url: 'ajaxGetFace',
      data: {face_id:face_id,complexion_id:complexion_id},
      datatype:'json',
      success: function(data) {
        var member = eval('('+data+')');
        if(member.status == 200) {
          var rgb = member.data['complexion']['rgb'];
          var m = rgb.split(",");
          var r = m[0];
          var g = m[1];
          var b = m[2]; 
          var behidestyle =member.data['hairstyle']['behide_synthesis_url'];
          var facestyle =member.data['face']['synthesis_url'];
          var frontstyle=member.data['hairstyle']['front_synthesis_url'];
          var beo =member.data['hairstyle']['behide_ordinate'];
          var bea = member.data['hairstyle']['behide_abscissa'];
          var bel = member.data['hairstyle']['behide_length'];
          var bew = member.data['hairstyle']['behide_width'];
          var fro = member.data['hairstyle']['front_ordinate'];
          var fra = member.data['hairstyle']['front_abscissa'];
          var frl = member.data['hairstyle']['front_length'];
          var frw = member.data['hairstyle']['front_width'];
          var qw=document.getElementById("complexion").value;
          if( qw == 6){
               var canvas = document.getElementById("MyCanvas"); 
               var ctx = canvas.getContext("2d"); 
               var canvas1 = document.getElementById("face"); 
               var ctx1 = canvas1.getContext("2d"); 
               var canvas2 = document.getElementById("hair"); 
               var ctx2 = canvas2.getContext("2d"); 
                 //后面的头发
               var img = new Image(); 
                   img.crossOrigin =" anonymous" ; 
                   img.src =behidestyle; 
                   ctx.clearRect(0,0,1000,1000); 
                   img.onload = function(){
                   ctx.drawImage(img,beo,parseInt(bea)-30,bel,bew-30);  
                       //脖子
                   var  img1 = new Image(); 
                        img1.crossOrigin =" anonymous" ; 
                        img1.src= "/static/images/bozi.png"; 
                      img1.onload = function () //确保图片已经加载完毕  
                      {  
                        ctx.drawImage(img1,70,275,195,60);  
                        var imgData = ctx.getImageData(70,275,195,60); 
                         var data = imgData.data; 
                         for(var i = 0 ; i<data.length; i+=4){ 
                             data [i] -= r; 
                             data [i + 1] -= g; 
                             data [i + 2] -= b; 
                         }  
                         ctx.putImageData(imgData,70,275); 
                         //身子
                          var img2 = new Image();
                              img2.crossOrigin =" anonymous" ; 
                              img2.src="/static/images/shenzi.png"; 
                          img2.onload = function () //确保图片已经加载完毕  
                          {  
                                ctx.drawImage(img2,0,335,340,600);     
                                 var imgData = ctx.getImageData(0,335,340,600); 
                                 var data = imgData.data; 
                                 for(var i = 0 ; i<data.length; i+=4){ 
                                     data [i] -= r; 
                                     data [i + 1] -= g; 
                                     data [i + 2] -= b;  
                                 }  
                                 ctx.putImageData(imgData,0,335); 
                                //胸罩
                                var img5 = new Image();
                                    img5.crossOrigin =" anonymous" ;
                                    img5.src= "/static/images/xiongzhao.png"; 
                                img5.onload = function () //确保图片已经加载完毕  
                                {  
                                  ctx.drawImage(img5,66,322,210,255); 
                                }
                            }
                         } 
                    }
                     //脸  
                   var img3 = new Image(); 
                       img3.crossOrigin =" anonymous" ; 
                       img3.src =facestyle; 
                       ctx1.clearRect(0,0,1000,1000); 
                    img3.onload = function () //确保图片已经加载完毕  
                    {  
                      ctx1.drawImage(img3,95,178,130,120);   
                      var imgData = ctx1.getImageData(95,178,130,120); 
                      var data = imgData.data; 
                      for(var i = 0 ; i<data.length; i+=4){ 
                           data [i] -= r; 
                           data [i + 1] -= g; 
                           data [i + 2] -= b; 
                       }  
                       ctx1.putImageData(imgData,95,178); 
                     }
                     //前面的头发  
                    var img4 = new Image(); 
                       img4.crossOrigin =" anonymous" ; 
                       img4.src =frontstyle; 
                       ctx2.clearRect(0,0,1000,1000); 
                    img4.onload = function () //确保图片已经加载完毕  
                    {  
                      ctx2.drawImage(img4,fro,parseInt(fra)-35,parseInt(frl)+3,frw); 
                     }
            }//if的判断符号
            else if( qw==5 ) {
                 var canvas = document.getElementById("MyCanvas"); 
                 var ctx = canvas.getContext("2d"); 
                 var canvas1 = document.getElementById("face"); 
                 var ctx1 = canvas1.getContext("2d"); 
                 var canvas2 = document.getElementById("hair"); 
                 var ctx2 = canvas2.getContext("2d"); 
                   //后面的头发
                 var img = new Image(); 
                     img.crossOrigin =" anonymous" ; 
                     img.src =behidestyle; 
                     ctx.clearRect(0,0,1000,1000); 
                     img.onload = function(){
                         ctx.drawImage(img,beo,parseInt(bea)-30,bel,bew-30);  
                      }
                   //脸  
                   var img3 = new Image(); 
                       img3.crossOrigin =" anonymous" ; 
                       img3.src =facestyle; 
                       ctx1.clearRect(0,0,1000,1000); 
                    img3.onload = function () //确保图片已经加载完毕  
                    {  
                      ctx1.drawImage(img3,95,178,130,120);   
                      var imgData = ctx1.getImageData(95,178,130,120); 
                       var data = imgData.data; 
                       for(var i = 0 ; i<data.length; i+=4){ 
                           data [i] -= r; 
                           data [i + 1] -= g; 
                           data [i + 2] -= b;  
                       }  
                       ctx1.putImageData(imgData,95,178); 
                     }
                     //前面的头发  
                   var img4 = new Image(); 
                       img4.crossOrigin =" anonymous" ; 
                       img4.src =frontstyle; 
                       ctx2.clearRect(0,0,1000,1000); 
                    img4.onload = function () //确保图片已经加载完毕  
                    {  
                      ctx2.drawImage(img4,fro,parseInt(fra)-35,parseInt(frl)+3,frw); 
                     }
                     //脖子
                    var img1 = new Image(); 
                        img1.crossOrigin =" anonymous" ; 
                        img1.src= "/static/images/bozi.png"; 
                    img1.onload = function () //确保图片已经加载完毕  
                    {  
                      ctx.drawImage(img1,70,275,195,60);  
                      var imgData = ctx.getImageData(70,275,195,60); 
                       var data = imgData.data; 
                       for(var i = 0 ; i<data.length; i+=4){ 
                           data [i] -= r; 
                           data [i + 1] -= g; 
                           data [i + 2] -= b; 
                       }  
                       ctx.putImageData(imgData,70,275); 
                    } 
                    //身子
                    var img2 = new Image();
                        img2.crossOrigin =" anonymous" ; 
                        img2.src="/static/images/shenzi.png"; 
                    img2.onload = function () //确保图片已经加载完毕  
                    {  
                          ctx.drawImage(img2,0,335,340,600);      
                      var imgData = ctx.getImageData(0,335,340,600); 
                       var data = imgData.data; 
                       for(var i = 0 ; i<data.length; i+=4){ 
                           data [i] -= r; 
                           data [i + 1] -= g; 
                           data [i + 2] -= b; 
                       }  
                       ctx.putImageData(imgData,0,335); 
                        //胸罩
                        var img5 = new Image();
                            img5.crossOrigin =" anonymous" ;
                            img5.src= "/static/images/xiongzhao.png"; 
                        img5.onload = function () //确保图片已经加载完毕  
                        {  
                          ctx.drawImage(img5,66,322,210,255); 
                        }
                     }
              } 
           }
         }
     });
}
function complexion(complexion_id) {
     $("#complexion").attr("value",complexion_id); 
     var face_id = $('#face').val();
     $.ajax({
            type: "POST",
            url: 'ajaxGetComplexion',
            data: {complexion_id:complexion_id,face_id:face_id},
            datatype:'json',
            success: function(data) {
                var member = eval('('+data+')');
                if(member.status == 200) {
                  var rgb = member.data['complexion']['rgb'];
                   var m = rgb.split(",");
                   var r = m[0];
                   var g = m[1];
                   var b = m[2]; 
                 var behidestyle =member.data['hairstyle']['behide_synthesis_url'];
                 var facestyle =member.data['face']['synthesis_url'];
                 var frontstyle=member.data['hairstyle']['front_synthesis_url'];
                 var beo =member.data['hairstyle']['behide_ordinate'];
                 var bea = member.data['hairstyle']['behide_abscissa'];
                 var bel = member.data['hairstyle']['behide_length'];
                 var bew = member.data['hairstyle']['behide_width'];
                 var fro = member.data['hairstyle']['front_ordinate'];
                 var fra = member.data['hairstyle']['front_abscissa'];
                 var frl = member.data['hairstyle']['front_length'];
                 var frw = member.data['hairstyle']['front_width'];
           var qw=document.getElementById("complexion").value;
           if( qw == 6){
               var canvas = document.getElementById("MyCanvas"); 
               var ctx = canvas.getContext("2d"); 
               var canvas1 = document.getElementById("face"); 
               var ctx1 = canvas1.getContext("2d"); 
               var canvas2 = document.getElementById("hair"); 
               var ctx2 = canvas2.getContext("2d"); 
                 //后面的头发
               var img = new Image(); 
                   img.crossOrigin =" anonymous" ; 
                   img.src =behidestyle; 
                   ctx.clearRect(0,0,1000,1000); 
                   img.onload = function(){
                       ctx.drawImage(img,beo,parseInt(bea)-30,bel,bew-30);  
                        //脖子
                        var img1 = new Image(); 
                            img1.crossOrigin =" anonymous" ; 
                            img1.src= "/static/images/bozi.png"; 
                            img1.onload = function () //确保图片已经加载完毕  
                            {  
                              ctx.drawImage(img1,70,275,195,60);  
                              var imgData = ctx.getImageData(70,275,195,60); 
                               var data = imgData.data; 
                               for(var i = 0 ; i<data.length; i+=4){ 
                                   data [i] -= r; 
                                   data [i + 1] -= g; 
                                   data [i + 2] -= b;  
                               }  
                               ctx.putImageData(imgData,70,275); 
                            } 
                        //身子
                        var img2 = new Image();
                            img2.crossOrigin =" anonymous" ; 
                            img2.src="/static/images/shenzi.png"; 
                            img2.onload = function () //确保图片已经加载完毕  
                            {  
                                  ctx.drawImage(img2,0,335,340,600);     
                              var imgData = ctx.getImageData(0,335,340,600); 
                               var data = imgData.data; 
                               for(var i = 0 ; i<data.length; i+=4){ 
                                   data [i] -= r; 
                                   data [i + 1] -= g; 
                                   data [i + 2] -= b; 
                               } 
                             ctx.putImageData(imgData,0,335); 
                              //胸罩
                              var img5 = new Image();
                                  img5.crossOrigin =" anonymous" ;
                                  img5.src= "/static/images/xiongzhao.png"; 
                                  img5.onload = function () //确保图片已经加载完毕  
                                  {  
                                    ctx.drawImage(img5,66,322,210,255); 
                                  }
                             } 
                    }
                     //脸  
                   var img3 = new Image(); 
                       img3.crossOrigin =" anonymous" ; 
                       img3.src =facestyle; 
                       ctx1.clearRect(0,0,1000,1000); 
                    img3.onload = function () //确保图片已经加载完毕  
                    {  
                      ctx1.drawImage(img3,95,178,130,120);   
                      var imgData = ctx1.getImageData(95,178,130,120); 
                       var data = imgData.data; 
                       for(var i = 0 ; i<data.length; i+=4){ 
                           data [i] -= r; 
                           data [i + 1] -= g; 
                           data [i + 2] -= b; 
                       }  
                       ctx1.putImageData(imgData,95,178); 
                     }
                     //前面的头发  
                   var img4 = new Image(); 
                       img4.crossOrigin =" anonymous" ; 
                       img4.src =frontstyle; 
                       ctx2.clearRect(0,0,1000,1000); 
                    img4.onload = function () //确保图片已经加载完毕  
                    {  
                      ctx2.drawImage(img4,fro,parseInt(fra)-35,parseInt(frl)+3,frw); 
                     }
                    
            }//if的判断符号
            else if( qw==5 ) {
                 var canvas = document.getElementById("MyCanvas"); 
                 var ctx = canvas.getContext("2d"); 
                 var canvas1 = document.getElementById("face"); 
                 var ctx1 = canvas1.getContext("2d"); 
                 var canvas2 = document.getElementById("hair"); 
                 var ctx2 = canvas2.getContext("2d"); 
                   //后面的头发
                 var img = new Image(); 
                     img.crossOrigin =" anonymous" ; 
                     img.src =behidestyle; 
                     ctx.clearRect(0,0,1000,1000); 
                     img.onload = function(){
                         ctx.drawImage(img,beo,parseInt(bea)-30,bel,bew-30);  
                          //脖子
                          var img1 = new Image(); 
                              img1.crossOrigin =" anonymous" ; 
                              img1.src= "/static/images/bozi.png"; 
                              img1.onload = function () //确保图片已经加载完毕  
                              {  
                                ctx.drawImage(img1,70,275,195,60);  
                                var imgData = ctx.getImageData(70,275,195,60); 
                                 var data = imgData.data; 
                                 for(var i = 0 ; i<data.length; i+=4){ 
                                     data [i] -= r; 
                                     data [i + 1] -= g; 
                                     data [i + 2] -= b; 
                                 }  
                                 ctx.putImageData(imgData,70,275); 
                              } 
                          //身子
                          var img2 = new Image();
                              img2.crossOrigin =" anonymous" ; 
                              img2.src="/static/images/shenzi.png"; 
                              img2.onload = function () //确保图片已经加载完毕  
                              {  
                                    ctx.drawImage(img2,0,335,340,600);     
                                var imgData = ctx.getImageData(0,335,340,600); 
                                 var data = imgData.data; 
                                 for(var i = 0 ; i<data.length; i+=4){ 
                                     data [i] -= r; 
                                     data [i + 1] -= g; 
                                     data [i + 2] -= b; 
                                 }  
                                  ctx.putImageData(imgData,0,335); 
                              //胸罩
                              var img5 = new Image();
                                  img5.crossOrigin =" anonymous" ;
                                  img5.src= "/static/images/xiongzhao.png"; 
                                  img5.onload = function () //确保图片已经加载完毕  
                                  {  
                                    ctx.drawImage(img5,66,322,210,255); 
                                  }
                              }
                      }
                   //脸  
                   var img3 = new Image(); 
                       img3.crossOrigin =" anonymous" ; 
                       img3.src =facestyle; 
                       ctx1.clearRect(0,0,1000,1000); 
                    img3.onload = function () //确保图片已经加载完毕  
                    {  
                      ctx1.drawImage(img3,95,178,130,120);   
                      var imgData = ctx1.getImageData(95,178,130,120); 
                       var data = imgData.data; 
                       for(var i = 0 ; i<data.length; i+=4){ 
                           data [i] -= r; 
                           data [i + 1] -= g; 
                           data [i + 2] -= b;  
                       }  
                       ctx1.putImageData(imgData,95,178); 
                     }
                     //前面的头发  
                   var img4 = new Image(); 
                       img4.crossOrigin =" anonymous" ; 
                       img4.src =frontstyle; 
                       ctx2.clearRect(0,0,1000,1000); 
                    img4.onload = function () //确保图片已经加载完毕  
                    {  
                      ctx2.drawImage(img4,fro,parseInt(fra)-35,parseInt(frl)+3,frw); 
                     }
             } 
           }
         }
   });
}
  
</script>
    {/literal}
</body>
</html>