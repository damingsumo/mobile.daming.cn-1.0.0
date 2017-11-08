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
   <div class="content7">
		<div class="content7_top">
			<div class="top71">
				<ul>
					<li id="showfirst"><img src=""></li>
				</ul>
			</div>
			<div class="top72">
				<div>
					<span>你适合穿</span>
					<a href="#"></a>
				</div>
				<div>
					<a href="#"></a>
				</div>
			</div>
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
			<div class="right7">
				<span>搭配单品</span>
				<div>
					<ul>
						<li>
							<a href="#">
								<img src="{staticurl action='danpin.png' type='img'}">
							</a>
						</li>
						 <li>
							<a href="#">
								<img src="{staticurl action='danpin.png' type='img'}">
							</a>
						</li>
					</ul>
				</div>
			</div>
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
			<div class="size_content">
				<span>S</span> 
				<span>推荐尺码</span>
			</div>
			<div class="size_content_color">
				<span>本单品</span><em>尺码正常，</em>
				<span>版式</span><em>合身微弹</em>
			</div>
		</div>
		<div class="size_form">
			<span>尺码对照表</span>
			<a href="#">
				<img src="{staticurl action='wenhao.pn' type='img'}g">
			</a>
		</div>
		<div class="form_detil">
			<ul>
			{foreach $sizes as $k=>$size}
				<li {if $k == 0}class="size_color" {/if}>{if $size.size == 1}XXS{else if $size.size == 2}XS{else if $size.size == 3}S{else if $size.size == 4}M
				{else if $size.size == 5}L{else if $size.size == 6}XL{/if}</li>
			{/foreach}
			</ul>
			<div class="base">
			{foreach $sizes as $k=>$size}
			<table {if $k == 0} class="base-table"{else} class="base-table none"{/if}>
				<tbody>
					<tr {if $size.kummerbund == 0} class="none"{/if}>
				 		 <th>腰围{$size.kummerbund}</th> 
						 <td {if $size['kummerbund_status'] == 1}class="fit" {/if}>宽松</td>
						 <td {if $size['kummerbund_status'] == 2}class="fit" {/if}>稍松</td>
						 <td {if $size['kummerbund_status'] == 3}class="fit" {/if}>刚好</td>
						 <td {if $size['kummerbund_status'] == 4}class="fit" {/if}>稍紧</td>
						 <td {if $size['kummerbund_status'] == 5}class="fit" {/if}>紧</td>
				 	</tr>
				 	<tr {if $size.hipline == 0} class="none"{/if}>
				 		 <th>臀围 {$size.hipline}</th> 
						 <td  {if $size['hipline_status'] == 1}class="fit" {/if}>宽松</td>
						 <td  {if $size['hipline_status'] == 2}class="fit" {/if}> 稍松</td>
						 <td  {if $size['hipline_status'] == 3}class="fit" {/if}>刚好</td>
						 <td  {if $size['hipline_status'] == 4}class="fit" {/if}>稍紧</td>
						 <td  {if $size['hipline_status'] == 5}class="fit" {/if}>紧</td>
				 	</tr>
				 	<tr {if $size.outseam == 0} class="none"{/if}>
				 		 <th>裤长 {$size.outseam}</th> 
						 <td {if $size['long_legs_status'] == 1}class="fit" {/if}>宽松</td>
						 <td {if $size['long_legs_status'] == 2}class="fit" {/if}> 稍松</td>
						 <td {if $size['long_legs_status'] == 3}class="fit" {/if}>刚好</td>
						 <td {if $size['long_legs_status'] == 4}class="fit" {/if}>稍紧</td>
						 <td {if $size['long_legs_status'] == 5}class="fit" {/if}>紧</td>
				 	</tr>
				 	<tr {if $size.thigh_girth == 0} class="none"{/if}>
				 		 <th>大腿围 {$size.thigh_girth}</th> 
						 <td {if $size['thigh_girth_status'] == 1}class="fit" {/if}>宽松</td>
						 <td {if $size['thigh_girth_status'] == 2}class="fit" {/if}> 稍松</td>
						 <td {if $size['thigh_girth_status'] == 3}class="fit" {/if}>刚好</td>
						 <td {if $size['thigh_girth_status'] == 4}class="fit" {/if}>稍紧</td>
						 <td {if $size['thigh_girth_status'] == 5}class="fit" {/if}>紧</td>
				 	</tr>
				 	<tr {if $size.knee_circumference == 0} class="none"{/if}>
				 		 <th>膝围{$size.knee_circumference}</th> 
						 <td class="">宽松</td>
						 <td class=""> 稍松</td>
						 <td class="">刚好</td>
						 <td class="fit">稍紧</td>
						 <td class="">紧</td>
				 	</tr>
				 	<tr {if $size.bust == 0} class="none"{/if}>
				 		 <th>胸围{$size.bust}</th> 
						 <td {if $size['upper_chest_circumference_status'] == 1}class="fit" {/if}>宽松</td>
						 <td {if $size['upper_chest_circumference_status'] == 2}class="fit" {/if}> 稍松</td>
						 <td {if $size['upper_chest_circumference_status'] == 3}class="fit" {/if}>刚好</td>
						 <td {if $size['upper_chest_circumference_status'] == 4}class="fit" {/if}>稍紧</td>
						 <td {if $size['upper_chest_circumference_status'] == 5}class="fit" {/if}>紧</td>
				 	</tr>
					<tr {if $size.length == 0} class="none"{/if}>
				 		 <th>衣长{$size.length}</th> 
						 <td {if $size['body_length_status'] == 1}class="fit" {/if}>宽松</td>
						 <td {if $size['body_length_status'] == 2}class="fit" {/if}> 稍松</td>
						 <td {if $size['body_length_status'] == 3}class="fit" {/if}>刚好</td>
						 <td {if $size['body_length_status'] == 4}class="fit" {/if}>稍紧</td>
						 <td {if $size['body_length_status'] == 5}class="fit" {/if}>紧</td>
				 	</tr>	 
				 	<tr {if $size.s_width == 0} class="none"{/if}>
				 		 <th>肩宽 {$size.s_width}</th> 
						 <td {if $size['s_width_status'] == 1}class="fit" {/if}>长</td>
						 <td {if $size['s_width_status'] == 2}class="fit" {/if}> 稍长</td>
						 <td {if $size['s_width_status'] == 3}class="fit" {/if}>刚好</td>
						 <td {if $size['s_width_status'] == 4}class="fit" {/if}>稍短</td>
						 <td {if $size['s_width_status'] == 5}class="fit" {/if}>短</td>
				 	</tr>
				 	<tr {if $size.sleeve_width == 0} class="none"{/if}>
				 		 <th>袖肥 {$size.sleeve_width}</th> 
						 <td class="">宽松</td>
						 <td class=""> 稍松</td>
						 <td class="">刚好</td>
						 <td class="fit">稍紧</td>
						 <td class="">紧</td>
				 	</tr>
				</tbody>
			</table>
			{/foreach}
			</div>
		</div>
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
<!-- 	</div> -->
<!-- 	<div class="skin_button"> -->
<!-- 			<button class="skin_color">查看详情</button> -->
<!-- 			<button class="skin_color button_color">加入购物车</button> -->
<!-- 		</div> -->
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
    var data59=[behidestyle,'/static/images/bozi.png','/static/images/shenzi.png',
    facestyle,frontstyle,clothes,shoes]; 
    // alert(facestyle);
     base64=[];
     draw(function(){
           document.getElementById("showfirst").innerHTML='<img src="'+base64[0]+'">';
      }); 
    function draw(fn){ 
        var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data59.length;
        c.width=190;
        c.height=350;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#c3d3e0';
        ctx.fill();

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
                 var clo = $("#clothes_ordinate").val();
                 var cla =  $("#clothes_abscissa").val();
                 var cll = $("#clothes_length").val();
                 var clw = $("#clothes_width").val();
                 var sho = $("#shoes_ordinate").val();
                 var sha =  $("#shoes_abscissa").val();
                 var shl = $("#shoes_length").val();
                 var shw = $("#shoes_width").val();
                img.src=data59[n]; 
                img.onload=function(){
                     if(n==0){
                        ctx.drawImage(img,beo-38,bea,bel,bew);//后面头发
                         drawing(n+1);//递归

                   }
                   else if(n==1){
                           ctx.drawImage(img,61,60,90,20);//脖子
                         drawing(n+1);//递归
                         
                    } 
                    else if(n==2){
                       ctx.drawImage(img,32,80,150,265);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                        ctx.drawImage(img,77,18,52,49);//脸
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                       ctx.drawImage(img,fro-38,fra,frl,frw);//前面头发
                         drawing(n+1);//递归
                    } else if(n==5){
                      ctx.drawImage(img,cla-38,clo,cll,clw);//衣服
                         drawing(n+1);//递归
                    } 
                    else{
                      ctx.drawImage(img,sho-38,sha,shl,shw);//鞋子
                         drawing(n+1);//递归
                    }
                }
            }else{
            //保存生成作品图片 
             base64.push(c.toDataURL("images/png",0.8));
                fn();
            }
        }
        drawing(0);
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
    var data59=[behidestyle,'/static/images/bozi.png','/static/images/shenzi.png',
    facestyle,frontstyle,clothes,shoes];
    base64=[]; 
        draw(function(){
        document.getElementById('showfirst').innerHTML='<img src="'+base64[0]+'" style="margin-left:4rem;">';
        }) 
    function draw(fn){
         var c=document.createElement('canvas'),
        ctx=c.getContext('2d'),
        len=data59.length;
        c.width=190;
        c.height=350;
        ctx.rect(0,0,c.width,c.height);
        ctx.fillStyle='#c3d3e0';
        ctx.fill(); 
        function drawing(n){
          
            if(n<len){
                var img=new Image;
                img.crossOrigin = 'Anonymous'; //解决跨域
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
                img.src=data59[n]; 
                img.onload=function(){
                    if(n==0){
                        ctx.drawImage(img,beo-38,bea,bel,bew);//后面头发
                         drawing(n+1);//递归

                   }
                   else if(n==1){
                           ctx.drawImage(img,61,60,90,20);//脖子
                         drawing(n+1);//递归
                         
                    } 
                    else if(n==2){
                       ctx.drawImage(img,32,80,150,265);//身子
                         drawing(n+1);//递归
                    } 
                     else if(n==3){
                        ctx.drawImage(img,77,18,52,49);//脸
                         drawing(n+1);//递归
                    } 
                     else if(n==4){
                       ctx.drawImage(img,fro-38,fra,frl,frw);//前面头发
                         drawing(n+1);//递归
                    } else if(n==5){
                      ctx.drawImage(img,cla-38,clo,cll,clw);//衣服
                         drawing(n+1);//递归
                    } 
                    else{
                      ctx.drawImage(img,sho-38,sha,shl,shw);//鞋子
                         drawing(n+1);//递归
                    }
                }
            }else{

            //保存生成作品图片 
             base64.push(c.toDataURL("image/png",0.8));
                fn();
            }
        }
        drawing(0);
    }
  





				}
			}
		});
	}
</script>
{/literal}
</body>
</html>