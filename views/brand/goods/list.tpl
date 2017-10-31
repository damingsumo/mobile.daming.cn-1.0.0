{include file="common/header.tpl" pageTitle="商品列表"}
{include file="common/menu.tpl"}
     <div class="topnav">
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
            <a href="detail?gid={$good.gid}" id="{$good.gid}">
              <img src="{$good.picture_url}">
           </a>
            <a href="detail?gid={$good.gid}">
                <span>{$good.goods_name}</span>
                <div class="clothes_price">
                <span>¥{$good.price/100}</span>
                <span>¥{$good.old_price/100}</span>
              	</div>
              <img src="{$good['genre']['picture_url']}" class="logo_clothes">
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
    var data59=['/static/images/chaoduanfa.png','/static/images/bozi.png','/static/images/shenzi.png',
    '/static/images/zhuilinglian.png','/static/images/chaoduanfa1.png',
    '/static/images/lujian.png','/static/images/changxue.png'];
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
        c.width=190;
        c.height=350;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#c9dbe7';
        ctx.fill();

        function drawing(n){
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域

                img.src=data59[n]; 
                img.onload=function(){
                     if(n==0){
                        ctx.drawImage(img,63,12,38,56);//头发
                         drawing(n+1);//递归

                   }
                   else if(n==1){
                           ctx.drawImage(img,55,60,59,20);//脖子
                         drawing(n+1);//递归
                         
                    } 
                    else if(n==2){
                       ctx.drawImage(img,35,80,100,240);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                        ctx.drawImage(img,65,18,35,48.5);//脸
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                       ctx.drawImage(img,61,15,42,35);//内衬1
                         drawing(n+1);//递归
                    } else if(n==5){
                      ctx.drawImage(img,37,69,95,130);
                         drawing(n+1);//递归
                    } 
                    else{
                      ctx.drawImage(img,59,277,43,50);
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