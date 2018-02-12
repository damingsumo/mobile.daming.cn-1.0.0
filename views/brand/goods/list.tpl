{include file="common/header.tpl" pageTitle="商品列表"}
{include file="common/menu.tpl"}
     <div class="topnav">
       <input type="hidden" value="{$userFace.synthesis_url}" id="face_synthesis_url">
      <input type="hidden" value="{$userHairStyle.behide_synthesis_url}" id="behide_synthesis_url">
      <input type="hidden" value="{$userHairStyle.front_synthesis_url}" id="front_synthesis_url">
      <input type="hidden" value="{$userHairStyle.detail_behide_ordinate}" id="behide_ordinate">
      <input type="hidden" value="{$userHairStyle.detail_behide_abscissa}" id="behide_abscissa">
      <input type="hidden" value="{$userHairStyle.detail_behide_length}" id="behide_length">
      <input type="hidden" value="{$userHairStyle.detail_behide_width}" id="behide_width">
      <input type="hidden" value="{$userHairStyle.detail_front_ordinate}" id="front_ordinate">
      <input type="hidden" value="{$userHairStyle.detail_front_abscissa}" id="front_abscissa">
      <input type="hidden" value="{$userHairStyle.detail_front_length}" id="front_length">
      <input type="hidden" value="{$userHairStyle.detail_front_width}" id="front_width">
        <input type="hidden" value="{$hwPhoto.list_bodylength}" id="list_bodylength">
      <input type="hidden" value="{$hwPhoto['boday_url']}" id="boday_url">
      <input type="hidden" value="{if isset($hwPhoto['leg_url'])}{$hwPhoto['leg_url']}{/if}" id="leg_url">
      
       <ul>
         <li>
           <a href="list?key=0&brand_id={$brandId}" {if $key==0 }class="font_color" {/if}>综合</a>
         </li>
         <li>
           <a href="list?key=1&brand_id={$brandId}" {if $key==1 }class="font_color" {/if}>新品</a>
         </li>
         <li>
           <a href="list?key=2&brand_id={$brandId}" {if $key==2 }class="font_color" {/if}>价格</a>
         </li>
       </ul>
     </div>
     <div class="clothes_list">
          <div>
            <a href="#">
              <img src="{staticurl action='yifuli.png' type='img'}"> 
            </a>
          </div>
        <ul id="asd">
     {foreach $goods as $good}
          <li value="{$good.gid}">
            <input type="hidden" value="{$good.synthesis_url}" name="clothes_synthesis_url">
            <input type="hidden" value="{$good.ordinate}" name="clothes_ordinate">
            <input type="hidden" value="{$good.abscissa}" name="clothes_abscissa">
            <input type="hidden" value="{$good.length}" name="clothes_length">
            <input type="hidden" value="{$good.width}" name="clothes_width">
            <input type="hidden" value="$good['goodsCollocation'].synthesis_url}" name="front_width">
            <input type="hidden" value="$good['goodsCollocation'].ordinate}" name="front_width">
            <input type="hidden" value="$good['goodsCollocation'].abscissa}" name="front_width">
            <input type="hidden" value="$good['goodsCollocation'].length}" name="front_width">
            <input type="hidden" value="$good['goodsCollocation'].width}" name="front_width">
            <input type="hidden" value="{$good['goodsCollocation']['shoes'].synthesis_url}" name="shoes_synthesis_url">
            <input type="hidden" value="{$good['goodsCollocation']['shoes'].ordinate}" name="shoes_ordinate">
            <input type="hidden" value="{$good['goodsCollocation']['shoes'].abscissa}" name="shoes_abscissa">
            <input type="hidden" value="{$good['goodsCollocation']['shoes'].length}" name="shoes_length">
            <input type="hidden" value="{$good['goodsCollocation']['shoes'].width}" name="shoes_width">
            <a href="detail?gid={$good.gid}"  id="10" name="goodimg">
              <img src=" " >
           </a>
           <a href="detail?gid={$good.gid}">
             <canvas id="{$good.gid}" width="300px" height="380"></canvas>
           </a>
           <a href="detail?gid={$good.gid}">
                <span>{$good.goods_name}</span>
                <div class="clothes_price">
                <span>¥{$good.price/100}</span>
                <span>¥{$good.old_price/100}</span>
              	</div>
                <div class="logo_size">
                  <img src="http://test.mgr.bestdaming.cn{$good['genre']['picture_url']}" class="logo_clothes">
                </div>
            </a>
          </li>
     {/foreach}
      </ul>
    </div>
{literal}
<script type="text/javascript">
$(document).ready(function(){
      var number = document.getElementById("asd").getElementsByTagName("li");
      var numbera =document.getElementsByName("clothes_synthesis_url");
      var numberb =document.getElementsByName("clothes_ordinate");
      var numberc =document.getElementsByName("clothes_abscissa");
      var numberd =document.getElementsByName("clothes_length");
      var numbere =document.getElementsByName("clothes_width");
      var number1 =document.getElementsByName("shoes_synthesis_url");
      var number2 =document.getElementsByName("shoes_ordinate");
      var number3 =document.getElementsByName("shoes_abscissa");
      var number4 =document.getElementsByName("shoes_length");
      var number5 =document.getElementsByName("shoes_width"); 
      for(var i = 0;i<number.length;i++){
            var ss = number[i].getAttribute("value");
            var facestyle = $("#face_synthesis_url").val();
            var behidestyle = $("#behide_synthesis_url").val();
            var frontstyle= $("#front_synthesis_url").val(); 
            var body=$("#boday_url").val();
            var leg=$("#leg_url").val();
            var list_bodylength=$("#list_bodylength").val();
            var clothes= numbera[i]["defaultValue"];
            var shoes= number1[i]["defaultValue"];
            var sho = number2[i]["defaultValue"];
            var sha = number3[i]["defaultValue"];
            var shl = number4[i]["defaultValue"];
            var shw = number5[i]["defaultValue"];
            var beo =$("#behide_ordinate").val();
            var bea = $("#behide_abscissa").val();
            var bel = $("#behide_length").val();
            var bew = $("#behide_width").val();
            var fro = $("#front_ordinate").val();
            var fra =  $("#front_abscissa").val();
            var frl = $("#front_length").val();
            var frw = $("#front_width").val(); 
            var func =function(wer){ 
                   var clo = numberb[i]["defaultValue"];
                   var cla = numberc[i]["defaultValue"];
                   var cll = numberd[i]["defaultValue"];
                   var clw = numbere[i]["defaultValue"];
                   var c=document.getElementById(wer);  
                   var ctx=c.getContext("2d");   
                      // ctx.globalCompositeOperation="destination-over";
                  var img6=new Image();  
                  img6.src=clothes;   
                  img6.onload = function () //确保图、片已经加载完毕  
                  {  
                      ctx.drawImage(img6,parseInt(clo)+4,cla,parseInt(cll)-5,clw);  
                      ctx.globalCompositeOperation="destination-over";
                     //脖子
                      var img1 = new Image(); 
                          img1.crossOrigin =" anonymous" ; 
                          img1.src= "/static/images/bozi.png"; 
                      img1.onload = function () //确保图片已经加载完毕  
                      {  
                        ctx.drawImage(img1,100,70,89,20);  
                        //脸  
                       var img3 = new Image(); 
                           img3.crossOrigin =" anonymous" ; 
                           img3.src =facestyle; 
                        img3.onload = function () //确保图片已经加载完毕  
                        {  
                          ctx.drawImage(img3,118,28,47,49); 
                       //  ctx.globalCompositeOperation="destination-over";
                       //  //后面的头发
                       // var img = new Image(); 
                       // img.crossOrigin =" anonymous" ; 
                       // img.src =behidestyle; 
                       // img.onload = function(){
                       //     ctx.drawImage(img,parseInt(beo)+3,bea,parseInt(bel)-5,bew); 
                       //   } 
                        } 
                      } 
                      ctx.globalCompositeOperation="destination-over";
                      //身子
                      var img2 = new Image();
                          img2.crossOrigin =" anonymous" ; 
                          img2.src=body; 
                      img2.onload = function () //确保图片已经加载完毕  
                      {  
                            ctx.drawImage(img2,78,83,138,parseInt(list_bodylength)+15);   
                       } 
                       //腿
                      var img9 = new Image();
                          img9.crossOrigin =" anonymous" ; 
                          img9.src=leg; 
                      img9.onload = function () //确保图片已经加载完毕  
                      {  
                            ctx.drawImage(img9,107,250,74,103);   
                       } 
                  } 
                 var img7 = new Image(); 
                     img7.crossOrigin =" anonymous" ; 
                     img7.src =shoes; 
                img7.onload = function () //确保图片已经加载完毕  
                {  
                  ctx.drawImage(img7,parseInt(sho)+2,parseInt(sha)+5,parseInt(shl)+3,shw); 
                }

                 //前面的头发  
               var img4 = new Image(); 
                   img4.crossOrigin =" anonymous" ; 
                   img4.src =frontstyle; 
                img4.onload = function () //确保图片已经加载完毕  
                {  
                  ctx.drawImage(img4,parseInt(fro)+3,parseInt(fra)+5,parseInt(frl)-5,frw);  
                  // console.log(frw)
                 }
             }
            func(ss); 
      }     
});
</script>
{/literal}
</body>
</html>