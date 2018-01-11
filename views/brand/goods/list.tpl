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
            <input type="hidden" value="{$good.synthesis_url}" name="clothes_synthesis_url">
            <input type="hidden" value="{$good.ordinate}" name="clothes_ordinate">
            <input type="hidden" value="{$good.abscissa}" name="clothes_abscissa">
            <input type="hidden" value="{$good.length}" name="clothes_length">
            <input type="hidden" value="{$good.width}" name="clothes_width">
            
            <input type="hidden" value="$good['goodsCollocation'].synthesis_url}" name="front_width">
            <input type="hidden" value="$good['goodsCollocation'].ordinate}" namename="front_width">
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
             <canvas id="{$good.gid}"></canvas>
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
      // var clothes1= $(numbera).val(); 
      // var c=document.getElementById("283");  
      // var cxt=c.getContext("2d"); 
      // cxt.clearRect(0,0,1000,1000); 
      // c.width=200;
      // c.height=350;
      // var img=new Image();  
      // img.src=clothes;  
      // console.log(clothes);
      // img.onload = function () //确保图、片已经加载完毕  
      // {  
      //     cxt.drawImage(img,50,68,90,140);  
      // } 
      for(var i = 0;i<number.length;i++){
     // alert(i);
            var ss = number[i].getAttribute("value");
            var facestyle = $("#face_synthesis_url").val();
            var behidestyle = $("#behide_synthesis_url").val();
            var frontstyle= $("#front_synthesis_url").val(); 
            var clothes= numbera[i]["defaultValue"];
            var shoes= number1[i]["defaultValue"];
            var clo = numberb[i]["defaultValue"];
            var cla = numberc[i]["defaultValue"];
            var cll = numberd[i]["defaultValue"];
            var clw = numbere[i]["defaultValue"];
            var sho = number2[i]["defaultValue"];
            var sha = number3[i]["defaultValue"];
            var shl = number4[i]["defaultValue"];
            var shw = number5[i]["defaultValue"];
            
            var data59=[behidestyle,'/static/images/bozi.png','/static/images/shenzi.png',
                   facestyle,frontstyle,shoes];
             base64=[];
             // console.log(base64)
            draw(function(){  
              document.getElementById("10").innerHTML='<img src="'+base64[0]+'">'; 
               // alert(base64[ ]);
             }) 
            var func =function(wer){ 
                  var c=document.getElementById(wer);  
                  var cxt=c.getContext("2d"); 
                  cxt.clearRect(0,0,1000,1000); 
                  c.width=200;
                  c.height=350;
                  var img=new Image();  
                  img.src=clothes;  
                  // console.log(clothes);
                  img.onload = function () //确保图、片已经加载完毕  
                  {  
                      cxt.drawImage(img,48,65,95,140);  
                  } 
            
             }
            func(ss); 
            function draw(fn){ 
            var c = document.createElement("canvas"),
            ctx=c.getContext('2d'),
            len=data59.length;
            c.width=300;
            c.height=380;
            ctx.rect(0,0,c.width,c.height);
            ctx.fillStyle='#c9dbe7';
            ctx.fill();
          
            function drawing(n){
                if(n<len){
                  // console.log(n);
                    var img=new Image;
                    // console.log(img)
                    img.crossOrigin = 'Anonymous'; //解决跨域
                    var beo =$("#behide_ordinate").val();
                    var bea = $("#behide_abscissa").val();
                    var bel = $("#behide_length").val();
                    var bew = $("#behide_width").val();
                    var fro = $("#front_ordinate").val();
                    var fra =  $("#front_abscissa").val();
                    var frl = $("#front_length").val();
                    var frw = $("#front_width").val();
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
                        }
                        //  else if(n==5){ 
                        //   ctx.drawImage(img,cla,clo,cll,clw);//衣服
                        //   // console.log(img.src);
                        //      drawing(n+1);//递归
                        // } 
                        else{ 
                          ctx.drawImage(img,sho,sha,shl,shw);//鞋子
                             drawing(n+1);//递归
                        }
                    }
                }else{
                //保存生成作品图片 
               
                 base64.push(c.toDataURL("images/png")); 
                    fn();
                }
            }
            drawing(0);
        } 
         // return;
      }     
});
</script>
{/literal}
</body>
</html>