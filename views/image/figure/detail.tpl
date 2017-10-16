{include file="common/header.tpl" pageTitle="我的"}
<form action="detail" id="myform" method="post">
<input type="hidden" name="user_body_id" value="{$body.user_body_id}">
     <div class="revise">
        <div class="revise_content">
          <span>好购衣®将你的身材信息与亚洲女性身 材数据智能匹配，估算出你的身材数据</span>
        </div>
     </div>
        <ul class="size_list">
          <li>
            <img src="{staticurl action='xunwen.png' type='img'}">
            <span>上胸围</span>
            <select class="first" name="upper_chest_circumference">
              <option {if $body.upper_chest_circumference == 65} selected {/if} value="65" >65cm</option>
              <option {if $body.upper_chest_circumference == 66} selected {/if} value="66">66cm</option>
              <option {if $body.upper_chest_circumference == 67} selected {/if} value="67">67cm</option>
              <option {if $body.upper_chest_circumference == 68} selected {/if} value="68">68cm</option>
              <option {if $body.upper_chest_circumference == 69} selected {/if} value="69">69cm</option>
              <option {if $body.upper_chest_circumference == 70} selected {/if} value="70">70cm</option>
              <option {if $body.upper_chest_circumference == 71} selected {/if} value="71">71cm</option>
              <option {if $body.upper_chest_circumference == 72} selected {/if} value="72">72cm</option>
              <option {if $body.upper_chest_circumference == 73} selected {/if} value="73">73cm</option>
              <option {if $body.upper_chest_circumference == 74} selected {/if} value="74">74cm</option>
              <option {if $body.upper_chest_circumference == 75} selected {/if} value="75">75cm</option>
              <option {if $body.upper_chest_circumference == 76} selected {/if} value="76">76cm</option>
              <option {if $body.upper_chest_circumference == 77} selected {/if} value="77">77cm</option>
              <option {if $body.upper_chest_circumference == 78} selected {/if} value="78">78cm</option>
              <option {if $body.upper_chest_circumference == 79} selected {/if} value="79">79cm</option>
              <option {if $body.upper_chest_circumference == 80} selected {/if} value="80">80cm</option>
              <option {if $body.upper_chest_circumference == 81} selected {/if} value="81">81cm</option>
              <option {if $body.upper_chest_circumference == 82} selected {/if} value="82">82cm</option>
              <option {if $body.upper_chest_circumference == 83} selected {/if} value="83">83cm</option>
              <option {if $body.upper_chest_circumference == 84} selected {/if} value="84">84cm</option>
              <option {if $body.upper_chest_circumference == 85} selected {/if} value="85">85cm</option>
              <option {if $body.upper_chest_circumference == 86} selected {/if} value="86">86cm</option>
              <option {if $body.upper_chest_circumference == 87} selected {/if} value="87">87cm</option>
              <option {if $body.upper_chest_circumference == 88} selected {/if} value="88">88cm</option>
              <option {if $body.upper_chest_circumference == 89} selected {/if} value="89">89cm</option>
              <option {if $body.upper_chest_circumference == 90} selected {/if} value="90">90cm</option>
              <option {if $body.upper_chest_circumference == 91} selected {/if} value="91">91cm</option>
              <option {if $body.upper_chest_circumference == 92} selected {/if} value="92">92cm</option>
              <option {if $body.upper_chest_circumference == 93} selected {/if} value="93">93cm</option>
              <option {if $body.upper_chest_circumference == 94} selected {/if} value="94">94cm</option>
              <option {if $body.upper_chest_circumference == 95} selected {/if} value="95">95cm</option>
              <option {if $body.upper_chest_circumference == 96} selected {/if} value="96">96cm</option>
              <option {if $body.upper_chest_circumference == 97} selected {/if} value="97">97cm</option>
              <option {if $body.upper_chest_circumference == 98} selected {/if} value="98">98cm</option>
              <option {if $body.upper_chest_circumference == 99} selected {/if} value="99">99cm</option>
              <option {if $body.upper_chest_circumference == 100} selected {/if} value="100">100cm</option>
              <option {if $body.upper_chest_circumference == 101} selected {/if} value="101">101cm</option>
              <option {if $body.upper_chest_circumference == 102} selected {/if} value="102">102cm</option>
              <option {if $body.upper_chest_circumference == 103} selected {/if} value="103">103cm</option>
              <option {if $body.upper_chest_circumference == 104} selected {/if} value="104">104cm</option>
              <option {if $body.upper_chest_circumference == 105} selected {/if} value="105">105cm</option>
              <option {if $body.upper_chest_circumference == 106} selected {/if} value="106">106cm</option>
              <option {if $body.upper_chest_circumference == 107} selected {/if} value="107">107cm</option>
              <option {if $body.upper_chest_circumference == 108} selected {/if} value="108">108cm</option>
              <option {if $body.upper_chest_circumference == 109} selected {/if} value="109">109cm</option>
              <option {if $body.upper_chest_circumference == 110} selected {/if} value="110">110cm</option>
              <option {if $body.upper_chest_circumference == 111} selected {/if} value="111">111cm</option>
              <option {if $body.upper_chest_circumference == 112} selected {/if} value="112">112cm</option>
              <option {if $body.upper_chest_circumference == 113} selected {/if} value="113">113cm</option>
              <option {if $body.upper_chest_circumference == 114} selected {/if} value="114">114cm</option>
              <option {if $body.upper_chest_circumference == 115} selected {/if} value="115">115cm</option>
            </select>
          </li>
          <li>
            <img src="{staticurl action='xunwen.png' type='img'}">
            <span>肩宽</span>
            <select class="second" name="s_width">
              <option {if $body.s_width == 30} selected {/if} value="30">30cm</option>
              <option {if $body.s_width == 31} selected {/if} value="31">31cm</option>
              <option {if $body.s_width == 32} selected {/if} value="32">32cm</option>
              <option {if $body.s_width == 33} selected {/if} value="33">33cm</option>
              <option {if $body.s_width == 34} selected {/if} value="34">34cm</option>
              <option {if $body.s_width == 35} selected {/if} value="35">35cm</option>
              <option {if $body.s_width == 36} selected {/if} value="36">36cm</option>
              <option {if $body.s_width == 37} selected {/if} value="37">37cm</option>
              <option {if $body.s_width == 38} selected {/if} value="38">38cm</option>
              <option {if $body.s_width == 39} selected {/if} value="39">39cm</option>
              <option {if $body.s_width == 40} selected {/if} value="40">40cm</option>
              <option {if $body.s_width == 41} selected {/if} value="41">41cm</option>
              <option {if $body.s_width == 42} selected {/if} value="42">42cm</option>
              <option {if $body.s_width == 43} selected {/if} value="43">43cm</option>
              <option {if $body.s_width == 44} selected {/if} value="44">44cm</option>
              <option {if $body.s_width == 45} selected {/if} value="45">45cm</option>
              <option {if $body.s_width == 46} selected {/if} value="46">46cm</option>
            </select>
          </li>
          <li>
            <img src="{staticurl action='xunwen.png' type='img'}">
            <span>下胸围</span>
            <select class="third" name="lower_chest_circumference">
              <option {if $body.lower_chest_circumference == 52} selected {/if} value="52">52cm</option>
              <option {if $body.lower_chest_circumference == 53} selected {/if} value="53">53cm</option>
              <option {if $body.lower_chest_circumference == 54} selected {/if} value="54">54cm</option>
              <option {if $body.lower_chest_circumference == 55} selected {/if} value="55">55cm</option>
              <option {if $body.lower_chest_circumference == 56} selected {/if} value="56">56cm</option>
              <option {if $body.lower_chest_circumference == 57} selected {/if} value="57">57cm</option>
              <option {if $body.lower_chest_circumference == 58} selected {/if} value="58">58cm</option>
              <option {if $body.lower_chest_circumference == 59} selected {/if} value="59">59cm</option>
              <option {if $body.lower_chest_circumference == 60} selected {/if} value="60">60cm</option>
              <option {if $body.lower_chest_circumference == 61} selected {/if} value="61">61cm</option>
              <option {if $body.lower_chest_circumference == 62} selected {/if} value="62">62cm</option>
              <option {if $body.lower_chest_circumference == 63} selected {/if} value="63">63cm</option>
              <option {if $body.lower_chest_circumference == 64} selected {/if} value="64">64cm</option>
              <option {if $body.lower_chest_circumference == 65} selected {/if} value="65">65cm</option>
              <option {if $body.lower_chest_circumference == 66} selected {/if} value="66">66cm</option>
              <option {if $body.lower_chest_circumference == 67} selected {/if} value="67">67cm</option>
              <option {if $body.lower_chest_circumference == 68} selected {/if} value="68">68cm</option>
              <option {if $body.lower_chest_circumference == 69} selected {/if} value="69">69cm</option>
              <option {if $body.lower_chest_circumference == 70} selected {/if} value="70">70cm</option>
              <option {if $body.lower_chest_circumference == 71} selected {/if} value="71">71cm</option>
              <option {if $body.lower_chest_circumference == 72} selected {/if} value="72">72cm</option>
              <option {if $body.lower_chest_circumference == 73} selected {/if} value="73">73cm</option>
              <option {if $body.lower_chest_circumference == 74} selected {/if} value="74">74cm</option>
              <option {if $body.lower_chest_circumference == 75} selected {/if} value="75">75cm</option>
              <option {if $body.lower_chest_circumference == 76} selected {/if} value="76">76cm</option>
              <option {if $body.lower_chest_circumference == 77} selected {/if} value="77">77cm</option>
              <option {if $body.lower_chest_circumference == 78} selected {/if} value="78">78cm</option>
              <option {if $body.lower_chest_circumference == 79} selected {/if} value="79">79cm</option>
              <option {if $body.lower_chest_circumference == 80} selected {/if} value="80">80cm</option>
              <option {if $body.lower_chest_circumference == 81} selected {/if} value="81">81cm</option>
              <option {if $body.lower_chest_circumference == 82} selected {/if} value="82">82cm</option>
              <option {if $body.lower_chest_circumference == 83} selected {/if} value="83">83cm</option>
              <option {if $body.lower_chest_circumference == 84} selected {/if} value="84">84cm</option>
              <option {if $body.lower_chest_circumference == 85} selected {/if} value="85">85cm</option>
              <option {if $body.lower_chest_circumference == 86} selected {/if} value="86">86cm</option>
              <option {if $body.lower_chest_circumference == 87} selected {/if} value="87">87cm</option>
              <option {if $body.lower_chest_circumference == 88} selected {/if} value="88">88cm</option>
              <option {if $body.lower_chest_circumference == 89} selected {/if} value="89">89cm</option>
              <option {if $body.lower_chest_circumference == 90} selected {/if} value="90">90cm</option>
              <option {if $body.lower_chest_circumference == 91} selected {/if} value="91">91cm</option>
              <option {if $body.lower_chest_circumference == 92} selected {/if} value="92">92cm</option>
              <option {if $body.lower_chest_circumference == 93} selected {/if} value="93">93cm</option>
              <option {if $body.lower_chest_circumference == 94} selected {/if} value="94">94cm</option>
              <option {if $body.lower_chest_circumference == 95} selected {/if} value="95">95cm</option>
              <option {if $body.lower_chest_circumference == 96} selected {/if} value="96">96cm</option>
              <option {if $body.lower_chest_circumference == 97} selected {/if} value="97">97cm</option>
              <option {if $body.lower_chest_circumference == 98} selected {/if} value="98">98cm</option>
              <option {if $body.lower_chest_circumference == 99} selected {/if} value="99">99cm</option>
              <option {if $body.lower_chest_circumference == 100} selected {/if} value="100">100cm</option>
              <option {if $body.lower_chest_circumference == 101} selected {/if} value="101">101cm</option>
              <option {if $body.lower_chest_circumference == 102} selected {/if} value="102">102cm</option>
              <option {if $body.lower_chest_circumference == 103} selected {/if} value="103">103cm</option>
              <option {if $body.lower_chest_circumference == 104} selected {/if} value="104">104cm</option>
              <option {if $body.lower_chest_circumference == 105} selected {/if} value="105">105cm</option>
              <option {if $body.lower_chest_circumference == 106} selected {/if} value="106">106cm</option>
            </select>
          </li>
          <li>
            <img src="{staticurl action='xunwen.png' type='img'}">
            <span>臂围</span>
            <select class="forth" name="arm_circumference">
              <option {if $body.arm_circumference == 21} selected {/if} value="21">21cm</option>
              <option {if $body.arm_circumference == 22} selected {/if} value="22">22cm</option>
              <option {if $body.arm_circumference == 23} selected {/if} value="23">23cm</option>
              <option {if $body.arm_circumference == 24} selected {/if} value="24">24cm</option>
              <option {if $body.arm_circumference == 25} selected {/if} value="25">25cm</option>
              <option {if $body.arm_circumference == 26} selected {/if} value="26">26cm</option>
              <option {if $body.arm_circumference == 27} selected {/if} value="27">27cm</option>
              <option {if $body.arm_circumference == 28} selected {/if} value="28">28cm</option>
              <option {if $body.arm_circumference == 29} selected {/if} value="29">29cm</option>
              <option {if $body.arm_circumference == 30} selected {/if} value="30">30cm</option>
              <option {if $body.arm_circumference == 31} selected {/if} value="31">31cm</option>
              <option {if $body.arm_circumference == 32} selected {/if} value="32">32cm</option>
              <option {if $body.arm_circumference == 33} selected {/if} value="33">33cm</option>
              <option {if $body.arm_circumference == 34} selected {/if} value="34">34cm</option>
              <option {if $body.arm_circumference == 35} selected {/if} value="35">35cm</option>
              <option {if $body.arm_circumference == 36} selected {/if} value="36">36cm</option>
              <option {if $body.arm_circumference == 37} selected {/if} value="37">37cm</option>
            </select>
          </li>
          <li>
            <img src="{staticurl action='xunwen.png' type='img'}">
            <span>腰围</span>
            <select class="fifth" name="kummerbund">
              <option {if $body.kummerbund == 44} selected {/if} value="44">44cm</option>
              <option {if $body.kummerbund == 45} selected {/if} value="45">45cm</option>
              <option {if $body.kummerbund == 46} selected {/if} value="46">46cm</option>
              <option {if $body.kummerbund == 47} selected {/if} value="47">47cm</option>
              <option {if $body.kummerbund == 48} selected {/if} value="48">48cm</option>
              <option {if $body.kummerbund == 49} selected {/if} value="49">49cm</option>
              <option {if $body.kummerbund == 50} selected {/if} value="50">50cm</option>
              <option {if $body.kummerbund == 51} selected {/if} value="51">50cm</option>
              <option {if $body.kummerbund == 52} selected {/if} value="52">52cm</option>
              <option {if $body.kummerbund == 53} selected {/if} value="53">53cm</option>
              <option {if $body.kummerbund == 54} selected {/if} value="54">54cm</option>
              <option {if $body.kummerbund == 55} selected {/if} value="55">55cm</option>
              <option {if $body.kummerbund == 56} selected {/if} value="56">56cm</option>
              <option {if $body.kummerbund == 57} selected {/if} value="57">57cm</option>
              <option {if $body.kummerbund == 58} selected {/if} value="58">58cm</option>
              <option {if $body.kummerbund == 59} selected {/if} value="59">59cm</option>
              <option {if $body.kummerbund == 60} selected {/if} value="60">60cm</option>
              <option {if $body.kummerbund == 61} selected {/if} value="61">61cm</option>
              <option {if $body.kummerbund == 62} selected {/if} value="62">62cm</option>
              <option {if $body.kummerbund == 63} selected {/if} value="63">63cm</option>
              <option {if $body.kummerbund == 64} selected {/if} value="64">64cm</option>
              <option {if $body.kummerbund == 65} selected {/if} value="65">65cm</option>
              <option {if $body.kummerbund == 66} selected {/if} value="66">66cm</option>
              <option {if $body.kummerbund == 67} selected {/if} value="67">67cm</option>
              <option {if $body.kummerbund == 68} selected {/if} value="68">68cm</option>
              <option {if $body.kummerbund == 69} selected {/if} value="69">69cm</option>
              <option {if $body.kummerbund == 70} selected {/if} value="70">70cm</option>
              <option {if $body.kummerbund == 71} selected {/if} value="71">71cm</option>
              <option {if $body.kummerbund == 72} selected {/if} value="72">72cm</option>
              <option {if $body.kummerbund == 73} selected {/if} value="73">73cm</option>
              <option {if $body.kummerbund == 74} selected {/if} value="74">74cm</option>
              <option {if $body.kummerbund == 75} selected {/if} value="75">75cm</option>
              <option {if $body.kummerbund == 76} selected {/if} value="76">76cm</option>
              <option {if $body.kummerbund == 77} selected {/if} value="77">77cm</option>
              <option {if $body.kummerbund == 78} selected {/if} value="78">78cm</option>
              <option {if $body.kummerbund == 79} selected {/if} value="79">79cm</option>
              <option {if $body.kummerbund == 80} selected {/if} value="80">80cm</option>
              <option {if $body.kummerbund == 81} selected {/if} value="81">81cm</option>
              <option {if $body.kummerbund == 82} selected {/if} value="82">82cm</option>
              <option {if $body.kummerbund == 83} selected {/if} value="83">83cm</option>
              <option {if $body.kummerbund == 84} selected {/if} value="84">84cm</option>
              <option {if $body.kummerbund == 85} selected {/if} value="85">85cm</option>
              <option {if $body.kummerbund == 86} selected {/if} value="86">86cm</option>
              <option {if $body.kummerbund == 87} selected {/if} value="87">87cm</option>
              <option {if $body.kummerbund == 88} selected {/if} value="88">88cm</option>
              <option {if $body.kummerbund == 89} selected {/if} value="89">89cm</option>
              <option {if $body.kummerbund == 90} selected {/if} value="90">90cm</option>
              <option {if $body.kummerbund == 91} selected {/if} value="91">91cm</option>
              <option {if $body.kummerbund == 92} selected {/if} value="92">92cm</option>
              <option {if $body.kummerbund == 93} selected {/if} value="93">93cm</option>
              <option {if $body.kummerbund == 94} selected {/if} value="94">94cm</option>
              <option {if $body.kummerbund == 95} selected {/if} value="95">95cm</option>
              <option {if $body.kummerbund == 96} selected {/if} value="96">96cm</option>
              <option {if $body.kummerbund == 97} selected {/if} value="97">97cm</option>
              <option {if $body.kummerbund == 98} selected {/if} value="98">98cm</option>
              <option {if $body.kummerbund == 99} selected {/if} value="99">99cm</option>
              <option {if $body.kummerbund == 100} selected {/if} value="100">100cm</option>
              <option {if $body.kummerbund == 101} selected {/if} value="101">101cm</option>
              <option {if $body.kummerbund == 102} selected {/if} value="102">102cm</option>
              <option {if $body.kummerbund == 103} selected {/if} value="103">103cm</option>
              <option {if $body.kummerbund == 104} selected {/if} value="104">104cm</option>
              <option {if $body.kummerbund == 105} selected {/if} value="105">105cm</option>
              <option {if $body.kummerbund == 106} selected {/if} value="106">106cm</option>
              <option {if $body.kummerbund == 107} selected {/if} value="107">107cm</option>
            </select>
          </li>
          <li>
            <img src="{staticurl action='xunwen.png' type='img'}">
            <span>臂长</span>
            <select class="sixth" name="arm_length">
              <option {if $body.arm_length == 39} selected {/if} value="39">39cm</option>
              <option {if $body.arm_length == 40} selected {/if} value="40">40cm</option>
              <option {if $body.arm_length == 41} selected {/if} value="41">41cm</option>
              <option {if $body.arm_length == 42} selected {/if} value="42">42cm</option>
              <option {if $body.arm_length == 43} selected {/if} value="43">43cm</option>
              <option {if $body.arm_length == 44} selected {/if} value="44">44cm</option>
              <option {if $body.arm_length == 45} selected {/if} value="45">45cm</option>
              <option {if $body.arm_length == 46} selected {/if} value="46">46cm</option>
              <option {if $body.arm_length == 47} selected {/if} value="47">47cm</option>
              <option {if $body.arm_length == 48} selected {/if} value="48">48cm</option>
              <option {if $body.arm_length == 49} selected {/if} value="49">49cm</option>
              <option {if $body.arm_length == 50} selected {/if} value="50">50cm</option>
              <option {if $body.arm_length == 51} selected {/if} value="51">50cm</option>
              <option {if $body.arm_length == 52} selected {/if} value="52">52cm</option>
              <option {if $body.arm_length == 53} selected {/if} value="53">53cm</option>
              <option {if $body.arm_length == 54} selected {/if} value="54">54cm</option>
              <option {if $body.arm_length == 55} selected {/if} value="55">55cm</option>
              <option {if $body.arm_length == 56} selected {/if} value="56">56cm</option>
              <option {if $body.arm_length == 57} selected {/if} value="57">57cm</option>
              <option {if $body.arm_length == 58} selected {/if} value="58">58cm</option>
              <option {if $body.arm_length == 59} selected {/if} value="59">59cm</option>
              <option {if $body.arm_length == 60} selected {/if} value="60">60cm</option>
              <option {if $body.arm_length == 61} selected {/if} value="61">61cm</option>
              <option {if $body.arm_length == 62} selected {/if} value="62">62cm</option>
              <option {if $body.arm_length == 63} selected {/if} value="63">63cm</option>
              <option {if $body.arm_length == 64} selected {/if} value="64">64cm</option>
              <option {if $body.arm_length == 65} selected {/if} value="65">65cm</option>
            </select>
          </li>
          <li>
            <img src="{staticurl action='xunwen.png' type='img'}">
            <span>臀围</span>
            <select class="seventh" name="hipline">
              <option {if $body.hipline == 74} selected {/if} value="74">74cm</option>
              <option {if $body.hipline == 75} selected {/if} value="75">75cm</option>
              <option {if $body.hipline == 76} selected {/if} value="76">76cm</option>
              <option {if $body.hipline == 77} selected {/if} value="77">77cm</option>
              <option {if $body.hipline == 78} selected {/if} value="78">78cm</option>
              <option {if $body.hipline == 79} selected {/if} value="79">79cm</option>
              <option {if $body.hipline == 80} selected {/if} value="80">80cm</option>
              <option {if $body.hipline == 81} selected {/if} value="81">81cm</option>
              <option {if $body.hipline == 82} selected {/if} value="82">82cm</option>
              <option {if $body.hipline == 83} selected {/if} value="83">83cm</option>
              <option {if $body.hipline == 84} selected {/if} value="84">84cm</option>
              <option {if $body.hipline == 85} selected {/if} value="85">85cm</option>
              <option {if $body.hipline == 86} selected {/if} value="86">86cm</option>
              <option {if $body.hipline == 87} selected {/if} value="87">87cm</option>
              <option {if $body.hipline == 88} selected {/if} value="88">88cm</option>
              <option {if $body.hipline == 89} selected {/if} value="89">89cm</option>
              <option {if $body.hipline == 90} selected {/if} value="90">90cm</option>
              <option {if $body.hipline == 91} selected {/if} value="91">91cm</option>
              <option {if $body.hipline == 92} selected {/if} value="92">92cm</option>
              <option {if $body.hipline == 93} selected {/if} value="93">93cm</option>
              <option {if $body.hipline == 94} selected {/if} value="94">94cm</option>
              <option {if $body.hipline == 95} selected {/if} value="95">95cm</option>
              <option {if $body.hipline == 96} selected {/if} value="96">96cm</option>
              <option {if $body.hipline == 97} selected {/if} value="97">97cm</option>
              <option {if $body.hipline == 98} selected {/if} value="98">98cm</option>
              <option {if $body.hipline == 99} selected {/if} value="99">99cm</option>
              <option {if $body.hipline == 100} selected {/if} value="100">100cm</option>
              <option {if $body.hipline == 101} selected {/if} value="101">101cm</option>
              <option {if $body.hipline == 102} selected {/if} value="102">102cm</option>
              <option {if $body.hipline == 103} selected {/if} value="103">103cm</option>
              <option {if $body.hipline == 104} selected {/if} value="104">104cm</option>
              <option {if $body.hipline == 105} selected {/if} value="105">105cm</option>
              <option {if $body.hipline == 106} selected {/if} value="106">106cm</option>
              <option {if $body.hipline == 107} selected {/if} value="107">107cm</option>
              <option {if $body.hipline == 108} selected {/if} value="108">108cm</option>
              <option {if $body.hipline == 109} selected {/if} value="109">109cm</option>
              <option {if $body.hipline == 110} selected {/if} value="110">110cm</option>
              <option {if $body.hipline == 111} selected {/if} value="111">111cm</option>
              <option {if $body.hipline == 112} selected {/if} value="112">112cm</option>
              <option {if $body.hipline == 113} selected {/if} value="113">113cm</option>
              <option {if $body.hipline == 114} selected {/if} value="114">114cm</option>
            </select>
          </li>
          <li>
            <img src="{staticurl action='xunwen.png' type='img'}">
            <span>大腿围</span>
            <select class="eighth" name="thigh_girth">
              <option {if $body.thigh_girth == 40} selected {/if} value="40">40cm</option>
              <option {if $body.thigh_girth == 41} selected {/if} value="41">41cm</option>
              <option {if $body.thigh_girth == 42} selected {/if} value="42">42cm</option>
              <option {if $body.thigh_girth == 43} selected {/if} value="43">43cm</option>
              <option {if $body.thigh_girth == 44} selected {/if} value="44">44cm</option>
              <option {if $body.thigh_girth == 45} selected {/if} value="45">45cm</option>
              <option {if $body.thigh_girth == 46} selected {/if} value="46">46cm</option>
              <option {if $body.thigh_girth == 47} selected {/if} value="47">47cm</option>
              <option {if $body.thigh_girth == 48} selected {/if} value="48">48cm</option>
              <option {if $body.thigh_girth == 49} selected {/if} value="49">49cm</option>
              <option {if $body.thigh_girth == 50} selected {/if} value="50">50cm</option>
              <option {if $body.thigh_girth == 51} selected {/if} value="51">50cm</option>
              <option {if $body.thigh_girth == 52} selected {/if} value="52">52cm</option>
              <option {if $body.thigh_girth == 53} selected {/if} value="53">53cm</option>
              <option {if $body.thigh_girth == 54} selected {/if} value="54">54cm</option>
              <option {if $body.thigh_girth == 55} selected {/if} value="55">55cm</option>
              <option {if $body.thigh_girth == 56} selected {/if} value="56">56cm</option>
              <option {if $body.thigh_girth == 57} selected {/if} value="57">57cm</option>
              <option {if $body.thigh_girth == 58} selected {/if} value="58">58cm</option>
              <option {if $body.thigh_girth == 59} selected {/if} value="59">59cm</option>
              <option {if $body.thigh_girth == 60} selected {/if} value="60">60cm</option>
              <option {if $body.thigh_girth == 61} selected {/if} value="61">61cm</option>
              <option {if $body.thigh_girth == 62} selected {/if} value="62">62cm</option>
              <option {if $body.thigh_girth == 63} selected {/if} value="63">63cm</option>
              <option {if $body.thigh_girth == 64} selected {/if} value="64">64cm</option>
              <option {if $body.thigh_girth == 65} selected {/if} value="65">65cm</option>
              <option {if $body.thigh_girth == 66} selected {/if} value="66">66cm</option>
              <option {if $body.thigh_girth == 67} selected {/if} value="67">67cm</option>
              <option {if $body.thigh_girth == 68} selected {/if} value="68">68cm</option>
              <option {if $body.thigh_girth == 69} selected {/if} value="69">69cm</option>
              <option {if $body.thigh_girth == 70} selected {/if} value="70">70cm</option>
            </select>
          </li>
          <li>
            <img src="{staticurl action='xunwen.png' type='img'}">
            <span>腿长</span>
            <select class="ninth" name="long_legs">
              <option {if $body.long_legs == 61} selected {/if} value="61">61cm</option>
              <option {if $body.long_legs == 62} selected {/if} value="62">62cm</option>
              <option {if $body.long_legs == 63} selected {/if} value="63">63cm</option>
              <option {if $body.long_legs == 64} selected {/if} value="64">64cm</option>
              <option {if $body.long_legs == 65} selected {/if} value="65">65cm</option>
              <option {if $body.long_legs == 66} selected {/if} value="66">66cm</option>
              <option {if $body.long_legs == 67} selected {/if} value="67">67cm</option>
              <option {if $body.long_legs == 68} selected {/if} value="68">68cm</option>
              <option {if $body.long_legs == 69} selected {/if} value="69">69cm</option>
              <option {if $body.long_legs == 70} selected {/if} value="70">70cm</option>
              <option {if $body.long_legs == 71} selected {/if} value="71">71cm</option>
              <option {if $body.long_legs == 72} selected {/if} value="72">72cm</option>
              <option {if $body.long_legs == 73} selected {/if} value="73">73cm</option>
              <option {if $body.long_legs == 74} selected {/if} value="74">74cm</option>
              <option {if $body.long_legs == 75} selected {/if} value="75">75cm</option>
              <option {if $body.long_legs == 76} selected {/if} value="76">76cm</option>
              <option {if $body.long_legs == 77} selected {/if} value="77">77cm</option>
              <option {if $body.long_legs == 78} selected {/if} value="78">78cm</option>
              <option {if $body.long_legs == 79} selected {/if} value="79">79cm</option>
              <option {if $body.long_legs == 80} selected {/if} value="80">80cm</option>
              <option {if $body.long_legs == 81} selected {/if} value="81">81cm</option>
              <option {if $body.long_legs == 82} selected {/if} value="82">82cm</option>
              <option {if $body.long_legs == 83} selected {/if} value="83">83cm</option>
              <option {if $body.long_legs == 84} selected {/if} value="84">84cm</option>
              <option {if $body.long_legs == 85} selected {/if} value="85">85cm</option>
              <option {if $body.long_legs == 86} selected {/if} value="86">86cm</option>
              <option {if $body.long_legs == 87} selected {/if} value="87">87cm</option>
              <option {if $body.long_legs == 88} selected {/if} value="88">88cm</option>
              <option {if $body.long_legs == 89} selected {/if} value="89">89cm</option>
              <option {if $body.long_legs == 90} selected {/if} value="90">90cm</option>
              <option {if $body.long_legs == 91} selected {/if} value="91">91cm</option>
              <option {if $body.long_legs == 92} selected {/if} value="92">92cm</option>
              <option {if $body.long_legs == 93} selected {/if} value="93">93cm</option>
              <option {if $body.long_legs == 94} selected {/if} value="94">94cm</option>
              <option {if $body.long_legs == 95} selected {/if} value="95">95cm</option>
              <option {if $body.long_legs == 96} selected {/if} value="96">96cm</option>
              <option {if $body.long_legs == 97} selected {/if} value="97">97cm</option>
              <option {if $body.long_legs == 98} selected {/if} value="98">98cm</option>
              <option {if $body.long_legs == 99} selected {/if} value="99">99cm</option>
              <option {if $body.long_legs == 100} selected {/if} value="100">100cm</option>
              <option {if $body.long_legs == 101} selected {/if} value="101">101cm</option>
              <option {if $body.long_legs == 102} selected {/if} value="102">102cm</option>
              <option {if $body.long_legs == 103} selected {/if} value="103">103cm</option>
              <option {if $body.long_legs == 104} selected {/if} value="104">104cm</option>
              <option {if $body.long_legs == 105} selected {/if} value="105">105cm</option>
              <option {if $body.long_legs == 106} selected {/if} value="106">106cm</option>
              <option {if $body.long_legs == 107} selected {/if} value="107">107cm</option>
            </select>
          </li>
          <li>
            <img src="{staticurl action='xunwen.png' type='img'}">
            <span>小腿围</span>
            <select class="tenth" name="calf_girth">
              <option {if $body.calf_girth == 26} selected {/if} value="26">26cm</option>
              <option {if $body.calf_girth == 27} selected {/if} value="27">27cm</option>
              <option {if $body.calf_girth == 28} selected {/if} value="28">28cm</option>
              <option {if $body.calf_girth == 29} selected {/if} value="29">29cm</option>
              <option {if $body.calf_girth == 30} selected {/if} value="30">30cm</option>
              <option {if $body.calf_girth == 31} selected {/if} value="31">31cm</option>
              <option {if $body.calf_girth == 32} selected {/if} value="32">32cm</option>
              <option {if $body.calf_girth == 33} selected {/if} value="33">33cm</option>
              <option {if $body.calf_girth == 34} selected {/if} value="34">34cm</option>
              <option {if $body.calf_girth == 35} selected {/if} value="35">35cm</option>
              <option {if $body.calf_girth == 36} selected {/if} value="36">36cm</option>
              <option {if $body.calf_girth == 37} selected {/if} value="37">37cm</option>
              <option {if $body.calf_girth == 38} selected {/if} value="38">38cm</option>
              <option {if $body.calf_girth == 39} selected {/if} value="39">39cm</option>
              <option {if $body.calf_girth == 40} selected {/if} value="40">40cm</option>
              <option {if $body.calf_girth == 41} selected {/if} value="41">41cm</option>
              <option {if $body.calf_girth == 42} selected {/if} value="42">42cm</option>
              <option {if $body.calf_girth == 43} selected {/if} value="43">43cm</option>
              <option {if $body.calf_girth == 44} selected {/if} value="44">44cm</option>
              <option {if $body.calf_girth == 45} selected {/if} value="45">45cm</option>
            </select>
          </li>
        </ul>
     <div class="reset">
        <span>*红色为你修改过的数值</span>
        <img src="{staticurl action='reset.png' type='img'}">
     </div>
    <div class="footer4">
    <input type="submit" value="保存">
  </div>
    <div class="proper none">
        <div class="gray"></div>
        <div class="illustrate">
          <div class="illustrate_font">
            <span>上胸围</span> 
            <span>经过乳点，水平一周的围度</span>
          </div>
          <img src="{staticurl action='shangxiongwei.png' type='img'}" class="explain1">
          <div class="illustrate_button">
            <button>我知道了</button>
          </div>
        </div>
  </div>
  <div class="proper  none">
        <div class="gray"></div>
        <div class="illustrate">
          <div class="illustrate_font">
            <span>肩宽</span> 
            <span>皮尺经过颈椎点，两个肩点之间的长度</span>
          </div>
          <img src="{staticurl action='jiankuan.png' type='img'}" class="explain">
          <div class="illustrate_button">
            <button>我知道了</button>
          </div>
        </div>
  </div>
  <div class="proper  none  ">
        <div class="gray"></div>
        <div class="illustrate">
          <div class="illustrate_font">
            <span>下胸围</span> 
            <span>乳房下缘水平一周的围度</span>
          </div>
          <img src="{staticurl action='xiaxiongwei.png' type='img'}" class="explain2">
          <div class="illustrate_button">
            <button>我知道了</button>
          </div>
        </div>
  </div>
  <div class="proper  none ">
        <div class="gray"></div>
        <div class="illustrate">
          <div class="illustrate_font">
            <span>臂围</span> 
            <span>手臂最粗处水平一周的围度</span>
          </div>
          <img src="{staticurl action='biwei.png' type='img'}" class="explain3">
          <div class="illustrate_button">
            <button>我知道了</button>
          </div>
        </div>
  </div>
  <div class="proper  none">
        <div class="gray"></div>
        <div class="illustrate">
          <div class="illustrate_font">
            <span>腰围</span> 
            <span>腰部最细处水平一周的围度</span>
          </div>
          <img src="{staticurl action='yaowei.png' type='img'}" class="explain2">
          <div class="illustrate_button">
            <button>我知道了</button>
          </div>
        </div>
  </div>
  <div class="proper   none ">
        <div class="gray"></div>
        <div class="illustrate">
          <div class="illustrate_font">
            <span>臂长</span> 
            <span>肩点到手腕骨的直线距离</span>
          </div>
          <img src="{staticurl action='bichang.png' type='img'}" class="explain2">
          <div class="illustrate_button">
            <button>我知道了</button>
          </div>
        </div>
  </div>
  <div class="proper  none">
        <div class="gray"></div>
        <div class="illustrate">
          <div class="illustrate_font">
            <span>臀围</span> 
            <span>臀部最丰满处水平一周的围度</span>
          </div>
          <img src="{staticurl action='tunwei.png' type='img'}" class="explain3">
          <div class="illustrate_button">
            <button>我知道了</button>
          </div>
        </div>
  </div>
  <div class="proper   none">
        <div class="gray"></div>
        <div class="illustrate">
          <div class="illustrate_font">
            <span>大腿围</span> 
            <span>大腿最粗处水平一周的围度</span>
          </div>
          <img src="{staticurl action='datuiwei.png' type='img'}" class="explain2">
          <div class="illustrate_button">
            <button>我知道了</button>
          </div>
        </div>
  </div>
  <div class="proper   none">
        <div class="gray"></div>
        <div class="illustrate">
          <div class="illustrate_font">
            <span>腿长</span> 
            <span>距胯骨点向下一圈的距离，找到骨头连接点到脚裸凸点的长度</span>
          </div>
          <img src="{staticurl action='tuichang.png' type='img'}" class="explain4">
          <div class="illustrate_button">
            <button>我知道了</button>
          </div>
        </div>
  </div>
  <div class="proper none ">
        <div class="gray"></div>
        <div class="illustrate">
          <div class="illustrate_font">
            <span>小腿围</span> 
            <span>小腿最粗处水平一周的围度</span>
          </div>
          <img src="{staticurl action='xiaotuiwei.png' type='img'}" class="explain3">
          <div class="illustrate_button">
            <button>我知道了</button>
          </div>
        </div>
  </div>
  </form>
</body>
</html>