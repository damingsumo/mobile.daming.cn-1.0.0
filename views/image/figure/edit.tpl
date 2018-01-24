{include file="common/header.tpl" pageTitle="我的"}
<form action="edit" id="myform" method="post">
<input type="hidden" name="user_figure_id" value="{$figure.user_figure_id}">

  <div class="content5">
    <div class="content5_top">
      <ul>
        <li>
             <canvas id="behid_hair" width="300" height="500"></canvas>
             <canvas id="MyCanvas"  width="300" height="500"></canvas>
             <canvas id="hair" width="300" height="500;"></canvas>

        </li>
      </ul>
    </div>
    <div class="content5_center">
      <div>
        <span></span>
        <span><a href="/user/figure/detail">精细调整</a></span>
      </div>
      <div class="change5">
        <ul>
          <li>
            <div class="left5 left51">
              <ul>
                <li {if $figure.waist == 1} class="block5" {/if}><img src="{staticurl action='yao1.png' type='img'}"></li>
                <!-- <li {if $figure.waist == 2} class="block5" {/if}><img src="{staticurl action='yao2.png' type='img'}"></li> -->
                <li {if $figure.waist == 3} class="block5" {/if}><img src="{staticurl action='yao3.png' type='img'}"></li>
                <!-- <li {if $figure.waist == 4} class="block5" {/if}><img src="{staticurl action='yao4.png' type='img'}"></li> -->
                <li {if $figure.waist == 5} class="block5" {/if}><img src="{staticurl action='502.png' type='img'}"></li>
              </ul>
            </div>
            <div class="right5 right51">
              <span>腰型</span>
               <input type="hidden" value="{$figure.waist}" id="waist" name="waist">
              <ul>
                <li {if $figure.waist == 1} class="border5" {/if} value="1" onclick="changge('waist',1)"></li>
                <!-- <li {if $figure.waist == 2} class="border5" {/if} value="2" onclick="changge('waist',2)"></li> -->
                <li {if $figure.waist == 3} class="border5" {/if} value="3" onclick="changge('waist',3)"><span></span></li>
                <!-- <li {if $figure.waist == 4} class="border5" {/if} value="4" onclick="changge('waist',4)"></li> -->
                <li {if $figure.waist == 5} class="border5" {/if} value="5" onclick="changge('waist',5)"></li>
              </ul>
              <span></span>
              <ul>
                <li>直筒</li>
                <li>有曲线</li>
                <li>曲线明显</li>
              </ul>
            </div>
          </li>
          <!-- <li>
            <div class="left5 left52">
              <ul>
                <li {if $figure.belly == 1} class="block5" {/if}><img src="{staticurl action='503.png' type='img'}"></li>
                <li {if $figure.belly == 2} class="block5" {/if}><img src="{staticurl action='du3.png' type='img'}"></li>
                <li {if $figure.belly == 3} class="block5" {/if}><img src="{staticurl action='du1.png' type='img'}"></li>
                <li {if $figure.belly == 4} class="block5" {/if}><img src="{staticurl action='du4.png' type='img'}"></li>
                <li {if $figure.belly == 5} class="block5" {/if}><img src="{staticurl action='du5.png' type='img'}"></li>
              </ul>
            </div>
            <div class="right5 right52">
              <span>肚腩</span>
              <input type="hidden" value="{$figure.belly}" id="belly" name="belly">
              <ul>
                <li {if $figure.belly == 1} class="border5" {/if}value="1"></li>
                <li {if $figure.belly == 2} class="border5" {/if}value="2"></li>
                <li {if $figure.belly == 3} class="border5" {/if}value="3"><span></span></li>
                <li {if $figure.belly == 4} class="border5" {/if}value="4"></li>
                <li {if $figure.belly == 5} class="border5" {/if}value="5"></li>
              </ul>
              <span></span>
              <ul>
                <li>没有</li>
                <li>小肚腩</li>
                <li>大肚腩</li>
              </ul>
            </div>
          </li> -->
         <!--  <li>
            <div class="left5 left53">
              <ul>
                <li {if $figure.stern_type == 1} class="block5" {/if}><img src="{staticurl action='tun1.png' type='img'}"></li>
                <li {if $figure.stern_type == 2} class="block5" {/if}><img src="{staticurl action='tun3.png' type='img'}"></li>
                <li {if $figure.stern_type == 3} class="block5" {/if}><img src="{staticurl action='504.png' type='img'}"></li>
                <li {if $figure.stern_type == 4} class="block5" {/if}><img src="{staticurl action='tun4.png' type='img'}"></li>
                <li {if $figure.stern_type == 5} class="block5" {/if}><img src="{staticurl action='tun5.png' type='img'}"></li>
              </ul>
            </div>
            <div class="right5 right53">
              <span>臀型</span>
              <input type="hidden" value="{$figure.stern_type}" id="stern_type" name="stern_type">
              <ul>
                <li {if $figure.stern_type == 1} class="border5" {/if}value="1"></li>
                <li {if $figure.stern_type == 2} class="border5" {/if}value="2"></li>
                <li {if $figure.stern_type == 3} class="border5" {/if}value="3"><span></span></li>
                <li {if $figure.stern_type == 4} class="border5" {/if}value="4"></li>
                <li {if $figure.stern_type == 5} class="border5" {/if}value="5"></li>
              </ul>
              <span></span>
              <ul>
                <li>下塌</li>
                <li>正常</li>
                <li>上翘</li>
              </ul>
            </div>
          </li> -->
          <li>
            <div class="left5 left54">
              <ul>
                <li  {if $figure.hip_type== 1} class="block5" {/if}><img src="{staticurl action='505.png' type='img'}"></li>
                <!-- <li  {if $figure.hip_type == 2} class="block5" {/if}><img src="{staticurl action='kua2.png' type='img'}"></li> -->
                <li  {if $figure.hip_type == 3} class="block5" {/if}><img src="{staticurl action='kua3.png' type='img'}"></li>
                <!-- <li  {if $figure.hip_type == 4} class="block5" {/if}><img src="{staticurl action='kua4.png' type='img'}"></li> -->
                <li  {if $figure.hip_type == 5} class="block5" {/if}><img src="{staticurl action='kua5.png' type='img'}"></li>
              </ul>
            </div>
            <div class="right5 right54">
              <span>胯型</span>
              <input type="hidden" value="{$figure.hip_type}" id="hip_type" name="waist">
              <ul>
                <li {if $figure.hip_type == 1} class="border5" {/if} value="1" onclick="changge('hip_type',1)"></li>
                <!-- <li {if $figure.hip_type == 2} class="border5" {/if} value="2" onclick="changge('hip_type',2)"></li> -->
                <li {if $figure.hip_type == 3} class="border5" {/if} value="3" onclick="changge('hip_type',3)"><span></span></li>
                <!-- <li {if $figure.hip_type == 4} class="border5" {/if} value="4" onclick="changge('hip_type',4)"></li> -->
                <li {if $figure.hip_type == 5} class="border5" {/if} value="5" onclick="changge('hip_type',5)"></li>
              </ul>
              <span></span>
              <ul>
                <li>直筒</li>
                <li>有曲线</li>
                <li>曲线明显</li>
              </ul>
            </div>
          </li>
          <!-- <li>
            <div class="left5 left55">
              <ul>
                <li {if $figure.shoulder == 1} class="block5" {/if}><img src="{staticurl action='506.png' type='img'}"></li>
                <li {if $figure.shoulder == 2} class="block5" {/if}><img src="{staticurl action='jian2.png' type='img'}"></li>
                <li {if $figure.shoulder == 3} class="block5" {/if}><img src="{staticurl action='jian3.png' type='img'}"></li>
                <li {if $figure.shoulder == 4} class="block5" {/if}><img src="{staticurl action='jian4.png' type='img'}"></li>
                <li {if $figure.shoulder == 5} class="block5" {/if}><img src="{staticurl action='jian5.png' type='img'}"></li>
              </ul>
            </div>
            <div class="right5 right55">
              <span>肩膀</span>
              <input type="hidden" value="{$figure.shoulder}" id="shoulder" name="shoulder">
              <ul>
                <li {if $figure.shoulder == 1} class="border5" {/if} value="1"></li>
                <li {if $figure.shoulder == 2} class="border5" {/if} value="2"></li>
                <li {if $figure.shoulder == 3} class="border5" {/if} value="3"><span></span></li>
                <li {if $figure.shoulder == 4} class="border5" {/if} value="4"></li>
                <li {if $figure.shoulder == 5} class="border5" {/if} value="5"></li>
              </ul>
              <span></span>
              <ul>
                <li>窄</li>
                <li>正常</li>
                <li>宽</li>
              </ul>
            </div>
          </li> -->
          <li>
            <div class="left5 left56">
              <ul>
                <li {if $figure.arm == 1} class="block5" {/if}><img src="{staticurl action='507.png' type='img'}"></li>
                <!-- <li {if $figure.arm == 2} class="block5" {/if}><img src="{staticurl action='bi1.png' type='img'}"></li> -->
                <li {if $figure.arm == 3} class="block5" {/if}><img src="{staticurl action='bi3.png' type='img'}"></li>
                <!-- <li {if $figure.arm == 4} class="block5" {/if}><img src="{staticurl action='bi4.png' type='img'}"></li> -->
                <li {if $figure.arm == 5} class="block5" {/if}><img src="{staticurl action='bi5.png' type='img'}"></li>
              </ul>
            </div>
            <div class="right5 right56">
              <span>臂长</span>
              <input type="hidden" value="{$figure.arm}" id="arm" name="arm">
              <ul>
                <li {if $figure.arm == 1} class="border5" {/if} value="1" onclick="changge('arm',1)"></li>
                <!-- <li {if $figure.arm == 2} class="border5" {/if} value="2" onclick="changge('arm',2)"></li> -->
                <li {if $figure.arm == 3} class="border5" {/if} value="3" onclick="changge('arm',3)"><span></span></li>
                <!-- <li {if $figure.arm == 4} class="border5" {/if} value="4" onclick="changge('arm',4)"></li> -->
                <li {if $figure.arm == 5} class="border5" {/if} value="5" onclick="changge('arm',5)"></li>
              </ul>
              <span></span>
              <ul>
                <li>短</li>
                <li>正常</li>
                <li>长</li>
              </ul>
            </div>
          </li>
         <!--  <li>
            <div class="left5 left57">
              <ul>
                <li {if $figure.arm_circumference == 1} class="block5" {/if}><img src="{staticurl action='508.png' type='img'}"></li>
                <li {if $figure.arm_circumference == 2} class="block5" {/if}><img src="{staticurl action='wei2.png' type='img'}"></li>
                <li {if $figure.arm_circumference == 3} class="block5" {/if}><img src="{staticurl action='wei3.png' type='img'}"></li>
                <li {if $figure.arm_circumference == 4} class="block5" {/if}><img src="{staticurl action='wei4.png' type='img'}"></li>
                <li {if $figure.arm_circumference == 5} class="block5" {/if}><img src="{staticurl action='wei5.png' type='img'}"></li>
              </ul>
            </div>
            <div class="right5 right57">
              <span>臂围</span>
              <input type="hidden" value="{$figure.arm_circumference}" id="arm_circumference" name="arm_circumference">
              <ul>
                <li {if $figure.arm_circumference == 1} class="border5" {/if} value="1"></li>
                <li {if $figure.arm_circumference == 2} class="border5" {/if} value="2"></li>
                <li {if $figure.arm_circumference == 3} class="border5" {/if} value="3"><span></span></li>
                <li {if $figure.arm_circumference == 4} class="border5" {/if} value="4"></li>
                <li {if $figure.arm_circumference == 5} class="border5" {/if} value="5"></li>
              </ul>
              <span></span>
              <ul>
                <li>细</li>
                <li>正常</li>
                <li>粗</li>
              </ul>
            </div>
          </li> -->
          <!-- <li>
            <div class="left5 left58">
              <ul>
                <li {if $figure.hip == 1} class="block5" {/if}><img src="{staticurl action='509.png' type='img'}"></li>
                <li {if $figure.hip == 2} class="block5" {/if}><img src="{staticurl action='bu2.png' type='img'}"></li>
                <li {if $figure.hip == 3} class="block5" {/if}><img src="{staticurl action='bu3.png' type='img'}"></li>
                <li {if $figure.hip == 4} class="block5" {/if}><img src="{staticurl action='bu4.png' type='img'}"></li>
                <li {if $figure.hip == 5} class="block5" {/if}><img src="{staticurl action='bu5.png' type='img'}"></li>
              </ul>
            </div>
            <div class="right5 right58">
              <span>胯部</span>
              <input type="hidden" value="{$figure.hip}" id="hip" name="hip">
              <ul>
                <li {if $figure.hip == 1} class="border5" {/if} value="1"></li>
                <li {if $figure.hip == 2} class="border5" {/if} value="2"></li>
                <li {if $figure.hip == 3} class="border5" {/if} value="3"><span></span></li>
                <li {if $figure.hip == 4} class="border5" {/if} value="4"></li>
                <li {if $figure.hip == 5} class="border5" {/if} value="5"></li>
              </ul>
              <span></span>
              <ul>
                <li>窄</li>
                <li>正常</li>
                <li>宽</li>
              </ul>
            </div>
          </li> -->
         <!--  <li>
            <div class="left5 left59">
              <ul>
                <li {if $figure.thigh == 1} class="block5" {/if}><img src="{staticurl action='510.png' type='img'}"></li>
                <li {if $figure.thigh == 2} class="block5" {/if}><img src="{staticurl action='datui2.png' type='img'}"></li>
                <li {if $figure.thigh == 3} class="block5" {/if}><img src="{staticurl action='datui3.png' type='img'}"></li>
                <li {if $figure.thigh == 4} class="block5" {/if}><img src="{staticurl action='datui4.png' type='img'}"></li>
                <li {if $figure.thigh == 5} class="block5" {/if}><img src="{staticurl action='datui5.png' type='img'}"></li>
              </ul>
            </div>
            <div class="right5 right59">
              <span>大腿</span>
              <input type="hidden" value="{$figure.thigh}" id="thigh" name="thigh">
              <ul>
                <li {if $figure.thigh == 1} class="border5" {/if} value="1"></li>
                <li {if $figure.thigh == 2} class="border5" {/if} value="2"></li>
                <li {if $figure.thigh == 3} class="border5" {/if} value="3"><span></span></li>
                <li {if $figure.thigh == 4} class="border5" {/if} value="4"></li>
                <li {if $figure.thigh == 5} class="border5" {/if} value="5"></li>
              </ul>
              <span></span>
              <ul>
                <li>细</li>
                <li>正常</li>
                <li>粗</li>
              </ul>
            </div>
          </li> -->
         <!--  <li>
            <div class="left5 left510">
              <ul>
                <li {if $figure.leg == 1} class="block5" {/if}><img src="{staticurl action='511.png' type='img'}"></li>
                <li {if $figure.leg == 2} class="block5" {/if}><img src="{staticurl action='xiaotui2.png' type='img'}"></li>
                <li {if $figure.leg == 3} class="block5" {/if}><img src="{staticurl action='xiaotui3.png' type='img'}"></li>
                <li {if $figure.leg == 4} class="block5" {/if}><img src="{staticurl action='xiaotui4.png' type='img'}"></li>
                <li {if $figure.leg == 5} class="block5" {/if}><img src="{staticurl action='xiaotui1.png' type='img'}"></li>
              </ul>
            </div>
            <div class="right5 right510">
              <span>小腿</span>
              <input type="hidden" value="{$figure.leg}" id="leg" name="leg">
              <ul>
                <li {if $figure.leg == 1} class="border5" {/if} value="1"></li>
                <li {if $figure.leg == 2} class="border5" {/if} value="2"></li>
                <li {if $figure.leg == 3} class="border5" {/if} value="3"><span></span></li>
                <li {if $figure.leg == 4} class="border5" {/if} value="4"></li>
                <li {if $figure.leg == 5} class="border5" {/if} value="5"></li>
              </ul>
              <span></span>
              <ul>
                <li>细</li>
                <li>正常</li>
                <li>粗</li>
              </ul>
            </div>
          </li> -->
        <!--   <li>
            <div class="left5 left511">
              <ul>
                <li {if $figure.body_thick == 1} class="block5" {/if}><img src="{staticurl action='shangshen2.png' type='img'}"></li>
                <li {if $figure.body_thick == 2} class="block5" {/if}><img src="{staticurl action='shangshen3.png' type='img'}"></li>
                <li {if $figure.body_thick == 3} class="block5" {/if}><img src="{staticurl action='512.png' type='img'}"></li>
                <li {if $figure.body_thick == 4} class="block5" {/if}><img src="{staticurl action='shangshen4.png' type='img'}"></li>
                <li {if $figure.body_thick == 5} class="block5" {/if}><img src="{staticurl action='shangshen5.png' type='img'}"></li>
              </ul>
            </div>
            <div class="right5 right511">
              <span>上下身粗</span>
              <input type="hidden" value="{$figure.body_thick}" id="body_thick" name="body_thick">
              <ul>
                <li {if $figure.body_thick == 1} class="border5" {/if} value="1"></li>
                <li {if $figure.body_thick == 2} class="border5" {/if} value="2"></li>
                <li {if $figure.body_thick == 3} class="border5" {/if} value="3"><span></span></li>
                <li {if $figure.body_thick == 4} class="border5" {/if} value="4"></li>
                <li {if $figure.body_thick == 5} class="border5" {/if} value="5"></li>
              </ul>
              <span></span>
              <ul>
                <li>上身粗</li>
                <li>一般比例</li>
                <li>下身粗</li>
              </ul>
            </div>
          </li>
          <li>
            <div class="left5 left512">
              <ul>
                <li {if $figure.body_length == 1} class="block5" {/if}><img src="{staticurl action='shenchang2.png' type='img'}"></li>
                <li {if $figure.body_length == 2} class="block5" {/if}><img src="{staticurl action='513.png' type='img'}"></li>
                <li {if $figure.body_length == 3} class="block5" {/if}><img src="{staticurl action='shenchang3.png' type='img'}"></li>
                <li {if $figure.body_length == 4} class="block5" {/if}><img src="{staticurl action='shenchang4.png' type='img'}\"></li>
                <li {if $figure.body_length == 5} class="block5" {/if}><img src="{staticurl action='shenchang5.png' type='img'}"></li>
              </ul>
            </div>
            <div class="right5 right512">
              <span>上下身长</span>
              <input type="hidden" value="{$figure.body_length}" id="body_length" name="body_length">
              <ul>
                <li {if $figure.body_length == 1} class="border5" {/if} value="1"></li>
                <li {if $figure.body_length == 2} class="border5" {/if} value="2"></li>
                <li {if $figure.body_length == 3} class="border5" {/if} value="3"><span></span></li>
                <li {if $figure.body_length == 4} class="border5" {/if} value="4"></li>
                <li {if $figure.body_length == 5} class="border5" {/if} value="5"></li>
              </ul>
              <span></span>
              <ul>
                <li>上身长</li>
                <li>一般比例</li>
                <li>下身长</li>
              </ul>
            </div>
          </li> -->
        </ul>
        <div class="content5_bottom">
          <span>以下特征中你最在意的是（最多3项）</span>
          <ul>
            <li>
              <input type="checkbox">
              <span>胸型</span>
            </li>
            <li>
              <input type="checkbox">
              <span>腰型</span>
            </li>
            <li>
              <input type="checkbox">
              <span>肚腩</span>
            </li>
            <li>
              <input type="checkbox">
              <span>臀形</span>
            </li>
            <li>
              <input type="checkbox">
              <span>胯型</span>
            </li>
            <li>
              <input type="checkbox">
              <span>肩膀</span>
            </li>
            <li>
              <input type="checkbox">
              <span>臂长</span>
            </li>
            <li>
              <input type="checkbox">
              <span>胯部</span>
            </li>
            <li>
              <input type="checkbox">
              <span>大腿</span>
            </li>
            <li>
              <input type="checkbox">
              <span>小腿</span>
            </li>
            <li>
              <input type="checkbox">
              <span>腿长</span>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>  
   <input type="hidden" value="{$face.synthesis_url}" id="face_synthesis_url">
  <input type="hidden" value="{$hairstyle.behide_synthesis_url}" id="behide_synthesis_url">
  <input type="hidden" value="{$hairstyle.front_synthesis_url}" id="front_synthesis_url">
  <input type="hidden" value="{$hwPhoto.behide_ordinate}" id="behide_ordinate">
  <input type="hidden" value="{$hwPhoto.behide_abscissa}" id="behide_abscissa">
  <input type="hidden" value="{$hwPhoto.behide_length}" id="behide_length">
  <input type="hidden" value="{$hwPhoto.behide_width}" id="behide_width">
  <input type="hidden" value="{$hwPhoto.front_ordinate}" id="front_ordinate">
  <input type="hidden" value="{$hwPhoto.front_abscissa}" id="front_abscissa">
  <input type="hidden" value="{$hwPhoto.front_length}" id="front_length">
  <input type="hidden" value="{$hwPhoto.front_width}" id="front_width">
  <input type="hidden" value="{$hwPhoto.boday_url}" id="boday_url">
  <input type="hidden" value="{$hwPhoto.bodylength}" id="bodylength">
   <input type="hidden" value="{$hwPhoto.bodywidth}" id="bodywidth">   
  <input type="hidden" value="{$hwPhoto.cup_length}" id="cup_length"> 
  <input type="hidden" value="{$hwPhoto.leg_width}" id="leg_width"> 
   <input type="hidden" value="{$hwPhoto.leg_length}" id="leg_length"> 
   <input type="hidden" value="{$hwPhoto.leg_abscissa}" id="leg_abscissa"> 
   <input type="hidden" value="{$hwPhoto.leg_url}" id="leg_url"> 
   <input type="hidden" value="{$hwPhoto.bodyordinate}" id="bodyordinate"> 
   <input type="hidden" value="{$hwPhoto.bodyabscissa}" id="bodyabscissa"> 
   <input type="hidden" value="{$hwPhoto.cup_ordinate}" id="cup_ordinate"> 
   <input type="hidden" value="{$hwPhoto.cup_width}" id="cup_width"> 
   <input type="hidden" value="{$hwPhoto.cup_abscissa}" id="cup_abscissa"> 
   <input type="hidden" value="{$hwPhoto.neck}" id="neck"> 
   <input type="hidden" value="{$hwPhoto.face_ordinate}" id="face_ordinate">
  <input type="hidden" value="{$hwPhoto.face_abscissa}" id="face_abscissa">
  <input type="hidden" value="{$hwPhoto.face_length}" id="face_length">
  <input type="hidden" value="{$hwPhoto.face_width}" id="face_width">
 <div class="footer4">
    <input type="submit" value="完成">
  </div>
  </form>
  {literal}
  <script type="text/javascript">
   $(document).ready(function(){  
          var facestyle = $("#face_synthesis_url").val(); 
          var behidestyle = $("#behide_synthesis_url").val();
          var frontstyle= $("#front_synthesis_url").val();
          var shoes= $("#shoes_synthesis_url").val(); 
          var beo =$("#behide_ordinate").val();
          var bea = $("#behide_abscissa").val();
          var bel = $("#behide_length").val();
          var bew = $("#behide_width").val();
          var fao =$("#face_ordinate").val();
          var faa = $("#face_abscissa").val();
          var fal = $("#face_length").val();
          var faw = $("#face_width").val();
          var fro = $("#front_ordinate").val();
          var fra =  $("#front_abscissa").val();
          var frl = $("#front_length").val();
          var frw = $("#front_width").val();
         var body=$("#boday_url").val();
         var bodylength=$("#bodylength").val(); 
         var leg=$("#leg_url").val();
         var cup_length= $("#cup_length").val(); 
         var bodywidth=$("#bodywidth").val();   
         var bodyordinate=$("#bodyordinate").val();   
         var bodyabscissa=$("#bodyabscissa").val();
         var cup_ordinate=$("#cup_ordinate").val(); 
         var cup_abscissa=$("#cup_abscissa").val();
         var cup_width=$("#cup_width").val();          
         var leg_width=$("#leg_width").val(); 
         var leg_length=$("#leg_length").val(); 
          var leg_abscissa=$("#leg_abscissa").val(); 
            var neck=$("#neck").val();
         var canvas = document.getElementById("MyCanvas"); 
                var ctx = canvas.getContext("2d"); 
                var canvas1 = document.getElementById("behid_hair"); 
                var ctx1 = canvas1.getContext("2d");
                var canvas2 = document.getElementById("hair"); 
                var ctx2 = canvas2.getContext("2d");
                // console.log(bodywidth)
                //后面的头发
                // var img = new Image(); 
                //    img.crossOrigin =" anonymous" ; 
                //    img.src =behidestyle; 
                //    ctx1.clearRect(0,0,1000,1000); 
                //    img.onload = function(){
                //        ctx1.drawImage(img,parseInt(beo)+3,parseInt(bea)+70,bel,bew);  
                //     }
                //脸  
                var img3 = new Image(); 
                    img3.crossOrigin =" anonymous"; 
                    img3.src ="/static/images/yuandanlian.png"; 
                   ctx.clearRect(0,0,1000,1000); 
                img3.onload = function () //确保图片已经加载完毕  
                {  
                  ctx.drawImage(img3,114,faa,65,75);  
                     //脖子
                    var img1 = new Image(); 
                        img1.crossOrigin =" anonymous" ; 
                        img1.src= "/static/images/bozi1.png"; 
                    img1.onload = function () //确保图片已经加载完毕  
                    {  
                      ctx.drawImage(img1,104,neck,90,42);  
                    } 
                      ctx.globalCompositeOperation="destination-over";
                    //身子
                    var img2 = new Image();
                        img2.crossOrigin =" anonymous" ; 
                        img2.src="/static/images/101357.png"; 
                    img2.onload = function () //确保图片已经加载完毕  
                    {  
                          ctx.drawImage(img2,71,bodyabscissa,bodywidth,280);   
                          // ctx.drawImage(img2,71,147,161,241);  
                          // console.log(body)
                     } 
                     //腿
                    var img6 = new Image();
                        img6.crossOrigin =" anonymous" ; 
                        img6.src=leg; 
                         // ctx.clearRect(0,0,1000,1000); 
                    img6.onload = function () //确保图片已经加载完毕  
                    {  
                          ctx.drawImage(img6,103,leg_abscissa,leg_width,leg_length);   
                          // ctx.drawImage(img6,104,385,89,115); 
                          // console.log(leg_width) 
                     } 
                 }
                 //前面的头发  
                 var img4 = new Image(); 
                     img4.crossOrigin =" anonymous" ; 
                     img4.src =frontstyle; 
                   // ctx.clearRect(0,0,1000,1000); 
                img4.onload = function () //确保图片已经加载完毕  
                {  
                  ctx2.drawImage(img4,112,fra,67,59); 
                 }
                //胸罩  
                 var img7 = new Image(); 
                     img7.crossOrigin =" anonymous" ; 
                     img7.src ="/static/images/xiongzhao.png"; 
                   // ctx.clearRect(0,0,1000,1000); 
                img7.onload = function () //确保图片已经加载完毕  
                {  
                  ctx2.drawImage(img7,cup_ordinate,cup_abscissa,cup_width,cup_length); 
                   // ctx.drawImage(img7,97,120,110,175);
                 }

   });
  function changge(key,localfigure) {
	  $.ajax({
			type: "POST",
			url: 'ajaxChangeFigure',
			data: {key:key,localfigure:localfigure},
			datatype:'json',
			success: function(data) {
				var member = eval('('+data+')');
				if(member.status == 200) { 
                var body =member.data['hwPhoto']['boday_url']; 
                var leg =member.data['hwPhoto']['leg_url']; 
                var behidestyle =member.data['hairstyle']['behide_synthesis_url'];
                var bodylength= member.data['hwPhoto']['bodylength']; 
                var bodywidth= member.data['hwPhoto']['bodywidth']; 
                var bodyordinate= member.data['hwPhoto']['bodyordinate']; 
                var bodyabscissa= member.data['hwPhoto']['bodyabscissa']; 
                var leg_length= member.data['hwPhoto']['leg_length']; 
                var leg_width= member.data['hwPhoto']['leg_width']; 
                var leg_abscissa= member.data['hwPhoto']['leg_abscissa']; 
                var cup_ordinate= member.data['hwPhoto']['cup_ordinate']; 
                var cup_abscissa= member.data['hwPhoto']['cup_abscissa']; 
                var cup_width= member.data['hwPhoto']['cup_width']; 
                var cup_length= member.data['hwPhoto']['cup_length']; 
                var neck= member.data['hwPhoto']['neck']; 
                var facestyle =member.data['face']['synthesis_url'];
                var frontstyle=member.data['hairstyle']['front_synthesis_url'];
                var beo =member.data['hwPhoto']['behide_ordinate'];
                var bea = member.data['hwPhoto']['behide_abscissa'];
                  var bel = member.data['hwPhoto']['behide_length'];
                  var bew = member.data['hwPhoto']['behide_width'];
                  var fro = member.data['hwPhoto']['front_ordinate'];
                  var fra = member.data['hwPhoto']['front_abscissa'];
                  var frl = member.data['hwPhoto']['front_length'];
                  var frw = member.data['hwPhoto']['front_width'];
                   var fao = member.data['hwPhoto']['face_ordinate'];
                  var faa = member.data['hwPhoto']['face_abscissa'];
                  var fal = member.data['hwPhoto']['face_length'];
                  var faw = member.data['hwPhoto']['face_width'];
                var canvas = document.getElementById("MyCanvas"); 
                var ctx = canvas.getContext("2d"); 
                var canvas1 = document.getElementById("behid_hair"); 
                var ctx1 = canvas1.getContext("2d");
                var canvas2 = document.getElementById("hair"); 
                var ctx2 = canvas2.getContext("2d");
                //后面的头发
                // var img = new Image(); 
                //    img.crossOrigin =" anonymous" ; 
                //    img.src =behidestyle; 
                //    ctx1.clearRect(0,0,1000,1000); 
                //    img.onload = function(){
                //        ctx1.drawImage(img,parseInt(beo)+3,parseInt(bea)+70,bel,bew);  
                //     }
                //脸  
                var img3 = new Image(); 
                    img3.crossOrigin =" anonymous"; 
                    img3.src ="/static/images/yuandanlian.png"; 
                   ctx.clearRect(0,0,1000,1000); 
                img3.onload = function () //确保图片已经加载完毕  
                {  
                  ctx.drawImage(img3,114,faa,65,75);  
                     //脖子
                    var img1 = new Image(); 
                        img1.crossOrigin =" anonymous" ; 
                        img1.src= "/static/images/bozi1.png"; 
                    img1.onload = function () //确保图片已经加载完毕  
                    {  
                      ctx.drawImage(img1,104,neck,90,42);  
                    } 
                      ctx.globalCompositeOperation="destination-over";
                    //身子
                    var img2 = new Image();
                        img2.crossOrigin =" anonymous" ; 
                        img2.src=body; 
                    img2.onload = function () //确保图片已经加载完毕  
                    {  
                          ctx.drawImage(img2,71,bodyabscissa,161,bodylength);    
                          // ctx.drawImage(img2,71,127,161,251);
                          // console.log(body)  
                     }
                     //腿
                    var img6 = new Image();
                        img6.crossOrigin =" anonymous" ; 
                        img6.src=leg; 
                         // ctx.clearRect(0,0,1000,1000); 
                    img6.onload = function () //确保图片已经加载完毕  
                    {  
                          ctx.drawImage(img6,104,leg_abscissa,leg_width,leg_length); 
                          // ctx.drawImage(img6,104,375,89,125); 

                     }
           
                 }
                 //前面的头发  
                 var img4 = new Image(); 
                     img4.crossOrigin =" anonymous" ; 
                     img4.src =frontstyle; 
                   ctx2.clearRect(0,0,1000,1000); 
                img4.onload = function () //确保图片已经加载完毕  
                {  
                  ctx2.drawImage(img4,112,fra,67,59); 
                 }
                //胸罩  
                 var img7 = new Image(); 
                     img7.crossOrigin =" anonymous" ; 
                     img7.src ="/static/images/xiongzhao.png"; 
                   // ctx.clearRect(0,0,1000,1000); 
                img7.onload = function () //确保图片已经加载完毕  
                {  
                  ctx2.drawImage(img7,cup_ordinate,cup_abscissa,cup_width,cup_length); 
                 } 
				}
			}
	  })
	  
  }
  </script>
  {/literal}
</body>
</html>