{include file="common/header.tpl" pageTitle="创建身材"}
  <div class="content3">
    <div class="center3" style="text-align:center;">
      <div style="margin:0;">
        <ul class="center3_1">
          <li  id="imgBox"> </li> 
          <canvas id="behid_hair" style="position: absolute; left:0;z-index:1;" width="300px" height="380px;"></canvas>
          <canvas id="MyCanvas" style="position: absolute; left:0;z-index:51;" width="300px" height="380px;"></canvas>
          <canvas id="hair" style="position: absolute; left:0;z-index:55;" width="300px" height="380px;"></canvas>
        </ul> 
      </div>
      <ul>
        <li></li> 
        <li class="border3"></li> 
      </ul>
    </div>
  </div>
  <form action="/user/hairstyle/edit" id="myform" method="post">
  <input type="hidden" value="" id="hair_style_id" name="hair_style_id">
  <input type="hidden" value="" id="hair_color_id" name="hair_color_id">
  <div class="bottom3">
    <ul class="bottom3_1 hairstyle">
    {foreach $hairStyles as $hairStyle}
      <a onclick="hairstyle({$hairStyle.hair_style_id})"><li value="{$hairStyle.hair_style_id}" {if $hairStyle.hair_style_id == $image.hair_style_id}  {/if}><img src="{$hairStyle.show_url}"><span>{$hairStyle.name}</span></li></a>
      {/foreach}
    </ul>
    <ul class="none bottom3_2">
    {foreach $hairColors as $hairColor}
      <a  onclick="haircolor({$hairColor.hair_color_id})"><li  value="{$hairColor.hair_color_id}" {if $hairColor.hair_color_id == $image.hair_color_id} {/if}><img src="{$hairColor.picture_url}"><span>{$hairColor.name}</span></li></a>
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
           var canvas1 = document.getElementById("behid_hair"); 
           var ctx1 = canvas1.getContext("2d");
           var canvas2 = document.getElementById("hair"); 
           var ctx2 = canvas2.getContext("2d");
           //后面的头发
           var img = new Image(); 
               img.crossOrigin =" anonymous" ; 
               img.src =behidestyle; 
               ctx1.clearRect(0,0,1000,1000); 
               img.onload = function(){
                   ctx1.drawImage(img,beo,parseInt(bea)-30,bel,bew-30);  
                }
                   //脸  
                   var img3 = new Image(); 
                       img3.crossOrigin =" anonymous" ; 
                       img3.src =facestyle; 
                       // ctx.clearRect(0,0,1000,1000); 
                    img3.onload = function () //确保图片已经加载完毕  
                    {  
                      ctx.drawImage(img3,95,178,130,120);  
                     
                      ctx.globalCompositeOperation="destination-over";
                     //脖子
                    var img1 = new Image(); 
                        img1.crossOrigin =" anonymous" ; 
                        img1.src= "/static/images/bozi.png"; 
                    img1.onload = function () //确保图片已经加载完毕  
                    {  
                      ctx.drawImage(img1,70,275,195,60);  
                    } 
                    }
                     //前面的头发  
                   var img4 = new Image(); 
                       img4.crossOrigin =" anonymous" ; 
                       img4.src =frontstyle; 
                       // ctx.clearRect(0,0,1000,1000); 
                    img4.onload = function () //确保图片已经加载完毕  
                    {  
                      ctx2.drawImage(img4,fro,parseInt(fra)-35,parseInt(frl)+3,frw); 
                     }
                    //胸罩
                          var img5 = new Image();
                              img5.crossOrigin =" anonymous" ;
                              img5.src= "/static/images/xiongzhao.png"; 
                          img5.onload = function () //确保图片已经加载完毕  
                          {  
                            ctx.drawImage(img5,66,322,210,255); 
                           ctx.globalCompositeOperation="destination-over";
                    //身子
                    var img2 = new Image();
                        img2.crossOrigin =" anonymous" ; 
                        img2.src="/static/images/shenzi.png"; 
                    img2.onload = function () //确保图片已经加载完毕  
                    {  
                          ctx.drawImage(img2,0,335,340,600);  
                          
                     }
                      }
   });
    $(".center3>ul li").click(function(){
        var index_3 = $(this).index();
        $(this).removeClass("border3").siblings().addClass("border3");
        $(".center3>div ul").eq(index_3).removeClass("none").siblings().addClass("none");
        $(".bottom3 ul").eq(index_3).removeClass("none").siblings().addClass("none");
    }); 
  var str=$(".bottom3_1 li:first-child").val();
  $("#hair_style_id").val(str);
  var str=$(".bottom3_2 li:first-child").val();
  $("#hair_color_id").val(str); 
  $(".bottom3_1 a").click(function(){
      $(this).addClass("bg3").siblings(".bottom3_1 a ").removeClass("bg3");
  });
  $(".bottom3_2 a").click(function(){
      $(this).addClass("bg3").siblings(".bottom3_2 a ").removeClass("bg3");
  }); 
  function hairstyle(hair_style_id) {
     $("#hair_style_id").attr("value",hair_style_id);
     var hair_color_id = $("#hair_color_id").val();
		$.ajax({
			type: "POST",
			url: 'ajaxGetHairstyle',
			data: {hair_style_id:hair_style_id,hair_color_id:hair_color_id},
			datatype:'json',
			success: function(data) {
				var member = eval('('+data+')');
				if(member.status == 200) {
                  var rgb = member.data['haircolor']['rgb'];
                   var m = rgb.split(",");
                   var r = m[0];
                   var g = m[1];
                   var b = m[2]; 
                   // console.log(m)
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
           var qw=document.getElementById("hair_color_id").value;
           if( qw == 1){ 
           var canvas1 = document.getElementById("behid_hair"); 
           var ctx1 = canvas1.getContext("2d");
           var canvas2 = document.getElementById("hair"); 
           var ctx2 = canvas2.getContext("2d");
           //后面的头发
           var img = new Image(); 
               img.crossOrigin =" anonymous" ; 
               img.src =behidestyle; 
               ctx1.clearRect(0,0,1000,1000); 
               img.onload = function(){
                   ctx1.drawImage(img,beo,parseInt(bea)-30,bel,bew-30); 
                   var imgData = ctx1.getImageData(beo,parseInt(bea)-30,bel,bew-30); 
                       var data = imgData.data; 
                       for(var i = 0 ; i<data.length; i+=4){ 
                           data [i] -= r; 
                           data [i + 1] -= g; 
                           data [i + 2] -= b; 
                       }  
                   ctx1.putImageData(imgData,beo,parseInt(bea)-30); 
                }
                 //前面的头发  
               var img4 = new Image(); 
                   img4.crossOrigin =" anonymous" ; 
                   img4.src =frontstyle; 
                   ctx2.clearRect(0,0,1000,1000); 
                img4.onload = function () //确保图片已经加载完毕  
                {  
                  ctx2.drawImage(img4,fro,parseInt(fra)-35,parseInt(frl)+3,frw);
                  var imgData = ctx2.getImageData(fro,parseInt(fra)-35,parseInt(frl)+3,frw); 
                   var data = imgData.data; 
                   for(var i = 0 ; i<data.length; i+=4){ 
                       data [i] -= r; 
                       data [i + 1] -= g; 
                       data [i + 2] -= b; 
                   }  
                   ctx2.putImageData(imgData,fro,parseInt(fra)-35);  
                 }
            }//if的判断符号
            else if( qw==2 ) {  
                 var canvas1 = document.getElementById("behid_hair"); 
                 var ctx1 = canvas1.getContext("2d");
                 var canvas2 = document.getElementById("hair"); 
                 var ctx2 = canvas2.getContext("2d");
                 //后面的头发
                 var img = new Image(); 
                     img.crossOrigin =" anonymous" ; 
                     img.src =behidestyle; 
                     ctx1.clearRect(0,0,1000,2000); 
                     img.onload = function(){
                         ctx1.drawImage(img,beo,parseInt(bea)-30,bel,bew-30); 
                         var imgData = ctx1.getImageData(beo,parseInt(bea)-30,bel,bew-30); 
                             var data = imgData.data; 
                             for(var i = 0 ; i<data.length; i+=4){ 
                                 data [i] -= r; 
                                 data [i + 1] -= g; 
                                 data [i + 2] -= b; 
                             }  
                         ctx1.putImageData(imgData,beo,parseInt(bea)-30); 
                      }
                     //前面的头发  
                   var img4 = new Image(); 
                       img4.crossOrigin =" anonymous" ; 
                       img4.src =frontstyle; 
                       ctx2.clearRect(0,0,1000,1000); 
                    img4.onload = function () //确保图片已经加载完毕  
                    {  
                      ctx2.drawImage(img4,fro,parseInt(fra)-35,parseInt(frl)+3,frw);
                      var imgData = ctx2.getImageData(fro,parseInt(fra)-35,parseInt(frl)+3,frw); 
                       var data = imgData.data; 
                       for(var i = 0 ; i<data.length; i+=4){ 
                           data [i] -= r; 
                           data [i + 1] -= g; 
                           data [i + 2] -= b; 
                       }  
                       ctx2.putImageData(imgData,fro,parseInt(fra)-35);  
                     }
            } //else的括号
				}
			}
		});
	}
  function haircolor(hair_color_id) {
       $("#hair_color_id").attr("value",hair_color_id);
       var hair_style_id = $("#hair_style_id").val();
	    $.ajax({
	      type: "POST",
	      url: '/user/hairstyle/ajaxGetHairColor',
	      data: {hair_color_id:hair_color_id,hair_style_id:hair_style_id},
	      datatype:'json',
	      success: function(data) {
	        var member = eval('('+data+')');
	        if(member.status == 200) { 
                var rgb = member.data['haircolor']['rgb'];
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
                 var qw=document.getElementById("hair_color_id").value; 
                 var canvas1 = document.getElementById("behid_hair"); 
                 var ctx1 = canvas1.getContext("2d");
                 var canvas2 = document.getElementById("hair"); 
                 var ctx2 = canvas2.getContext("2d");
           //后面的头发
           var img = new Image(); 
               img.crossOrigin =" anonymous" ; 
               img.src =behidestyle; 
               ctx1.clearRect(0,0,1000,1000); 
               img.onload = function(){
                   ctx1.drawImage(img,beo,parseInt(bea)-30,bel,bew-30); 
                   var imgData = ctx1.getImageData(beo,parseInt(bea)-35,bel,bew-30); 
                       var data = imgData.data; 
                       for(var i = 0 ; i<data.length; i+=4){ 
                           data [i] -= r; 
                           data [i + 1] -= g; 
                           data [i + 2] -= b; 
                       }  
                   ctx1.putImageData(imgData,beo,parseInt(bea)-35); 
                }
                 //前面的头发  
               var img4 = new Image(); 
                   img4.crossOrigin =" anonymous" ; 
                   img4.src =frontstyle; 
                   ctx2.clearRect(0,0,1000,1000); 
                img4.onload = function () //确保图片已经加载完毕  
                {  
                  ctx2.drawImage(img4,fro,parseInt(fra)-35,parseInt(frl)+3,frw);
                  var imgData = ctx2.getImageData(fro,parseInt(fra)-35,parseInt(frl)+3,frw); 
                   var data = imgData.data; 
                   for(var i = 0 ; i<data.length; i+=4){ 
                       data [i] -= r; 
                       data [i + 1] -= g; 
                       data [i + 2] -= b; 
                   }  
                   ctx2.putImageData(imgData,fro,parseInt(fra)-35);  
                 }
        }
      }
    });
  }

  </script>
	{/literal}
</body>
</html>