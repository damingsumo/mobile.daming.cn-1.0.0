{include file="common/header.tpl" pageTitle="创建身材"}
<body style="background:#e8e8e8;">
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
	<div class="proper" id="start">
		<div class="gray"></div>
		<div class="mess">
			<div class="mess_font">
				<span>试衣前，四步创建你的虚拟形象</span>
			</div>
			<div class="mess_list">
				<ul>
					<li>
						<img src="{staticurl action='6.png' type='img'}">
						<span>创建身材</span>
					</li>
					<li>
						<img src="{staticurl action='chuangjianwuguan.png' type='img'}">
						<span>创建五官</span>
					</li>
					<li>
						<img src="{staticurl action='7.png' type='img'}">
						<span>选择脸型</span>
					</li>
					<li>
						<img src="{staticurl action='8.png' type='img'}">
						<span>选择发型</span>
					</li>
				</ul>
			</div>
			<div class="mess_button">
				<button onclick="startCreate()">开始创建</button>
			</div>
		</div>
	</div>
	
   </div>
   <form action="add" id="myform" method="post" onsubmit="return check()">
	<div class="content6">
		<div class="content6_top">
			<ul>
				<li> 
                    <canvas id="behid_hair" width="300" height="500"></canvas>
		             <canvas id="MyCanvas"  width="300" height="500"></canvas>
		             <canvas id="hair" width="300" height="500;"></canvas>
				</li> 
			</ul>
		</div>
		<div class="content6_bottom">
			<ul>
				<li>
					<div>
						<span>身高</span>
						<select name="height" id="height" class="height" title="sel">
							<option value="0">请选择</option>
							<option value="146" title="320">146cm</option>
							<option value="147" title="322">147cm</option>
							<option value="148" title="324">148cm</option>
							<option value="149" title="326">149cm</option>
							<option value="150" title="328">150cm</option>
							<option value="151" title="330">151cm</option>
							<option value="152" title="332">152cm</option>
							<option value="153" title="334">153cm</option>
							<option value="154" title="336">154cm</option>
							<option value="155" title="338">155cm</option>
							<option value="156" title="340">156cm</option>
							<option value="157" title="342">157cm</option>
							<option value="158" title="346">158cm</option>
							<option value="159" title="350">159cm</option>
							<option value="160" title="354">160cm</option>
							<option value="161" title="358">161cm</option>
							<option value="162" title="362">162cm</option>
							<option value="163" title="366">163cm</option>
							<option value="164" title="370">164cm</option>
							<option value="165" title="374">165cm</option>
							<option value="166" title="378">166cm</option>
							<option value="167" title="382">167cm</option>
							<option value="168" title="386">168cm</option>
							<option value="169" title="390">169cm</option>
							<option value="170" title="394">170cm</option>
							<option value="171" title="398">171cm</option>
							<option value="172" title="402">172cm</option>
							<option value="173" title="406">173cm</option>
							<option value="174" title="410">174cm</option>
							<option value="175" title="414">175cm</option>
							<option value="176" title="418">176cm</option>
							<option value="177" title="422">177cm</option>
							<option value="178" title="426">178cm</option>
							<option value="179" title="430">179cm</option>
							<option value="180" title="434">180cm</option>
							<option value="181" title="438">181cm</option>
							<option value="182" title="442">182cm</option>
						</select>
					</div>
					
				</li>
				<li>
					<div>
						<span>体重</span>
						<select name="weight" id="weight" class="weight" title="ael">
							<option value="0">请选择</option>
							<option value="34" title="100">34kg</option>
							<option value="35" title="102">35kg</option>
							<option value="36" title="104">36kg</option>
							<option value="37" title="106">37kg</option>
							<option value="38" title="110">38kg</option>
							<option value="39" title="112">39kg</option>
							<option value="40" title="114">40kg</option>
							<option value="41" title="116">41kg</option>
							<option value="42" title="118">42kg</option>
							<option value="43" title="120">43kg</option>
							<option value="44" title="122">44kg</option>
							<option value="45" title="124">45kg</option>
							<option value="46" title="126">46kg</option>
							<option value="47" title="128">47kg</option>
							<option value="47" title="130">48kg</option>
							<option value="49" title="132">49kg</option>
							<option value="50" title="134">50kg</option>
							<option value="51" title="136">51kg</option>
							<option value="52" title="138">52kg</option>
							<option value="53" title="140">53kg</option>
							<option value="54" title="142">54kg</option>
							<option value="55" title="144">55kg</option>
							<option value="56" title="146">56kg</option>
							<option value="57" title="148">57kg</option>
							<option value="58" title="150">58kg</option>
							<option value="59" title="152">59kg</option>
							<option value="60" title="154">60kg</option>
							<option value="61" title="156">61kg</option>
							<option value="62" title="158">62kg</option>
							<option value="63" title="160">63kg</option>
							<option value="64" title="162">64kg</option>
							<option value="65" title="164">65kg</option>
							<option value="66" title="166">66kg</option>
							<option value="67" title="168">67kg</option>
							<option value="68" title="170">68kg</option>
							<option value="69" title="172">69kg</option>
							<option value="70" title="174">70kg</option>
							<option value="71" title="176">71kg</option>
							<option value="72" title="178">72kg</option>
							<option value="73" title="180">73kg</option>
							<option value="74" title="182">74kg</option>
							<option value="75" title="184">75kg</option>
							<option value="76" title="186">76kg</option>
							<option value="77" title="188">77kg</option>
							<option value="78" title="190">78kg</option>
							<option value="79" title="192">79kg</option>
							<option value="80" title="194">80kg</option>
							<option value="81" title="196">81kg</option>
							<option value="82" title="198">82kg</option>
							<option value="83" title="200">83kg</option>
							<option value="84" title="202">84kg</option>
							<option value="85" title="204">85kg</option>
							<option value="86" title="206">86kg</option>
							<option value="87" title="208">87kg</option>
							<option value="88" title="210">88kg</option>
						</select>
					</div>
				</li>
				<li>
					<div>
						<span>年龄</span>
						<select name="age" id="age">
							<option value="0">请选择</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
							<option value="32">32</option>
							<option value="33">33</option>
							<option value="34">34</option>
							<option value="35">35</option>
							<option value="36">36</option>
							<option value="37">37</option>
							<option value="38">38</option>
							<option value="39">39</option>
							<option value="40">40</option>
							<option value="41">41</option>
							<option value="42">42</option>
							<option value="43">43</option>
							<option value="44">44</option>
							<option value="45">45</option>
							<option value="46">46</option>
							<option value="47">47</option>
							<option value="48">48</option>
							<option value="49">49</option>
							<option value="50">50</option>
							<option value="51">51</option>
							<option value="52">52</option>
							<option value="53">53</option>
							<option value="54">54</option>
							<option value="55">55</option>
							<option value="56">56</option>
							<option value="57">57</option>
							<option value="58">58</option>
							<option value="59">59</option>
							<option value="60">60</option>
						</select>
					</div>
				</li>
			</ul>
			<div>
				<span>-胸罩尺码-</span>
				<div class="height_color1">
					 <input type="hidden" value="1" class="eur" name="chest_circumference_type" id="chest_circumference_type">
					<div>
 						<span class="">标准</span>
						<span class="none">欧码</span>
					</div>
				</div>
			</div>
			<ul>
				<li>
					<div>
						<span>下胸围</span>
						<select class="chest" id="chest_circumference" name="chest_circumference">
							<option value="0">请选择</option>
							<option value="1">60</option>
							<option value="2">65</option>
							<option value="3">70</option>
							<option value="4">75</option>
							<option value="5">80</option>
							<option value="6">85</option>
							<option value="7">90</option>
							<option value="8">95</option>
							<option value="9">100及以上</option>
						</select>
						<select class="chest1 none" id="europe_chest_circumference" name="europe_chest_circumference">
							<option value="0">请选择</option>
							<option value="1">28</option>
							<option value="2">30</option>
							<option value="3">32</option>
							<option value="4">34</option>
							<option value="5">36</option>
							<option value="6">38</option>
							<option value="7">40</option>
							<option value="8">42</option>
							<option value="9">44及以上</option>
						</select>
					</div>
				</li>
				<li>
					<div>
						<span>罩杯</span>
						<select id="cup_size" name="cup_size">
							<option value="0">请选择</option>
							<option value="1">AA</option>
							<option value="2">A</option>
							<option value="3">B</option>
							<option value="4">C</option>
							<option value="5">D</option>
							<option value="6">E及以上</option> 
						</select>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<div class="footer4">
		<input type="submit" value="完成">
	</div>
	</form>
	{literal}
<script type="text/javascript">	
function startCreate() {
	$("#start").css({"display":"none"});
}


function check() {
	height = $('#height').val();
	if(height == 0) {
    	alert('请选择身高'); 
    	return false;
	}
	weight = $('#weight').val();
	if(weight == 0) {
    	alert('请选择体重'); 
    	return false;
	}
	age = $('#age').val();
	if(age == 0) {
    	alert('请选择年龄'); 
    	return false;
	}
	chest_circumference_type = $('#chest_circumference_type').val();
	europe_chest_circumference = $('#europe_chest_circumference').val();
	chest_circumference = $('#chest_circumference').val();
	if(chest_circumference_type ==1 && chest_circumference==0) {
    	alert('请选择下胸围'); 
    	return false;
	}else if(chest_circumference_type ==2 && europe_chest_circumference==0) {
		alert('请选择下胸围'); 
    	return false;
	}
	cup_size = $('#cup_size').val();
	if(cup_size == 0) {
    	alert('请选择罩杯'); 
    	return false;
	}
	return true;
}
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
                        img2.src=body; 
                    img2.onload = function () //确保图片已经加载完毕  
                    {  
                          ctx.drawImage(img2,71,bodyabscissa,bodywidth,bodylength);   
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
$('select').change(function(){
	 var height = $("select[title=sel]").val();
	 if(height==''||height==0){
	 	height=160;
	 }
	 var weight = $("select[title=ael]").val();
	 if(weight==''||weight==0){
	 	weight=50;
	 }
	 $.ajax({
			type: "POST",
			url: '/user/hw/ajaxGetHwPhoto',
			data: {height:height,weight:weight},
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
                  ctx.drawImage(img7,cup_ordinate,cup_abscissa,cup_width,cup_length); 
                 } 

			     }
			}
	 })
	 
});
		
</script> 
{/literal}
</body>
</html>