{include file="common/header.tpl" pageTitle="我的"}
<form action="edit" id="myform" method="post">
<input type="hidden" name="user_figure_id" value="{$figure.user_figure_id}">
  <div class="content5">
    <div class="content5_top">
      <ul>
        <li><img src="{staticurl action='119.png' type='img'}"></li>
        <li><img src="{staticurl action='104.png' type='img'}"></li>
      </ul>
      <div>
        <span class="color5 round51"></span>
        <span class="round52"></span>
      </div>
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
                <li {if $figure.waist == 2} class="block5" {/if}><img src="{staticurl action='yao2.png' type='img'}"></li>
                <li {if $figure.waist == 3} class="block5" {/if}><img src="{staticurl action='yao3.png' type='img'}"></li>
                <li {if $figure.waist == 4} class="block5" {/if}><img src="{staticurl action='yao4.png' type='img'}"></li>
                <li {if $figure.waist == 5} class="block5" {/if}><img src="{staticurl action='502.png' type='img'}"></li>
              </ul>
            </div>
            <div class="right5 right51">
              <span>腰型</span>
               <input type="hidden" value="{$figure.waist}" id="waist" name="waist">
              <ul>
                <li {if $figure.waist == 1} class="border5" {/if} value="1"></li>
                <li {if $figure.waist == 2} class="border5" {/if} value="2"></li>
                <li {if $figure.waist == 3} class="border5" {/if} value="3"><span></span></li>
                <li {if $figure.waist == 4} class="border5" {/if} value="4"></li>
                <li {if $figure.waist == 5} class="border5" {/if} value="5"></li>
              </ul>
              <span></span>
              <ul>
                <li>直筒</li>
                <li>有曲线</li>
                <li>曲线明显</li>
              </ul>
            </div>
          </li>
          <li>
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
          </li>
          <li>
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
          </li>
          <li>
            <div class="left5 left54">
              <ul>
                <li  {if $figure.hip_type== 1} class="block5" {/if}><img src="{staticurl action='505.png' type='img'}"></li>
                <li  {if $figure.hip_type == 2} class="block5" {/if}><img src="{staticurl action='kua2.png' type='img'}"></li>
                <li  {if $figure.hip_type == 3} class="block5" {/if}><img src="{staticurl action='kua3.png' type='img'}"></li>
                <li  {if $figure.hip_type == 4} class="block5" {/if}><img src="{staticurl action='kua4.png' type='img'}"></li>
                <li  {if $figure.hip_type == 5} class="block5" {/if}><img src="{staticurl action='kua5.png' type='img'}"></li>
              </ul>
            </div>
            <div class="right5 right54">
              <span>胯型</span>
              <input type="hidden" value="{$figure.hip_type}" id="hip_type" name="waist">
              <ul>
                <li {if $figure.hip_type == 1} class="border5" {/if} value="1"></li>
                <li {if $figure.hip_type == 2} class="border5" {/if} value="2"></li>
                <li {if $figure.hip_type == 3} class="border5" {/if} value="3"><span></span></li>
                <li {if $figure.hip_type == 4} class="border5" {/if} value="4"></li>
                <li {if $figure.hip_type == 5} class="border5" {/if} value="5"></li>
              </ul>
              <span></span>
              <ul>
                <li>直筒</li>
                <li>有曲线</li>
                <li>曲线明显</li>
              </ul>
            </div>
          </li>
          <li>
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
          </li>
          <li>
            <div class="left5 left56">
              <ul>
                <li {if $figure.arm == 1} class="block5" {/if}><img src="{staticurl action='507.png' type='img'}"></li>
                <li {if $figure.arm == 2} class="block5" {/if}><img src="{staticurl action='bi1.png' type='img'}"></li>
                <li {if $figure.arm == 3} class="block5" {/if}><img src="{staticurl action='bi3.png' type='img'}"></li>
                <li {if $figure.arm == 4} class="block5" {/if}><img src="{staticurl action='bi4.png' type='img'}"></li>
                <li {if $figure.arm == 5} class="block5" {/if}><img src="{staticurl action='bi5.png' type='img'}"></li>
              </ul>
            </div>
            <div class="right5 right56">
              <span>臂长</span>
              <input type="hidden" value="{$figure.arm}" id="arm" name="arm">
              <ul>
                <li {if $figure.arm == 1} class="border5" {/if} value="1"></li>
                <li {if $figure.arm == 2} class="border5" {/if} value="2"></li>
                <li {if $figure.arm == 3} class="border5" {/if} value="3"><span></span></li>
                <li {if $figure.arm == 4} class="border5" {/if} value="4"></li>
                <li {if $figure.arm == 5} class="border5" {/if} value="5"></li>
              </ul>
              <span></span>
              <ul>
                <li>短</li>
                <li>正常</li>
                <li>长</li>
              </ul>
            </div>
          </li>
          <li>
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
          </li>
          <li>
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
          </li>
          <li>
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
          </li>
          <li>
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
          </li>
          <li>
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
          </li>
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
  
  <div class="footer4">
    <input type="submit" value="完成">
  </div>
  </form>
</body>
</html>