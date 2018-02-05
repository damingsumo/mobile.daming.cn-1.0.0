{include file="common/header.tpl" pageTitle="我的"}
{include file="common/menu.tpl"}
<body style="background:#F8F8F8;">
	<div class="header" >
		<a href="" class="header_fl">
			<img src="{staticurl action='1.png' type='img'}">
		</a>
		<span>购物车</span>
		<div class="header_fr">
		</div>
	</div> 
	<div style="margin-top:6rem;float:left">
	{foreach $shoppingcars as $key=>$val}
		<div  class="one-shop">
			<div class="good_name" >
				<input type="checkbox" class="goods-check ShopCheck">
				<img src="{$val[0]['brand']['picture_url']}"  style="margin-left:1rem">
				<span>{$key}</span>
				<img src="{staticurl action='删除.png' type='img'}"></img>
			</div>
			{foreach $val as $v}
			<div class="good_detial one-goods" style="padding-left:0;">
				<input type="checkbox" class="goods-check GoodsCheck">
				<img src="{$v['goods']['show_url']}">
				<span>{$v['goods']['goods_name']}</br>{$v['goods']['style_number']}</span>
				<span style="color:#949494;">颜色：{$v.color}；尺码{if $v.size==1}S{else if $v.size==2}M{else if $v.size==3}L{else if $v.size==4}XL{/if}</span>
				<span>￥<em class="GoodsPrice">{$v['goods']['price']/100}</em></span> 
		        <div class="num_style num_style1"> 
			       <div class="botton_style" >
			         <a href="javascript:;" class="button minus"  style="width:18px;height:18px;line-height:15px;font-size:15px;">-</a>
			         <input class="text1 a" value="1"  style="width:21px;height:18px;font-size:10px;">
			         <a href="javascript:;" class="button1 plus"  style="width:18px;height:18px;line-height:15px;font-size:15px;">+</a>
			       </div> 
			    </div>
			</div>
			<div class="ShopTotal" style="width:15px;height:15px;float:left;display:none"></div>
			{/foreach}
		</div>
	{/foreach}
	</div>
	<div class="balance">
		<input type="checkbox" class="goods-check AllCheck">
		<span>全选</span>
		<span>总计：</span>
		<span >￥<em class="AllTotal">0.00</em></span>
		<span>去结算</span>
	</div>
 <script type="text/javascript">
 //点击全选按钮
 $(".AllCheck").click(function() {
    if ($(this).prop("checked") == true) { //如果全选按钮被选中
      $(".goods-check").prop('checked', true); //所有按钮都被选中
      TotalPrice();
    } else {
      $(".goods-check").prop('checked', false); //else所有按钮不全选
      TotalPrice();
    }
    $(".ShopCheck").change(); //执行店铺全选的操作
  });
  // 点击商品按钮
  $(".GoodsCheck").click(function() {
    var goods = $(this).closest(".one-shop").find(".GoodsCheck"); //获取本店铺的所有商品
    var goodsC = $(this).closest(".one-shop").find(".GoodsCheck:checked"); //获取本店铺所有被选中的商品
    var Shops = $(this).closest(".one-shop").find(".ShopCheck"); //获取本店铺的全选按钮
    if (goods.length == goodsC.length) { //如果选中的商品等于所有商品
      Shops.prop('checked', true); //店铺全选按钮被选中
      if ($(".ShopCheck").length == $(".ShopCheck:checked").length) { //如果店铺被选中的数量等于所有店铺的数量
        $(".AllCheck").prop('checked', true); //全选按钮被选中
        TotalPrice();
      } else {
        $(".AllCheck").prop('checked', false); //else全选按钮不被选中 
        TotalPrice();
      }
    } else { //如果选中的商品不等于所有商品
      Shops.prop('checked', false); //店铺全选按钮不被选中
      $(".AllCheck").prop('checked', false); //全选按钮也不被选中
      // 计算
      TotalPrice();
      // 计算
    }
  });
 // 点击店铺按钮
  $(".ShopCheck").change(function() {
    if ($(this).prop("checked") == true) { //如果店铺按钮被选中
      $(this).parents(".one-shop").find(".goods-check").prop('checked', true); //店铺内的所有商品按钮也被选中
      if ($(".ShopCheck").length == $(".ShopCheck:checked").length) { //如果店铺被选中的数量等于所有店铺的数量
        $(".AllCheck").prop('checked', true); //全选按钮被选中
        TotalPrice();
      } else {
        $(".AllCheck").prop('checked', false); //else全选按钮不被选中
        TotalPrice();
      }
    } else { //如果店铺按钮不被选中
      $(this).parents(".one-shop").find(".goods-check").prop('checked', false); //店铺内的所有商品也不被全选
      $(".AllCheck").prop('checked', false); //全选按钮也不被选中
      TotalPrice();
    }
  });
  function TotalPrice() {
    var allprice = 0; //总价
    $(".one-shop").each(function() { //循环每个店铺
      var oprice = 0; //店铺总价
      $(this).find(".GoodsCheck").each(function() { //循环店铺里面的商品
        if ($(this).is(":checked")) { //如果该商品被选中
          var num = parseInt($(this).parents(".one-goods").find(".text1").val()); //得到商品的数量
          var price = parseFloat($(this).parents(".one-goods").find(".GoodsPrice").text()); //得到商品的单价
          var total = parseInt(price * num); //计算单个商品的总价
          oprice += total; //计算该店铺的总价
          // console.log(total)
        }
        $(this).closest(".one-shop").find(".ShopTotal").text(oprice.toFixed(2)); //显示被选中商品的店铺总价
      });
      var oneprice = parseFloat($(this).find(".ShopTotal").text()); //得到每个店铺的总价
      allprice += oneprice; //计算所有店铺的总价
    });
    $(".AllTotal").text(allprice.toFixed(2)); //输出全部总价
  }
   $(".minus").click(function() {
    var t = $(this).parent().find('.a');
    t.val(parseInt(t.val()) - 1);
    if (t.val() <= 1) {
      t.val(1);
    }
    // var totalNum = parseInt($(".totalNum").text());
    //     totalNum--
    //     if (totalNum  <= 1) {
    //   	  $(".totalNum").text(1);
	   //  }
    TotalPrice();
  });
   $(".plus").click(function() {
    var t = $(this).parent().find('.a');
    t.val(parseInt(t.val()) + 1);
    if (t.val() <= 1) {
      t.val(1);
    }
    // var totalNum = parseInt($(".totalNum").text());
    //     totalNum++
    //     $(".totalNum").text(totalNum);
    TotalPrice();
  });
 </script>
</body>
</html>