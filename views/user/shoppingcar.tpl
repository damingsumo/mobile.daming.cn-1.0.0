{include file="common/header.tpl" pageTitle="我的"}
{include file="common/menu.tpl"}
<body style="background:#F8F8F8;">
	<div class="header">
		<a href="" class="header_fl">
			<img src="{staticurl action='1.png' type='img'}">
		</a>
		<span>购物车</span>
		<div class="header_fr">
		</div>
	</div> 
	
	{foreach $shoppingcars as $key=>$val}
	<div class="good_name" style="margin-top:6rem;">
		<input type="checkbox">
		<img src="{$val[0]['brand']['picture_url']}"  style="margin-left:1rem">
		<span>{$key}</span>
		<img src="{staticurl action='删除.png' type='img'}"></img>
	</div>
	{foreach $val as $v}
	<div class="good_detial" style="padding-left:0;">
		<input type="checkbox">
		<img src="{$v['goods']['show_url']}">
		<span>{$v['goods']['goods_name']}</br>{$v['goods']['style_number']}</span>
		<span style="color:#949494;">颜色：{$v.color}；尺码{if $v.size==1}S{else if $v.size==2}M{else if $v.size==3}L{else if $v.size==4}XL{/if}</span>
		<span>￥{$v['goods']['price']/100}</span> 
        <div class="num_style num_style1"> 
	       <div class="botton_style">
	         <a href="javascript:;" class="button" id="minus" style="width:18px;height:18px;line-height:15px;font-size:15px;">-</a>
	         <input class="text1" value="1" id="a" style="width:21px;height:18px;font-size:10px;">
	         <a href="javascript:;" class="button1" id="plus" style="width:18px;height:18px;line-height:15px;font-size:15px;">+</a>
	       </div> 
	    </div>
	</div>
	{/foreach}
	{/foreach}
	<div class="balance">
		<input type="checkbox">
		<span>全选</span>
		<span>总计：</span>
		<span>￥0.00</span>
		<span>去结算(0)</span>
	</div>
 <script type="text/javascript">
    var $botton_style=$(".botton_style")
    var $plus=$("#plus")
    var $minus=$("#minus")
    $(plus).click(function(){
    	var ccc = $("#a").val();
    	ccc=parseInt(ccc)+1;
    	$("#a").val(ccc);
    })
    $(minus).click(function(){
    	var ccc = $("#a").val();
    	ccc=parseInt(ccc)-1;
    	if (ccc<=0) {}
		else{
			$("#a").val(ccc);
	    }
    })
    var $botton_style=$(".botton_style")
    var $plus1=$("#plus1")
    var $minus1=$("#minus1")
    $(plus1).click(function(){
    	var ccc = $("#a1").val();
    	ccc=parseInt(ccc)+1;
    	$("#a1").val(ccc);
    })
    $(minus1).click(function(){
    	var ccc = $("#a1").val();
    	ccc=parseInt(ccc)-1;
    	if (ccc<=0) {}
		else{
			$("#a1").val(ccc);
	    }
    })
    var $botton_style=$(".botton_style")
    var $plus2=$("#plus2")
    var $minus2=$("#minus2")
    $(plus2).click(function(){
    	var ccc = $("#a2").val();
    	ccc=parseInt(ccc)+1;
    	$("#a2").val(ccc);
    })
    $(minus2).click(function(){
    	var ccc = $("#a2").val();
    	ccc=parseInt(ccc)-1;
    	if (ccc<=0) {}
		else{
			$("#a2").val(ccc);
	    }
    })
 </script>
</body>
</html>