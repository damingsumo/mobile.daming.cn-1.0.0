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
	<div class="good_name" style="margin-top:6rem;">
		<input type="checkbox">
		<img src="{staticurl action='uni.jpg' type='img'}"  style="margin-left:1rem">
		<span>优衣库品牌专卖</span>
		<img src="{staticurl action='删除.png' type='img'}"></img>
	</div>
	<div class="good_detial" style="padding-left:0;">
		<input type="checkbox">
		<img src="images/u96.jpg">
		<span>优衣库2018春装新款碎花拼搭女长袖</br>卫衣228135</span>
		<span style="color:#949494;">颜色：粉色组；尺码165/90A</span>
		<span>￥58.00</span> 
        <div class="num_style num_style1"> 
	       <div class="botton_style">
	         <a href="javascript:;" class="button" id="minus" style="width:18px;height:18px;line-height:15px;font-size:15px;">-</a>
	         <input class="text1" value="1" id="a" style="width:21px;height:18px;font-size:10px;">
	         <a href="javascript:;" class="button1" id="plus" style="width:18px;height:18px;line-height:15px;font-size:15px;">+</a>
	       </div> 
	    </div>
	</div>
	<div class="good_name" style="margin-top:0;">
		<input type="checkbox">
		<img src="images/sanyecao.jpg"  style="margin-left:1rem">
		<span>三叶草品牌专卖</span>
		<img src="images/删除.png"></img> 
	</div>
	<div class="good_detial" style="padding-left:0;">
		<input type="checkbox">
		<img src="images/u96.jpg">
		<span>三叶草2018夏装新款纯色女短袖</br>T恤330521</span>
		<span style="color:#949494;">颜色：粉色组；尺码165/90A</span> 
		<span>￥58.00</span>
		<div class="num_style num_style1"> 
	       <div class="botton_style">
	         <a href="javascript:;" class="button" id="minus1" style="width:18px;height:18px;line-height:15px;font-size:15px;">-</a>
	         <input class="text1" value="1" id="a1" style="width:21px;height:18px;font-size:10px;">
	         <a href="javascript:;" class="button1" id="plus1" style="width:18px;height:18px;line-height:15px;font-size:15px;">+</a>
	       </div> 
	    </div>
	</div>
	<div class="good_name" style="margin-top:0;">
		<input type="checkbox">
		<img src="images/taipingniao.jpg" style="margin-left:1rem">
		<span>太平鸟品牌专卖</span>
		<img src="images/删除.png"></img>
	</div>
	<div class="good_detial" style="padding-left:0;">
		<input type="checkbox">
		<img src="images/u96.jpg">
		<span>太平鸟女装2017秋装新款卡其色双排扣</br>风衣女中长款过膝风衣外套女</span>
		<span style="color:#949494;">颜色：驼色；尺码165/90A</span>
		<span>￥58.00</span>
		<div class="num_style num_style1"> 
	       <div class="botton_style">
	         <a href="javascript:;" class="button" id="minus2" style="width:18px;height:18px;line-height:15px;font-size:15px;">-</a>
	         <input class="text1" value="1" id="a2" style="width:21px;height:18px;font-size:10px;">
	         <a href="javascript:;" class="button1" id="plus2" style="width:18px;height:18px;line-height:15px;font-size:15px;">+</a>
	       </div> 
	    </div>
	</div> 
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