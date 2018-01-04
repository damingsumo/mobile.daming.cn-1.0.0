{include file="common/header.tpl" pageTitle="创建身材"}
  <div class="content3 face">
    <div class="center3" style="text-align:center;">
      <div style="margin:0;">
        <ul id="center3_1" style="position: relative;"> 
          <li id="head">  </li> 
          <canvas id="MyCanvas" style="position: absolute; left:0;width:300px;height:380px; "></canvas>
        </ul>
      </div>
      <ul>
        <li></li> 
        <li class="border3"></li> 
      </ul>
    </div>
  </div>
  <form action="edit" id="myform" method="post">
  <input type="hidden" value="" id="face" name="face_id">
  <input type="hidden" value="" id="sss" name="complexion_id">
  <div class="bottom3">
    <ul class="bottom3_1">
    {foreach $faces as $face}
      <a onclick="face({$face.face_id})"><li value="{$face.face_id}" {if $face.face_id == $image.face_id}  {/if}><img src="{$face.show_url}"><span>{$face.name}</span></li></a>
      {/foreach}
    </ul>
    <ul class="none bottom3_2">
    {foreach $complexions as $complexion}
      <li value="{$complexion.complexion_id}" {if $complexion.complexion_id == $image.complexion_id} class="bg3" {/if}><img src="{$complexion.picture_url}"><span>{$complexion.name}</span></li>
      {/foreach}
    </ul>
  </div>
  <div class="footer3">
    <input type="submit" value="完成">
  </div>
  <input type="hidden" value="{$userFace.synthesis_url}" id="face_synthesis_url">
  <input type="hidden" value="{$userHairStyle.behide_synthesis_url}" id="behide_synthesis_url">
  <input type="hidden" value="{$userHairStyle.front_synthesis_url}" id="front_synthesis_url">
  <input type="hidden" value="{$userHairStyle.behide_ordinate}" id="behide_ordinate">
  <input type="hidden" value="{$userHairStyle.behide_abscissa}" id="behide_abscissa">
  <input type="hidden" value="{$userHairStyle.behide_length}" id="behide_length">
  <input type="hidden" value="{$userHairStyle.behide_width}" id="behide_width">
  <input type="hidden" value="{$userHairStyle.front_ordinate}" id="front_ordinate">
  <input type="hidden" value="{$userHairStyle.front_abscissa}" id="front_abscissa">
  <input type="hidden" value="{$userHairStyle.front_length}" id="front_length">
  <input type="hidden" value="{$userHairStyle.front_width}" id="front_width">
  </form>
  {literal}
<script type="text/javascript">
$(document).ready(function(){
      var facestyle = $("#face_synthesis_url").val();
          var behidestyle = $("#behide_synthesis_url").val();
          var frontstyle= $("#front_synthesis_url").val();
          var canvas = document.getElementById("MyCanvas");
          var context = canvas.getContext("2d");
           var beo =$("#behide_ordinate").val();
           var bea = $("#behide_abscissa").val();
           var bel = $("#behide_length").val();
          var bew = $("#behide_width").val();
           var fro = $("#front_ordinate").val();
           var fra =  $("#front_abscissa").val();
           var frl = $("#front_length").val();
           var frw = $("#front_width").val(); 
          //后面的头发
          var img = new Image();
              img.src= behidestyle; 
          img.onload = function () //确保图片已经加载完毕  
          {  
              context.drawImage(img,beo,bea,bel,bew-30); 
               //脸
               var img3 = new Image();
                   img3.src= facestyle; 
                img3.onload = function () //确保图片已经加载完毕  
                {  
                  context.drawImage(img3,99,65,123,56); 
                  //前面的头发
                  var img4 = new Image();
                      img4.src= frontstyle; 
                  img4.onload = function () //确保图片已经加载完毕  
                  {  
                    context.drawImage(img4,fro,fra,frl,frw); 
                  }
                }
               //脖子
              var img1 = new Image();
                  img1.src= "/static/images/bozi.png"; 
              img1.onload = function () //确保图片已经加载完毕  
              {  
                context.drawImage(img1,70,114,195,21); 
              } 
              //身子
              var img2 = new Image();
                  img2.src="/static/images/shenzi.png"; 
              img2.onload = function () //确保图片已经加载完毕  
              {  
                    context.drawImage(img2,0,135,340,450); 
                    //胸罩
                    var img5 = new Image();
                        img5.src= "/static/images/xiongzhao.png"; 
                    img5.onload = function () //确保图片已经加载完毕  
                    {  
                      context.drawImage(img5,70,130,205,170); 
                    }
               }
          }   
   });
   $(".center3>ul li").click(function(){
        var index_3 = $(this).index();
        $(this).removeClass("border3").siblings().addClass("border3");

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
    // $(this).addClass("bg3").siblings().removeClass("bg3");
    $(".center3_1 li").eq(index_31).addClass("block").siblings().removeClass("block");
    $("#face").val(str);
  });
  $(".bottom3_2 li").on("touchstart",function(e){
    var index_31 = $(this).index();
    var str=$(this).val();
     $("#sss").val(str);
    // $(this).addClass("bg3").siblings().removeClass("bg3");
    $(".center3_2 li").eq(index_31).addClass("block").siblings().removeClass("block");
  });
 $(".bottom3_1 a").click(function(){
        $(this).addClass("bg3").siblings().removeClass("bg3"); 
    });
  function face(face_id) {
    $.ajax({
      type: "POST",
      url: 'ajaxGetFace',
      data: {face_id:face_id},
      datatype:'json',
      success: function(data) {
        var member = eval('('+data+')');
        if(member.status == 200) {
           var behidestyle =member.data['hairstyle']['behide_synthesis_url'];
          var facestyle =member.data['face']['synthesis_url'];
          var frontstyle=member.data['hairstyle']['front_synthesis_url'];
           var beo =member.data['hairstyle']['behide_ordinate'];
           var bea = member.data['hairstyle']['behide_abscissa'];
           var bel = member.data['hairstyle']['behide_length'];
          var bew = member.data['hairstyle']['behide_width'];
           var fro = member.data['hairstyle']['front_ordinate'];
           var fra = member.data['hairstyle']['front_abscissa'];
           var frl = member.data['hairstyle']['front_length'];
           var frw = member.data['hairstyle']['front_width'];
           var qw=document.getElementById("sss").value; 
           console.log(qw)
           if ( qw == 6 ) {
               var canvas = document.getElementById("MyCanvas");
               var context = canvas.getContext("2d");
                    //后面的头发
               var img = new Image();
                  img.src= behidestyle; 
               context.clearRect(0,0,1000,1000); 
               img.crossOrigin = 'Anonymous'; //解决跨域 
               img.onload = function () //确保图片已经加载完毕  
               {  
                  context.drawImage(img,beo,bea,bel,bew-30); 
                   //脸
                   var img3 = new Image();
                       img3.src= facestyle; 
                    img3.onload = function () //确保图片已经加载完毕  
                    {  
                      context.drawImage(img3,99,65,123,56); 
                      //前面的头发
                      var img4 = new Image();

                          img4.crossOrigin = 'Anonymous'; //解决跨域  
                          img4.src= frontstyle;
                      img4.onload = function () //确保图片已经加载完毕  
                      {  
                        context.drawImage(img4,fro,fra,frl,frw); 
                          img4.crossOrigin = 'Anonymous'; //解决跨域  
                          var dataL = context.getImageData(70,114,195,21);
                        for (var i=0; i<dataL.data.length; i+=4 ) {
                          dataL.data[i] -= 15;
                          dataL.data[i+1]-= 15;
                          dataL.data[i+2] -= 15;
                      }
                      context.putImageData(dataL,70,114);
                      }
                    }
                   //脖子
                  var img1 = new Image();
                      img1.src= "/static/images/bozi.png";
                       
                  img1.onload = function () //确保图片已经加载完毕  
                  {  
                    context.drawImage(img1,70,114,195,21);  
                    
                  } 
                  //身子
                  var img2 = new Image();
                      img2.src="/static/images/shenzi.png"; 
                  img2.onload = function () //确保图片已经加载完毕  
                  {  
                        context.drawImage(img2,0,135,340,450); 
                        //胸罩
                        var img5 = new Image();
                            img5.src= "/static/images/xiongzhao.png"; 
                        img5.onload = function () //确保图片已经加载完毕  
                        {  
                          context.drawImage(img5,70,130,205,170); 
                        }
                   }
              }   
           }
        }
      }
    });
  }

  
</script>
  {/literal}
</body>
</html>