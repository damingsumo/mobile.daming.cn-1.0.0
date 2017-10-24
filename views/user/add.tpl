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
			<div>
				<span class="color6" id="round61"></span> 
			</div>
		</div>
		<div class="content6_bottom">
			<ul>
				<li>
					<div>
						<span>身高</span>
						<select name="height" id="height">
							<option value="0">请选择</option>
							<option value="146">146cm</option>
							<option value="147">147cm</option>
							<option value="148">148cm</option>
							<option value="149">149cm</option>
							<option value="150">150cm</option>
							<option value="151">151cm</option>
							<option value="152">152cm</option>
							<option value="153">153cm</option>
							<option value="154">154cm</option>
							<option value="155">155cm</option>
							<option value="156">156cm</option>
							<option value="157">157cm</option>
							<option value="158">158cm</option>
							<option value="159">159cm</option>
							<option value="160">160cm</option>
							<option value="161">161cm</option>
							<option value="162">162cm</option>
							<option value="163">163cm</option>
							<option value="164">164cm</option>
							<option value="165">165cm</option>
							<option value="166">166cm</option>
							<option value="167">167cm</option>
							<option value="168">168cm</option>
							<option value="169">169cm</option>
							<option value="170">170cm</option>
							<option value="171">171cm</option>
							<option value="172">172cm</option>
							<option value="173">173cm</option>
							<option value="174">174cm</option>
							<option value="175">175cm</option>
							<option value="176">176cm</option>
							<option value="177">177cm</option>
							<option value="178">178cm</option>
							<option value="179">179cm</option>
							<option value="180">180cm</option>
							<option value="181">181cm</option>
							<option value="182">182cm</option>
						</select>
					</div>
					
				</li>
				<li>
					<div>
						<span>体重</span>
						<select name="weight" id="weight">
							<option value="0">请选择</option>
							<option value="34">34kg</option>
							<option value="35">35kg</option>
							<option value="36">36kg</option>
							<option value="37">37kg</option>
							<option value="38">38kg</option>
							<option value="39">39kg</option>
							<option value="40">40kg</option>
							<option value="41">41kg</option>
							<option value="42">42kg</option>
							<option value="43">43kg</option>
							<option value="44">44kg</option>
							<option value="45">45kg</option>
							<option value="46">46kg</option>
							<option value="47">47kg</option>
							<option value="47">48kg</option>
							<option value="49">49kg</option>
							<option value="50">50kg</option>
							<option value="51">51kg</option>
							<option value="52">52kg</option>
							<option value="53">53kg</option>
							<option value="54">54kg</option>
							<option value="55">55kg</option>
							<option value="56">56kg</option>
							<option value="57">57kg</option>
							<option value="58">58kg</option>
							<option value="59">59kg</option>
							<option value="60">60kg</option>
							<option value="61">61kg</option>
							<option value="62">62kg</option>
							<option value="63">63kg</option>
							<option value="64">64kg</option>
							<option value="65">65kg</option>
							<option value="66">66kg</option>
							<option value="67">67kg</option>
							<option value="68">68kg</option>
							<option value="69">69kg</option>
							<option value="70">70kg</option>
							<option value="71">71kg</option>
							<option value="72">72kg</option>
							<option value="73">73kg</option>
							<option value="74">74kg</option>
							<option value="75">75kg</option>
							<option value="76">76kg</option>
							<option value="77">77kg</option>
							<option value="78">78kg</option>
							<option value="79">79kg</option>
							<option value="80">80kg</option>
							<option value="81">81kg</option>
							<option value="82">82kg</option>
							<option value="83">83kg</option>
							<option value="84">84kg</option>
							<option value="85">85kg</option>
							<option value="86">86kg</option>
							<option value="87">87kg</option>
							<option value="88">88kg</option>
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