{include file="common/header.tpl" pageTitle="我的"}
{include file="common/menu.tpl"}
	<div class="content"> 
		<div class="content_top">
			<div class="left">
				<div>
					<ul class="img">
						<li  id="head">
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
					<span>智能小秘书</span>
				</li>
				<li>
					<span>我已经了解你的身材，</span>
					<span>现在告诉我偏好吧~</span>
				</li>
				<li>
					<div>
						<div>
							<span>尺码推荐</span>
							<span>立即查看</span>
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
				<a href="/user/shoppingcar/list">
				<img src="{staticurl action='12.png' type='img'}">
				<em>我喜欢的</em>
				<div>
					<img src="{staticurl action='19.png' type='img'}">
				</div>
				</a>
			</li>
			<li>
				<a href="/order/list">
				<img src="{staticurl action='13.png' type='img'}">
				<em>我的订单</em>
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
			<!-- <li>
				<a href="#">
				<img src="{staticurl action='15.png' type='img'}">
				<em>关于我们</em>
				<div>
					<img src="{staticurl action='19.png' type='img'}">
				</div>
				</a>
			</li> -->
		</ul>
	</div>
		<!-- <input type="hidden" value="{$userFace.synthesis_url}" id="face_synthesis_url">
  <input type="hidden" value="{$userHairStyle.behide_synthesis_url}" id="behide_synthesis_url">
  <input type="hidden" value="{$userHairStyle.front_synthesis_url}" id="front_synthesis_url">
  <input type="hidden" value="{$userHairStyle.behide_ordinate}" id="behide_ordinate">
  <input type="hidden" value="{$userHairStyle.behide_abscissa}" id="behide_abscissa">
  <input type="hidden" value="{$userHairStyle.behide_length}" id="behide_length">
  <input type="hidden" value="{$userHairStyle.behide_width}" id="behide_width">
  <input type="hidden" value="{$userHairStyle.front_ordinate}" id="front_ordinate">
  <input type="hidden" value="{$userHairStyle.front_abscissa}" id="front_abscissa">
  <input type="hidden" value="{$userHairStyle.front_length}" id="front_length">
  <input type="hidden" value="{$userHairStyle.front_width}" id="front_width"> -->
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
<!-- {literal}
<script type="text/javascript">
	$(document).ready(function(){

      var facestyle = $("#face_synthesis_url").val();
          var behidestyle = $("#behide_synthesis_url").val();
          var frontstyle= $("#front_synthesis_url").val();
          var data1=[behidestyle,'/static/images/bozi.png','/static/images/shenzi.png','/static/images/xiongzhao.png',
          facestyle,frontstyle];
    base64=[]; 
        draw(function(){
        document.getElementById('head').innerHTML='<img src="'+base64[0]+'">';
        }) 
    function draw(fn){
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data1.length;
        c.width=200;
        c.height=230;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#f8f8f8';
        ctx.fill();  
        var n = 0;
        function drawing(n){
          
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域
                 var beo =$("#behide_ordinate").val();
                 var bea = $("#behide_abscissa").val();
                 var bel = $("#behide_length").val();
                var bew = $("#behide_width").val();
                 var fro = $("#front_ordinate").val();
                 var fra =  $("#front_abscissa").val();
                 var frl = $("#front_length").val();
                 var frw = $("#front_width").val();
                img.src=data1[n]; 
                img.onload=function(){
                    if(n==0){
                        ctx.drawImage(img,beo,bea,bel,bew);//马尾
                         drawing(n+1);//递归
                         
                          
                   }
                     else if(n==1){
                           ctx.drawImage(img,38,155,150,50);//脖子
                         drawing(n+1);//递归
                          
          } 
                    else if(n==2){
                       ctx.drawImage(img,-10,204,250,500);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                       ctx.drawImage(img,42,194,150,200);//胸罩
                         drawing(n+1);//递归
                         
                    } 
                     else if(n==4){
                        ctx.drawImage(img,63,55,88,120);//脸
                         drawing(n+1);//递归

                    } else {
                       ctx.drawImage(img,fro,fra,frl,frw);//内衬1
                         drawing(n+1);//递归 

                    } 
                }
            }else{
              alert(1);
            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
  
   });
</script>
{/literal} -->
</body>
</html>