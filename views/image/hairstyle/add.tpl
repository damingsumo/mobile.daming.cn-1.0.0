{include file="common/header.tpl" pageTitle="商品列表"}
  <div class="content3">
    <div class="center3" style="text-align:center;">
      <div style="margin:0;">
        <ul class="center3_1">
          <li class="block"><img src="images/301.png"></li>
          <li><img src="images/302.png"></li>
          <li><img src="images/303.png"></li>
          <li><img src="images/302.png"></li>
        </ul>
        <ul class="none"  class="center3_2">
          <li class="block"><img src="images/301.png"></li>
          <li><img src="images/311.png"></li>
          <li><img src="images/312.png"></li>
          <li><img src="images/311.png"></li>
        </ul>
      </div>
      <ul>
        <li></li>
        <li  class="border3"></li>
      </ul>
    </div>
  </div>
  <form action="../hairstyle/add" id="myform" method="post">
  <input type="hidden" value="" id="hair_color_id" name="hair_color_id">
  <input type="hidden" value="" id="hair_style_id" name="hair_style_id">
  <input type="hidden" value="{$image_id}" id="image_id" name="image_id">
  <div class="bottom3">
    <ul class="bottom3_1">
    {foreach $hairStyles as $hairStyle}
      <li value="{$hairStyle.hair_style_id}"><img src="{$hairStyle.picture_url}"><span>{$hairStyle.name}</span></li>
      {/foreach}
    </ul>
    <ul class="none bottom3_2">
    {foreach $hairColors as $hairColor}
      <li  value="{$hairColor.hair_color_id}"><img src="{$hairColor.picture_url}"><span>{$hairColor.name}</span></li>
      {/foreach}
    </ul>
  </div>
  <div class="footer3">
    <input type="submit" value="完成">
  </div>
  </form>
  <script>

     $(".center3>ul li").on("touchstart",function(e){
    var index_3 = $(this).index();
    $(this).removeClass("border3").siblings().addClass("border3");
    $(".center3_1 li").eq(0).addClass("block").siblings().removeClass("block");
    $(".center3_2 li").eq(0).addClass("block").siblings().removeClass("block");
    $(".center3>div ul").eq(index_3).removeClass("none").siblings().addClass("none");
    $(".bottom3 ul").eq(index_3).removeClass("none").siblings().addClass("none");
  });
  $(".bottom3_1 li:first-child").attr("class","bg3");
  $(".bottom3_2 li:first-child").attr("class","bg3");
  var str=$(".bottom3_1 li:first-child").val();
  $("#hair_color_id").val(str);
  var str=$(".bottom3_2 li:first-child").val();
  $("#hair_style_id").val(str);
  $(".bottom3_1 li").on("touchstart",function(e){
    var index_31 = $(this).index();
    var str=$(this).val();
    $(this).addClass("bg3").siblings().removeClass("bg3");
    $(".center3_1 li").eq(index_31).addClass("block").siblings().removeClass("block");
    $("#hair_color_id").val(str);
  });
  $(".bottom3_2 li").on("touchstart",function(e){
    var index_31 = $(this).index();
    var str=$(this).val();
     $("#hair_style_id").val(str);
    $(this).addClass("bg3").siblings().removeClass("bg3");
    $(".center3_2 li").eq(index_31).addClass("block").siblings().removeClass("block");
  });
 </script>
</body>
</html>