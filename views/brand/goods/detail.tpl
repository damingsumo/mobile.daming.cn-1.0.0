{include file="common/header.tpl" pageTitle="商品列表"}
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
  <input type="hidden" value="{$goodsCollocation.synthesis_url}" id="first_synthesis_url">
  <input type="hidden" value="{$goodsCollocation.ordinate}" id="first_ordinate">
  <input type="hidden" value="{$goodsCollocation.abscissa}" id="first_abscissa">
  <input type="hidden" value="{$goodsCollocation.length}" id="first_length">
  <input type="hidden" value="{$goodsCollocation.width}" id="first_width">
  <input type="hidden" value="{$goodsCollocation['shoes'].synthesis_url}" id="shoes_synthesis_url">
  <input type="hidden" value="{$goodsCollocation['shoes'].ordinate}" id="shoes_ordinate">
  <input type="hidden" value="{$goodsCollocation['shoes'].abscissa}" id="shoes_abscissa">
  <input type="hidden" value="{$goodsCollocation['shoes'].length}" id="shoes_length">
  <input type="hidden" value="{$goodsCollocation['shoes'].width}" id="shoes_width">
  <input type="hidden" value="{$good.synthesis_url}" id="clothes_synthesis_url">
  <input type="hidden" value="{$good.ordinate}" id="clothes_ordinate">
  <input type="hidden" value="{$good.abscissa}" id="clothes_abscissa">
  <input type="hidden" value="{$good.length}" id="clothes_length">
  <input type="hidden" value="{$good.width}" id="clothes_width">
  
  <input type="hidden" value="{$hwPhoto['boday_url']}" id="boday_url">
  <input type="hidden" value="{if isset($hwPhoto['leg_url'])}{$hwPhoto['leg_url']}{/if}" id="leg_url">
  
  <input type="hidden" value="$good.gid}" id="gid">
   <div class="content7">
	<div class="content7_top">
		<div class="top71">
		  <ul>
			<li> 
				<canvas id="behid_hair" width="220" height="500"></canvas>
		         <canvas id="MyCanvas"  width="220" height="500;"></canvas>
		         <canvas id="hair" width="220" height="500;"></canvas>
			</li>
		  </ul>
		</div>
<!-- 			<div class="top72"> -->
<!-- 				<div> -->
<!-- 					<span>你适合穿</span> -->
<!-- 					<a href="#"></a> -->
<!-- 				</div> -->
<!-- 				<div> -->
<!-- 					<a href="#"></a> -->
<!-- 				</div> -->
<!-- 			</div> -->
			<div class="left7">
				<div class="first7">
					<ul>
						<li>
							<img src="{staticurl action='shangjiantou.png' type='img'}">
						</li>
						<li><span></span><span>发型</span></li>
					</ul>
				</div>
				<div class="second7 none">
					<img src="{staticurl action='403.png' type='img'}">
				</div>
				<div class="third7 none">
					<ul class="third71">
					{foreach $hairStyles as $hairStyle}
						<a onclick="choose({$hairStyle.hair_style_id})"><li value="{$hairStyle.hair_style_id}" {if $hairStyle.hair_style_id == $image.hair_style_id} {/if} ><img src="{$hairStyle.show_url}"><span>丸子头</span></li></a>
						{/foreach}
					</ul>
					<ul  class="third73">
						<li style="opacity:1;"><span></span><span>发型</span></li>
					<!-- 	<li class="border7_left border7_top"><span></span><span>发色</span></li> -->
					</ul>
				</div>
			</div>
<!-- 			<div class="right7"> -->
<!-- 				<span>搭配单品</span> -->
<!-- 				<div> -->
<!-- 					<ul> -->
<!-- 						<li> -->
<!-- 							<a href="#"> -->
<!-- 								<img src="{staticurl action='danpin.png' type='img'}"> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 						 <li> -->
<!-- 							<a href="#"> -->
<!-- 								<img src="{staticurl action='danpin.png' type='img'}"> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 					</ul> -->
<!-- 				</div> -->
<!-- 			</div> -->
		</div>  
	</div>  
	<div class="price">
		<span>{$good.goods_name}</span>
		<div class="price_detial">
			<span>¥{$good.price/100}</span>
			<span>¥{$good.old_price/100}</span>
			<span>10086人购买</span>
		</div>
	</div>
	<div class="skin_bottom none">
		<span>尺码推荐</span>
		<div class="skin_link">
			<span>推荐你最合适的尺码</span>
			<button>点击揭晓</button>
		</div>
	</div>
	<div class="skin_add">
		<span>尺码推荐</span>
		<a href="#">
			<img src="{staticurl action='bianji.png' type='img'}">
		</a>
		<div class="skin_size">
		{if !empty($brandSize)}
			<div class="size_content">
				<span>{if $brandSize.size == 1}S{elseif $brandSize.size==2}M{elseif $brandSize.size==3}L{elseif $brandSize.size==4}XL{else}暂无推荐尺码{/if}</span> 
				<span>推荐尺码</span>
			</div>
			{else}
			<div class="size_content">
			<span>商家未提供尺码</span>
			</div>
		{/if}
			<div class="size_content_color">
				<span>本单品</span><em>{if $good.size_comparison ==1}无弹  {elseif $good.size_comparison ==2}微弹{elseif $good.size_comparison ==3}较弹{elseif $good.size_comparison ==4}高弹{/if}</em>
				<span>版式</span><em>{if $good.size_comparison ==1}偏大一码  {elseif $good.size_comparison ==2}偏大半码 {elseif $good.size_comparison ==3}尺码正常{elseif $good.size_comparison ==4}偏小半码{elseif $good.size_comparison ==5}偏小一码{/if}</em>
			</div>
		</div>
		{if !empty($modelSizes)&&!empty($brandSize)}
		<div class="size_form">
			<span>尺码对照表</span>
			<a href="#">
				<img src="{staticurl action='wenhao.pn' type='img'}g">
			</a>
		</div>
		<div class="form_detil">
			<ul>
			{foreach $sizes as $k=>$size}
				<li {if $brandSize['size'] == $size.size}class="size_color" {/if}>{if $size.size == 1}S{else if $size.size == 2}M{else if $size.size == 3}L{else if $size.size == 4}XL
				{/if}</li>
			{/foreach}
			</ul>
			<div class="base">
			{foreach $modelSizes as $k=>$modelSize}
			<table {if $modelSize['size'] == $brandSize.size} class="base-table"{else} class="base-table none"{/if}>
				<tbody>
					<tr {if $modelSize.kummerbund == 0} class="none"{/if}>
				 		 <th>腰围</th> 
						 <td {if isset($modelSize['kummerbund_status']) && $modelSize['kummerbund_status']== 1}class="fit" {/if}>宽松</td>
						 <td {if isset($modelSize['kummerbund_status']) && $modelSize['kummerbund_status']== 2}class="fit" {/if}>稍松</td>
						 <td {if isset($modelSize['kummerbund_status']) && $modelSize['kummerbund_status']== 3}class="fit" {/if}>刚好</td>
						 <td {if isset($modelSize['kummerbund_status']) && $modelSize['kummerbund_status']== 4}class="fit" {/if}>稍紧</td>
						 <td {if isset($modelSize['kummerbund_status']) && $modelSize['kummerbund_status']== 5}class="fit" {/if}>紧</td>
				 	</tr>
				 	<tr {if $modelSize.hipline == 0} class="none"{/if}>
				 		 <th>臀围 </th> 
						 <td  {if isset($modelSize['hipline_status']) && $modelSize['hipline_status']== 1}class="fit" {/if}>宽松</td>
						 <td  {if isset($modelSize['hipline_status']) && $modelSize['hipline_status']== 2}class="fit" {/if}> 稍松</td>
						 <td  {if isset($modelSize['hipline_status']) && $modelSize['hipline_status']== 3}class="fit" {/if}>刚好</td>
						 <td  {if isset($modelSize['hipline_status']) && $modelSize['hipline_status']== 4}class="fit" {/if}>稍紧</td>
						 <td  {if isset($modelSize['hipline_status']) && $modelSize['hipline_status']== 5}class="fit" {/if}>紧</td>
				 	</tr>
				 	<tr {if $modelSize.long_legs == 0} class="none"{/if}>
				 		 <th>裤长</th> 
						 <td {if isset($modelSize['long_legs_status']) && $modelSize['long_legs_status']== 1}class="fit" {/if}>宽松</td>
						 <td {if isset($modelSize['long_legs_status']) && $modelSize['long_legs_status']== 2}class="fit" {/if}> 稍松</td>
						 <td {if isset($modelSize['long_legs_status']) && $modelSize['long_legs_status']== 3}class="fit" {/if}>刚好</td>
						 <td {if isset($modelSize['long_legs_status']) && $modelSize['long_legs_status']== 4}class="fit" {/if}>稍紧</td>
						 <td {if isset($modelSize['long_legs_status']) && $modelSize['long_legs_status']== 5}class="fit" {/if}>紧</td>
				 	</tr>
				 	<tr {if $modelSize.thigh_girth == 0} class="none"{/if}>
				 		 <th>大腿围 </th> 
						 <td {if isset($modelSize['thigh_girth_status']) && $modelSize['thigh_girth_status']== 1}class="fit" {/if}>宽松</td>
						 <td {if isset($modelSize['thigh_girth_status']) && $modelSize['thigh_girth_status']== 2}class="fit" {/if}> 稍松</td>
						 <td {if isset($modelSize['thigh_girth_status']) && $modelSize['thigh_girth_status']== 3}class="fit" {/if}>刚好</td>
						 <td {if isset($modelSize['thigh_girth_status']) && $modelSize['thigh_girth_status']== 4}class="fit" {/if}>稍紧</td>
						 <td {if isset($modelSize['thigh_girth_status']) && $modelSize['thigh_girth_status']== 5}class="fit" {/if}>紧</td>
				 	</tr>
<!-- 				 	<tr class="none"> -->
<!-- 				 		 <th>膝围</th>  -->
<!-- 						 <td class="">宽松</td> -->
<!-- 						 <td class=""> 稍松</td> -->
<!-- 						 <td class="">刚好</td> -->
<!-- 						 <td class="fit">稍紧</td> -->
<!-- 						 <td class="">紧</td> -->
<!-- 				 	</tr> -->
				 	<tr {if $modelSize.bust == 0} class="none"{/if}>
				 		 <th>胸围</th> 
						 <td {if isset($modelSize['upper_chest_circumference_status']) && $modelSize['upper_chest_circumference_status']== 1}class="fit" {/if}>宽松</td>
						 <td {if isset($modelSize['upper_chest_circumference_status']) && $modelSize['upper_chest_circumference_status']== 2}class="fit" {/if}> 稍松</td>
						 <td {if isset($modelSize['upper_chest_circumference_status']) && $modelSize['upper_chest_circumference_status']== 3}class="fit" {/if}>刚好</td>
						 <td {if isset($modelSize['upper_chest_circumference_status']) && $modelSize['upper_chest_circumference_status']== 4}class="fit" {/if}>稍紧</td>
						 <td {if isset($modelSize['upper_chest_circumference_status']) && $modelSize['upper_chest_circumference_status'] == 5}class="fit" {/if}>紧</td>
				 	</tr>
					<tr {if $modelSize.body_length == 0} class="none"{/if}>
				 		 <th>衣长</th> 
						 <td {if isset($modelSize['body_length_status']) && $modelSize['body_length_status']== 1}class="fit" {/if}>宽松</td>
						 <td {if isset($modelSize['body_length_status']) && $modelSize['body_length_status']== 2}class="fit" {/if}> 稍松</td>
						 <td {if isset($modelSize['body_length_status']) && $modelSize['body_length_status']== 3}class="fit" {/if}>刚好</td>
						 <td {if isset($modelSize['body_length_status']) && $modelSize['body_length_status']== 4}class="fit" {/if}>稍紧</td>
						 <td {if isset($modelSize['body_length_status']) && $modelSize['body_length_status']== 5}class="fit" {/if}>紧</td>
				 	</tr>	 
				 	<tr {if $modelSize.s_width == 0} class="none"{/if}>
				 		 <th>肩宽 </th> 
						 <td {if isset($modelSize['s_width_status']) && $modelSize['s_width_status']== 1}class="fit" {/if}>长</td>
						 <td {if isset($modelSize['s_width_status']) && $modelSize['s_width_status']== 2}class="fit" {/if}> 稍长</td>
						 <td {if isset($modelSize['s_width_status']) && $modelSize['s_width_status']== 3}class="fit" {/if}>刚好</td>
						 <td {if isset($modelSize['s_width_status']) && $modelSize['s_width_status']== 4}class="fit" {/if}>稍短</td>
						 <td {if isset($modelSize['s_width_status']) && $modelSize['s_width_status']== 5}class="fit" {/if}>短</td>
				 	</tr>
<!-- 				 	<tr class="none"> -->
<!-- 				 		 <th>袖肥</th>  -->
<!-- 						 <td class="">宽松</td> -->
<!-- 						 <td class=""> 稍松</td> -->
<!-- 						 <td class="">刚好</td> -->
<!-- 						 <td class="fit">稍紧</td> -->
<!-- 						 <td class="">紧</td> -->
<!-- 				 	</tr> -->
				</tbody>
			</table>
			{/foreach}
			</div>
		</div>
		{/if}
<!--         <div class="report"> -->
<!--         	<span>和您身材相似用户的试穿报告</span> -->
<!--         </div> -->
<!--         <div class="report_list"> -->
<!--         	<ul> -->
<!--         		<li> -->
<!--         			<img src="images/user.png"> -->
<!--         			<div class="user_infor"> -->
<!--         				<span>d***w</span> -->
<!--         				<span>169cm/46kg</span> -->
<!--         			</div> -->
<!--         			<div class="user_detil"> -->
<!--         				<span>试穿XS码</span> -->
<!--         				<span>整体合适, 衣长稍短, 肩宽稍紧</span> -->
<!--         			</div> -->
<!--         		</li> -->
<!--         		<li> -->
<!--         			<img src="images/user.png"> -->
<!--         			<div class="user_infor"> -->
<!--         				<span>d***w</span> -->
<!--         				<span>169cm/46kg</span> -->
<!--         			</div> -->
<!--         			<div class="user_detil"> -->
<!--         				<span>试穿XS码</span> -->
<!--         				<span>整体合适, 衣长稍短, 肩宽稍紧</span> -->
<!--         			</div> -->
<!--         		</li> -->
<!--         	</ul> -->
<!--         </div> -->
	</div>
	<div class="skin_button">
			<button class="skin_color  good_car" onclick="shopcar()">加入购物车</button>
			<button class="skin_color button_color" onclick="order()">购买</button>
	</div>
	<!--购买页-->
	<form action="/order/add" id="myform" method="post" onsubmit="return check()">
	<input type="hidden" name="gid" value="{$good.gid}" id="gid">
	<input type="hidden" name="size" value="" id="size">
	<input type="hidden" name="color" value="" id="color">
	<div class="gray" style="display:none ">
	</div>
	<div class="goodorder">
		<div class="goodorder_infor">
			<img src="{$good.show_url}">
			<div>
				<span>￥{$good.price/100}</span>
				<span>库存800件</span>
				<span>请选择 尺码 颜色</span>
			</div>
			<img src="{staticurl action='guanbi.png' type='img'}" class="good_close">
		</div>
		<div class="order_size order_size_buy">
			<span>尺码</span>
			<ul>
			{foreach $sizes as $size}
				<li onclick="checksize({$size.size})">{if $size.size == 1}S{else if $size.size == 2}M{else if $size.size == 3}L{else if $size.size == 4}XL{/if}</li>
				{/foreach}
			</ul>
		</div>
		<div class="order_color order_color_buy">
			<span>颜色</span>
			<ul>
				<li onclick="checkcolor()">紫红</li>
				<li>卡其色</li>
				<li>绿色</li>
				<li>淡黄</li>
			</ul>
		</div>
		<div class="num_style">
	       <span class="num2">购买数量</span>
	       <div class="botton_style">
	         <a href="javascript:;" class="button minus">-</a>
	         <input class="text1 a" value="1" name="number">
	         <a href="javascript:;" class="button1 plus">+</a>
	       </div> 
	    </div>
	    <div class="order_submit">
	    	<input type="submit" value="确认">
	    </div>
	</div>
	</form>
	<!--加入购物车-->
	
	
	<!-- <form action="/order/add" id="myform" method="post" onsubmit="return check()">
	<input type="hidden" name="gid" value="{$good.gid}" id="gid">
	<input type="hidden" name="size" value="" id="size">
	<input type="hidden" name="color" value="" id="color"> -->
	<div class="gray1" style="display:none ">
	</div>
	<div class="goodorder1">
		<div class="goodorder_infor">
			<img src="{$good.show_url}">
			<div>
				<span>￥{$good.price/100}</span>
				<span>库存800件</span>
				<span>请选择 尺码 颜色</span>
			</div>
			<img src="{staticurl action='guanbi.png' type='img'}" class="good_close">
		</div>
		<div class="order_size order_size_car">
			<span>尺码</span>
			<ul>
			{foreach $sizes as $size}
				<li onclick="checksize({$size.size})">{if $size.size == 1}S{else if $size.size == 2}M{else if $size.size == 3}L{else if $size.size == 4}XL{/if}</li>
				{/foreach}
			</ul>
		</div>
		<div class="order_color order_color_car">
			<span>颜色</span>
			<ul>
				<li onclick="checkcolor()">紫红</li>
				<li>卡其色</li>
				<li>绿色</li>
				<li>淡黄</li>
			</ul>
		</div>
		<div class="num_style">
	       <span class="num2">购买数量</span>
	       <div class="botton_style">
	         <a href="javascript:;" class="button minus">-</a>
	         <input class="text1 a" value="1 " name="number">
	         <a href="javascript:;" class="button1 plus">+</a>
	       </div> 
	    </div>
	    <div class="order_submit">
	    	<input type="submit" value="确认">
	    </div>
	</div>
	</form>
{literal}
<script type="text/javascript">
$(".third71 a").click(function(){
			$(this).addClass("bg7").siblings().removeClass("bg7");
});
 $(document).ready(function(){ 
 	var facestyle = $("#face_synthesis_url").val();
    var behidestyle = $("#behide_synthesis_url").val();
    var frontstyle= $("#front_synthesis_url").val();
    var shoes= $("#shoes_synthesis_url").val();
    var clothes= $("#clothes_synthesis_url").val();
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
    var sho = $("#shoes_ordinate").val();
    var sha =  $("#shoes_abscissa").val();
    var shl = $("#shoes_length").val();
    var shw = $("#shoes_width").val(); 
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
           ctx1.drawImage(img,parseInt(beo)+2,parseInt(bea)-5,bel,bew);  
        }
    //脸  
    var img3 = new Image(); 
        img3.crossOrigin =" anonymous"; 
        img3.src =facestyle; 
       // ctx.clearRect(0,0,1000,1000); 
    img3.onload = function () //确保图片已经加载完毕  
    {  
      ctx.drawImage(img3,115,2,55,69);  
         //脖子
        var img1 = new Image(); 
            img1.crossOrigin =" anonymous" ; 
            img1.src= "/static/images/bozi.png"; 
        img1.onload = function () //确保图片已经加载完毕  
        {  
          ctx.drawImage(img1,101.5,59,89,25);  
        } 
        //身子
        var img2 = new Image();
            img2.crossOrigin =" anonymous" ; 
            img2.src="/static/images/16634.png"; 
        img2.onload = function () //确保图片已经加载完毕  
        {  
              ctx.drawImage(img2,72,84,150,395);  
              //衣服
              var img6= new Image();
                img6.crossOrigin =" anonymous" ; 
                img6.src=clothes; 
              img6.onload = function () //确保图片已经加载完毕  
              {  
                  ctx.drawImage(img6,parseInt(clo)+1,parseInt(cla)-9,parseInt(cll),parseInt(clw)+100);  
              }
              var img7 = new Image(); 
	               img7.crossOrigin =" anonymous" ; 
	               img7.src =shoes; 
	               // ctx.clearRect(0,0,1000,1000); 
	            img7.onload = function () //确保图片已经加载完毕  
	            {  
	              ctx.drawImage(img7,sho,parseInt(sha)+130,parseInt(shl)+3,parseInt(shw)); 
	            }
         }
     }
     //前面的头发  
     var img4 = new Image(); 
         img4.crossOrigin =" anonymous" ; 
         img4.src =frontstyle; 
       // ctx.clearRect(0,0,1000,1000); 
    img4.onload = function () //确保图片已经加载完毕  
    {  
      ctx2.drawImage(img4,parseInt(fro)+2,parseInt(fra)-18,frl,parseInt(frw)+2); 
     }
		     
});

function choose(hair_style_id) {
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
			        var shoes= $("#shoes_synthesis_url").val(); 
			        var clothes= $("#clothes_synthesis_url").val(); 
			        var beo =member.data['hairstyle']['detail_behide_ordinate'];
			        var bea = member.data['hairstyle']['detail_behide_abscissa'];
	                var bel = member.data['hairstyle']['detail_behide_length'];
	                var bew = member.data['hairstyle']['detail_behide_width'];
	                var fro = member.data['hairstyle']['detail_front_ordinate'];
	                var fra = member.data['hairstyle']['detail_front_abscissa'];
	                var frl = member.data['hairstyle']['detail_front_length'];
	                var frw = member.data['hairstyle']['detail_front_width'];
	                var sho = $("#shoes_ordinate").val();
	                var sha =  $("#shoes_abscissa").val();
	                var shl = $("#shoes_length").val();
	                var shw = $("#shoes_width").val();
	                var clo = $("#clothes_ordinate").val();
	                var cla =  $("#clothes_abscissa").val();
	                var cll = $("#clothes_length").val();
	                var clw = $("#clothes_width").val(); 
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
		                   ctx1.drawImage(img,parseInt(beo)+2,parseInt(bea)-5,bel,bew);  
		                }
		                 //前面的头发  
		                var img4 = new Image(); 
		                   img4.crossOrigin =" anonymous" ; 
		                   img4.src =frontstyle; 
		                   ctx2.clearRect(0,0,1000,1000); 
		                img4.onload = function () //确保图片已经加载完毕  
		                {  
		                  ctx2.drawImage(img4,parseInt(fro)+2,parseInt(fra)-18,frl,parseInt(frw)+2); 
		                } 
			    }
			}
		});
	}
 var $botton_style=$(".botton_style") 
    $(".plus").click(function(){
    	var ccc = $(".a").val();
    	ccc=parseInt(ccc)+1;
    	$(".a").val(ccc);
    })
    $(".minus").click(function(){
    	var ccc = $(".a").val();
    	ccc=parseInt(ccc)-1;
    	if (ccc<=0) {}
		else{
			$(".a").val(ccc);
		}
  })
   $(".order_color_buy ul li").click(function(){
   	var index1 = $(this).index(); 
     $(".order_color_buy ul li").eq(index1).addClass("bgred").siblings().removeClass("bgred");
   });
   $(".order_size_buy ul li").click(function(){
   	var index2 = $(this).index(); 
     $(".order_size_buy ul li").eq(index2).addClass("bgred").siblings().removeClass("bgred");
   });
    $(".order_color_car ul li").click(function(){
   	var index1 = $(this).index(); 
   	if($(".order_color_car ul li").hasClass('bgred')){
		$(".order_color_car ul li").removeClass('bgred');
		}else{
		$(".order_color_car ul li").addClass('bgred');
	}
     $(".order_color_car ul li").eq(index1).addClass("bgred").siblings().removeClass("bgred");
   });
   $(".order_size_car ul li").click(function(){
   	var index2 = $(this).index(); 
     $(".order_size_car ul li").eq(index2).addClass("bgred").siblings().removeClass("bgred");
   });
   	function order() {
		var gid = $('#gid').val();
		// window.location.href='/order/add?gid='+gid;
        $(".gray").css("display","block");
        $(".goodorder").css("display","block");
	}
	$(".good_car").click(function(){ 
   		$(".gray1").css("display","block");
        $(".goodorder1").css("display","block");
   }) 
   $(".gray").click(function(){ 
   		$(".gray").css("display","none");
        $(".goodorder").css("display","none");
   }) 
	$(".good_close").click(function(){ 
   		$(".gray").css("display","none");
        $(".goodorder").css("display","none");
   }) 
	$(".gray1").click(function(){ 
   		$(".gray1").css("display","none");
        $(".goodorder1").css("display","none");
   }) 
	$(".good_close").click(function(){ 
   		$(".gray1").css("display","none");
        $(".goodorder1").css("display","none");
   }) 

 function checksize(size) {
	$('#size').val(size);
	 }
 function checkcolor(color) {
		$('#color').val(color);
	}

function shopcar() {
	var gid = $('#gid').val();
	$(".shopcar").css("display","block");
    $(".goodorder1").css("display","block");
}
</script>
{/literal}
</body>
</html>