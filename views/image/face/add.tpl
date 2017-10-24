{include file="common/header.tpl" pageTitle="商品列表"}
  <div class="content3 face">
    <div class="center3" style="text-align:center;">
      <div style="margin:0;">
        <ul id="center3_1">
          <li class="block"><img src="{staticurl action='301.png' type='img'}"></li>
          <li><img src="{staticurl action='302.png' type='img'}"></li>
          <li><img src="{staticurl action='303.png' type='img'}"></li>
          <li><img src="{staticurl action='302.png' type='img'}"></li>
        </ul>
        <ul class="none"  id="center3_2">
          <li class="block"><img src="{staticurl action='301.png' type='img'}"></li>
          <li><img src="{staticurl action='311.png' type='img'}"></li>
          <li><img src="{staticurl action='312.png' type='img'}"></li>
          <li><img src="{staticurl action='311.png' type='img'}"></li>
        </ul>
      </div>
      <div class="camera">
      	 <a href="#">
      	 	<img src="{staticurl action='camera.gif' type='img'}">
      	 </a>
      </div>
      <ul>
        <li></li>
        <li  class="border3"></li>
      </ul>
    </div>
  </div>
  <form action="face/add" id="myform" method="post">
  <input type="hidden" name="face_id" value="" id="face">
  <input type="hidden" name="complexion_id" value="" id="complexion">
  <div class="bottom3">
    <ul class="bottom3_1">
    {foreach $faces as $face}
      <li value="{$face.face_id}"><img src="{$face.show_url}"><span>{$face.name}</span></li>
     {/foreach}
    </ul>
    <ul class="none bottom3_2 ">
    {foreach $complexions as $complexion}
      <li value="{$complexion.complexion_id}"><img src="{$complexion.picture_url}"><span>{$complexion.name}</span></li>
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
  $("#face").val(str);
  var str=$(".bottom3_2 li:first-child").val();
  $("#complexion").val(str);
  $(".bottom3_1 li").on("touchstart",function(e){
    var index_31 = $(this).index();
    var str=$(this).val();
    $("#face").val(str);
    $(this).addClass("bg3").siblings().removeClass("bg3");
    $(".center3_1 li").eq(index_31).addClass("block").siblings().removeClass("block");
  });
  $(".bottom3_2 li").on("touchstart",function(e){
    var index_31 = $(this).index();
    var str=$(this).val();
    $("#complexion").val(str);
    $(this).addClass("bg3").siblings().removeClass("bg3");
    $(".center3_2 li").eq(index_31).addClass("block").siblings().removeClass("block");
  });
</script>
</body>
</html>