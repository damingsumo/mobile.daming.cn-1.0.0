{include file="common/header.tpl" pageTitle="创建身材"}
<body style="background:#e8e8e8;">
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
				<li><img src="{staticurl action='119.png' type='img'}"></li> 
			</ul>
		</div>
		<div class="content6_bottom">
			<ul>
				<li>
					<div>
						<span>身高</span>
						<select name="height" id="height" class="height">
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
						<select name="weight" id="weight" class="weight">
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


		
</script> 
{/literal}
</body>
</html>