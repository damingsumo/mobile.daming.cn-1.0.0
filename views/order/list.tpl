{include file="common/header.tpl" pageTitle="我的"}
{include file="common/menu.tpl"}
<body style="background:#F8F8F8;">
	<div class="header hearder1">
		<a href="" class="header_fl">
			<img src="{staticurl action='1.png' type='img'}">
		</a>
		<span>我的订单</span>
		<div class="header_fr">
		</div>
	</div>
	<div class="order_form" style="margin-top:6rem;">
		<ul>
			<li>
				<a href="#" class="selected"> 
					全部
				</a>
			</li>
			<li>
				<a href="#"> 
					 待支付
				</a>
			</li>
			<li>
				<a href="#"> 
					待发货
				</a>
			</li>
			<li>
				<a href="#"> 
					待收货
				</a>
			</li>
			<li>
				<a href="#"> 
					待评价
				</a>
			</li>
		</ul>
	</div>
	
	{foreach $orders as $key=>$val}
	<div style="float:left;width:100%;height:10rem;">
		<div class="good_name">
			<img src="{$val.brand['picture_url']}">
			<span>{$val.brand_name}</span>
			<span>{if $val.status == 1}未支付{else if $val.status == 2}待发货{else if $val.status == 3}已取消{else if $val.status == 4}已完成{else if $val.status == 5}已退款 {else if $val.status == 6}已发货 {/if}</span>
		</div> 
		{foreach $val.orderItems as $item}
		<div class="good_detial">
			<img src="{$item.goods['show_url']}">
			<span>{$item.goods['goods_name']}</br>{$item.goods['style_number']}</span>
			<span style="color:#949494;">颜色：{$item.color}；尺码{if $item.size==1}S{else if $item.size==2}M{else if $item.size==3}L{else if $item.size==4}XL{/if}</span>
			<div class="good_price">
				<label>￥{$item.price/100}</label>
				<label style="color:#949494;text-decoration:line-through">￥{$item.old_price/100}</label>
				<label style="color:#949494;">×{$item.number}</label>
			</div>
		</div>
		{/foreach}
	</div>
		<a href="#javascript;" onclick="order/ajaxPay?oid={$val.oid}" class="payoff">支付</a>
	{/foreach}
{literal}
<script type="text/javascript">
function pay(oid){
	$.ajax({
		type: "POST",
		url: '/order/ajaxPay',
		data: {oid:oid},
		datatype:'json',
		success: function(data) {
			var member = eval('('+data+')');
			if(member.status == 200) {
				
			}
		}
	});
}

</script>
{/literal}
</body>
</html>