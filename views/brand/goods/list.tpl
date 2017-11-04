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
  <input type="hidden" value="{$good.synthesis_url}" id="clothes_synthesis_url">
  <input type="hidden" value="{$good.ordinate}" id="clothes_ordinate">
  <input type="hidden" value="{$good.abscissa}" id="clothes_abscissa">
  <input type="hidden" value="{$good.length}" id="clothes_length">
  <input type="hidden" value="{$good.width}" id="clothes_width">
  
  <input type="hidden" value="$good['goodsCollocation'].synthesis_url}" id="front_width">
  <input type="hidden" value="$good['goodsCollocation'].ordinate}" id="front_width">
  <input type="hidden" value="$good['goodsCollocation'].abscissa}" id="front_width">
  <input type="hidden" value="$good['goodsCollocation'].length}" id="front_width">
  <input type="hidden" value="$good['goodsCollocation'].width}" id="front_width">
  
  <input type="hidden" value="{$good['goodsCollocation']['shoes'].synthesis_url}" id="shoes_synthesis_url">
  <input type="hidden" value="{$good['goodsCollocation']['shoes'].ordinate}" id="shoes_ordinate">
  <input type="hidden" value="{$good['goodsCollocation']['shoes'].abscissa}" id="shoes_abscissa">
  <input type="hidden" value="{$good['goodsCollocation']['shoes'].length}" id="shoes_length">
  <input type="hidden" value="{$good['goodsCollocation']['shoes'].width}" id="shoes_width">
  
 
            <a href="detail?gid={$good.gid}" id="{$good.gid}">
              <img src="{$good.show_url}">
           </a>
            <a href="detail?gid={$good.gid}">
                <span>{$good.goods_name}</span>
                <div class="clothes_price">
                <span>¥{$good.price/100}</span>
                <span>¥{$good.old_price/100}</span>
              	</div>
                <div class="logo_size">
                  <img src="{$good['genre']['picture_url']}" class="logo_clothes">
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
    for(var i = 0;i<number.length;i++){
    var ss = number[i].getAttribute("value");
    var facestyle = $("#face_synthesis_url").val();
    var behidestyle = $("#behide_synthesis_url").val();
    var frontstyle= $("#front_synthesis_url").val();
    var clothes= $("#clothes_synthesis_url").val();
     var shoes= $("#shoes_synthesis_url").val();
    var data59=[behidestyle,'/static/images/bozi.png','/static/images/shenzi.png',
    facestyle,frontstyle,clothes,shoes];
        base64=[];
          var func =function(wer){
              draw(function(){
                       document.getElementById(wer).innerHTML='<img src="'+base64[0]+'">';
                  }); 
           }
        func(ss);
    function draw(fn){ 
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data59.length;
        c.width=300;
        c.height=380;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#c9dbe7';
        ctx.fill();

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
                 var clo = $("#clothes_ordinate").val();
                 var cla =  $("#clothes_abscissa").val();
                 var cll = $("#clothes_length").val();
                 var clw = $("#clothes_width").val();
                 // alert(clw);
                 var sho = $("#shoes_ordinate").val();
                 var sha =  $("#shoes_abscissa").val();
                 var shl = $("#shoes_length").val();
                 var shw = $("#shoes_width").val();
                img.src=data59[n]; 
                img.onload=function(){
                      if(n==0){
                        ctx.drawImage(img,beo,bea,bel,bew);//后面头发
                         drawing(n+1);//递归

                   }
                   else if(n==1){
                           ctx.drawImage(img,99,60,90,20);//脖子
                         drawing(n+1);//递归
                         
                    } 
                    else if(n==2){
                       ctx.drawImage(img,70,80,150,265);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                        ctx.drawImage(img,115,18,52,49);//脸
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                       ctx.drawImage(img,fro,fra,frl,frw);//前面头发
                         drawing(n+1);//递归
                    } else if(n==5){
                      ctx.drawImage(img,cla,clo,cll,clw);//衣服
                         drawing(n+1);//递归
                    } 
                    else{
                      ctx.drawImage(img,sho,sha,shl,shw);//鞋子
                         drawing(n+1);//递归
                    }
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("images/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
    }
});
</script>
{/literal}
</body>
</html>