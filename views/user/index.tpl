{include file="common/header.tpl" pageTitle="我的"}
{include file="common/menu.tpl"}
	<div class="content"> 
		<div class="content_top">
			<div class="left">
				<div>
					<ul class="img">
						<li>
							<img src="{staticurl action='20.png' type='img'}">
						</li>
						<li>
							<img src="{staticurl action='4.png' type='img'}">
						</li>
					</ul>
				</div>
				<div>
					<span class="color round1"></span>
					<span class="round2"></span>
				</div>
			</div>
			<div class="right">
				<ul>
					<li>
						<a onclick="go_edit()">
							<img src="{staticurl action='5.png' type='img'}">
						</a>
						身高体重
					</li>
					<li>
						<a onclick="go_figure()">
							<img src="{staticurl action='6.png' type='img'}">
						</a>
						身材特征
					</li>
					<li>
						<a onclick="go_face()">
							<img src="{staticurl action='7.png' type='img'}">
						</a>
						人脸五官
					</li>
					<li>
						<a onclick="go_hair()">
							<img src="{staticurl action='8.png' type='img'}">
						</a>
						发型发色
					</li>
				</ul>
			</div>
		</div>
		<div class="content_center">
			<ul>
				<li>
					<img src="{staticurl action='9.png' type='img'}">
					<span>小M</span>
					<a href="#">智能小秘书</a>
				</li>
				<li>
					<span>我已经了解你的身材，</span>
					<span>现在告诉我偏好吧~</span>
				</li>
				<li>
					<div>
						<div>
							<span>尺码推荐</span>
							<a href="#">立即查看</a>
						</div>
						<img src="{staticurl action='10.png' type='img'}">
					</div>
				</li>
				<li>
					<div>
						<div>
							<span>风格诊断</span>
							<span>即将开启</span>
						</div>
						<img src="{staticurl action='11.png' type='img'}">
					</div>
				</li>
			</ul>
		</div>
	</div>
	<div class="bottom">
		<ul>
			<li>
				<a href="#">
				<img src="{staticurl action='12.png' type='img'}">
				<em>我喜欢的</em>
				<div>
					<img src="{staticurl action='19.png' type='img'}">
				</div>
				</a>
			</li>
			<li>
				<a href="#">
				<img src="{staticurl action='13.png' type='img'}">
				<em>联系我们</em>
					<div>
					<img src="{staticurl action='19.png' type='img'}">
				</div>
				</a>
			</li>
			<li>
				<a href="/user/goFeedback">
				<img src="{staticurl action='14.png' type='img'}">
				<em>意见反馈</em>
				<div>
					<img src="{staticurl action='19.png' type='img'}">
				</div>				
				</a>
			</li>
			<li>
				<a href="#">
				<img src="{staticurl action='15.png' type='img'}">
				<em>关于我们</em>
				<div>
					<img src="{staticurl action='19.png' type='img'}">
				</div>
				</a>
			</li>
		</ul>
	</div>
<script type="text/javascript">
	function go_edit() {
		window.location.href='/user/hw/edit';
	}
	function go_figure() {
		window.location.href='/user/figure/edit';
	}
	function go_face() {
		window.location.href='/user/face/edit';
	}
	function go_hair() {
		window.location.href='/user/hairstyle/edit';
	}
</script>
</body>
</html>