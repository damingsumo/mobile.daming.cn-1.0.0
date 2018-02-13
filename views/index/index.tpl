<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>首页</title>
	<link rel="stylesheet" type="text/css" href="{staticurl action='style.css' type='css'}">
	<meta  name="viewport"  content=" user-scalable=no, width=device-width,initial-scale=1.0">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
</head>
<body>
	<div class="top">
		<img src="{staticurl action='topbg.png' type='img'}" class="bg">
		<div class="top_nav">
			<!-- <a href="#">
				<img src="{staticurl action='fanhui.png' type='img'}">
			</a>
			 <input type="text" placeholder="牛仔裤">
			 <button>
			 	<img src="{staticurl action='sousuo.png' type='img'}">
			 </button> -->
			
			
			<div class="top_name">
		    </div>
		</div>
	</div>
	<!-- <div class="goods_nav">
		<ul>
			<li class="nav_border">
				<a href="#" class="link">
					<img src="{staticurl action='shouye.png' type='img'}">
					 店铺首页 
				</a>
			</li>
			<li>
				<a href="#" class="link">
					<img src="{staticurl action='quanbubaobei.png' type='img'}">
					<span>全部宝贝</span>
				</a>
			</li>
			<li>
				<a href="#" class="link">
					<img src="{staticurl action='xinpinshangjia.png' type='img'}">
					<span>新品上架</span>
				</a>
			</li>
			<li>
				<a href="#" class="link">
					<img src="{staticurl action='dongtai.png' type='img'}">
					<span>店铺动态</span>
				</a>
			</li>
		</ul>
	</div> -->
	<div class="goods_list">
		<ul class="second_list">
		{foreach $brands as $brand}
			<li>
				<a href="/brand/goods/list?brand_id={$brand.brand_id}">
					<img src="{$brand.picture_url}">
					<span>{$brand.name}</span>
					<em>高端休闲成衣时尚品牌</em>
				</a>
			</li>
			{/foreach}
		</ul>
		<!-- <div class="sub">
			<button>查看所有宝贝</button>
		</div> -->
	</div>
</body>
</html>