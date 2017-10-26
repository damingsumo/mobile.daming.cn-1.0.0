{include file="common/header.tpl" pageTitle="创建身材"}
  <div class="content3">
    <div class="center3" style="text-align:center;">
      <div style="margin:0;">
        <ul class="center3_1">
          <li class="block"><img src="{staticurl action='301.png' type='img'}"></li> 
        </ul> 
      </div>
      <ul>
        <li></li> 
      </ul>
    </div>
  </div>
  <form action="edit" id="myform" method="post">
  <input type="hidden" value="" id="face" name="hair_style_id">
  <input type="hidden" value="" id="sss" name="hair_color_id">
  <div class="bottom3">
    <ul class="bottom3_1">
    {foreach $hairStyles as $hairStyle}
      <a onclick="hairstyle({$hairStyle.hair_style_id})"><li value="{$hairStyle.hair_style_id}" {if $hairStyle.hair_style_id == $image.hair_style_id} class="bg3" {/if}><img src="{$hairStyle.show_url}"><span>{$hairStyle.name}</span></li></a>
      {/foreach}
    </ul>
    <ul class="none bottom3_2">
    {foreach $hairColors as $hairColor}
      <li  value="{$hairColor.hair_color_id}" {if $hairColor.hair_color_id == $image.hair_color_id} class="bg3" {/if}><img src="{$hairColor.picture_url}"><span>{$hairColor.name}</span></li>
      {/foreach}
    </ul>
  </div>
  <div class="footer3">
    <input type="submit" value="完成">
  </div>
  </form>
	{literal}
<script type="text/javascript">	
    $(".center3>ul li").on("touchstart",function(e){
    var index_3 = $(this).index();
    $(this).removeClass("border3").siblings().addClass("border3");
    $(".center3_1 li").eq(0).addClass("block").siblings().removeClass("block");
    $(".center3_2 li").eq(0).addClass("block").siblings().removeClass("block");
    $(".center3>div ul").eq(index_3).removeClass("none").siblings().addClass("none");
    $(".bottom3 ul").eq(index_3).removeClass("none").siblings().addClass("none");
  }); 
  var str=$(".bottom3_1 li:first-child").val();
  $("#face").val(str);
  var str=$(".bottom3_2 li:first-child").val();
  $("#sss").val(str);
  $(".bottom3_1 li").on("touchstart",function(e){
    var index_31 = $(this).index();
    var str=$(this).val();
    $(this).addClass("bg3").siblings().removeClass("bg3");
    $(".center3_1 li").eq(index_31).addClass("block").siblings().removeClass("block");
    $("#face").val(str);
  });
  $(".bottom3_2 li").on("touchstart",function(e){
    var index_31 = $(this).index();
    var str=$(this).val();
     $("#sss").val(str);
    $(this).addClass("bg3").siblings().removeClass("bg3");
    $(".center3_2 li").eq(index_31).addClass("block").siblings().removeClass("block");
  });

  function hairstyle(hair_style_id) {
		$.ajax({
			type: "POST",
			url: 'ajaxGetHairstyle',
			data: {hair_style_id:hair_style_id},
			datatype:'json',
			success: function(data) {
				var member = eval('('+data+')');
				if(member.status == 200) {
					alert(member.data['hairstyle']['behide_abscissa']);
  





				}
			}
		});
	}
  </script>
	{/literal}
</body>
</html>