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
        <ul>
        
     {foreach $goods as $good}
          <li>
            <a href="detail?gid={$good.gid}">
              <img src="{$good.picture_url}"> 
                <span>{$good.goods_name}</span>
                <div class="clothes_price">
                <span>¥{$good.price/100}</span>
                <span>¥{$good.old_price/100}</span>
              	</div>
              <img src="{$good['genre']['picture_url']}" class="logo_clothes">
            </a>
          </li>
     {/foreach}
     </div>
</body>
</html>