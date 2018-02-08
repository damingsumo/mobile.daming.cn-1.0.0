<form action="/order/add" id="myform" method="post" onsubmit="return check()">
	<input type="hidden" name="gid" value="{$good.gid}" id="gid">
	<input type="hidden" name="size" value="" id="size">
	<input type="hidden" name="color" value="" id="color">
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