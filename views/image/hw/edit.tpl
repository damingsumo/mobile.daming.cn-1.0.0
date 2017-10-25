{include file="common/header.tpl" pageTitle="创建身材"}
		<form action="edit" id="myform" method="post">
		<input type="hidden" name="user_hw_id" value="{$hw.user_hw_id}">
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
						<select name="height" class="height">
							<option {if $hw.height == 145} selected {/if} value="145">请选择</option>
							<option {if $hw.height == 146} selected {/if} value="146" title="320">146cm</option>
							<option {if $hw.height == 147} selected {/if} value="147" title="322">147cm</option>
							<option {if $hw.height == 148} selected {/if} value="148" title="324">148cm</option>
							<option {if $hw.height == 149} selected {/if} value="149" title="326">149cm</option>
							<option {if $hw.height == 150} selected {/if} value="150" title="328">150cm</option>
							<option {if $hw.height == 151} selected {/if} value="151" title="330">151cm</option>
							<option {if $hw.height == 152} selected {/if} value="152" title="332">152cm</option>
							<option {if $hw.height == 153} selected {/if} value="153" title="334">153cm</option>
							<option {if $hw.height == 154} selected {/if} value="154" title="336">154cm</option>
							<option {if $hw.height == 155} selected {/if} value="155" title="338">155cm</option>
							<option {if $hw.height == 156} selected {/if} value="156" title="340">156cm</option>
							<option {if $hw.height == 157} selected {/if} value="157" title="342">157cm</option>
							<option {if $hw.height == 158} selected {/if} value="158" title="346">158cm</option>
							<option {if $hw.height == 159} selected {/if} value="159" title="350">159cm</option>
							<option {if $hw.height == 160} selected {/if} value="160" title="354">160cm</option>
							<option {if $hw.height == 161} selected {/if} value="161" title="358">161cm</option>
							<option {if $hw.height == 162} selected {/if} value="162" title="362">162cm</option>
							<option {if $hw.height == 163} selected {/if} value="163" title="366">163cm</option>
							<option {if $hw.height == 164} selected {/if} value="164" title="370">164cm</option>
							<option {if $hw.height == 165} selected {/if} value="165" title="374">165cm</option>
							<option {if $hw.height == 166} selected {/if} value="166" title="378">166cm</option>
							<option {if $hw.height == 167} selected {/if} value="167" title="382">167cm</option>
							<option {if $hw.height == 168} selected {/if} value="168" title="386">168cm</option>
							<option {if $hw.height == 169} selected {/if} value="169" title="390">169cm</option>
							<option {if $hw.height == 170} selected {/if} value="170" title="394">170cm</option>
							<option {if $hw.height == 171} selected {/if} value="171" title="398">171cm</option>
							<option {if $hw.height == 172} selected {/if} value="172" title="402">172cm</option>
							<option {if $hw.height == 173} selected {/if} value="173" title="406">173cm</option>
							<option {if $hw.height == 174} selected {/if} value="174" title="410">174cm</option>
							<option {if $hw.height == 175} selected {/if} value="175" title="414">175cm</option>
							<option {if $hw.height == 176} selected {/if} value="176" title="418">176cm</option>
							<option {if $hw.height == 177} selected {/if} value="177" title="422">177cm</option>
							<option {if $hw.height == 178} selected {/if} value="178" title="426">178cm</option>
							<option {if $hw.height == 179} selected {/if} value="179" title="430">179cm</option>
							<option {if $hw.height == 180} selected {/if} value="180" title="434">180cm</option>
							<option {if $hw.height == 181} selected {/if} value="181" title="438">181cm</option>
							<option {if $hw.height == 182} selected {/if} value="182" title="442">182cm</option>
						</select>
					</div>
					
				</li>
				<li>
					<div>
						<span>体重</span>
						<select name="weight" class="weight">
							<option {if $hw.weight == 33} selected {/if} value="33">请选择</option>
							<option {if $hw.weight == 34} selected {/if} value="34" title="100">34kg</option>
							<option {if $hw.weight == 35} selected {/if} value="35" title="102">35kg</option>
							<option {if $hw.weight == 36} selected {/if} value="36" title="104">36kg</option>
							<option {if $hw.weight == 37} selected {/if} value="37" title="106">37kg</option>
							<option {if $hw.weight == 38} selected {/if} value="38" title="108">38kg</option>
							<option {if $hw.weight == 39} selected {/if} value="39" title="110">39kg</option>
							<option {if $hw.weight == 40} selected {/if} value="40" title="112">40kg</option>
							<option {if $hw.weight == 41} selected {/if} value="41" title="114">41kg</option>
							<option {if $hw.weight == 42} selected {/if} value="42" title="116">42kg</option>
							<option {if $hw.weight == 43} selected {/if} value="43" title="118">43kg</option>
							<option {if $hw.weight == 44} selected {/if} value="44" title="120">44kg</option>
							<option {if $hw.weight == 45} selected {/if} value="45" title="122">45kg</option>
							<option {if $hw.weight == 46} selected {/if} value="46" title="124">46kg</option>
							<option {if $hw.weight == 47} selected {/if} value="47" title="126">47kg</option>
							<option {if $hw.weight == 48} selected {/if} value="48" title="128">48kg</option>
							<option {if $hw.weight == 49} selected {/if} value="49" title="130">49kg</option>
							<option {if $hw.weight == 50} selected {/if} value="50" title="132">50kg</option>
							<option {if $hw.weight == 51} selected {/if} value="51" title="134">51kg</option>
							<option {if $hw.weight == 52} selected {/if} value="52" title="136">52kg</option>
							<option {if $hw.weight == 53} selected {/if} value="53" title="138">53kg</option>
							<option {if $hw.weight == 54} selected {/if} value="54" title="140">54kg</option>
							<option {if $hw.weight == 55} selected {/if} value="55" title="142">55kg</option>
							<option {if $hw.weight == 56} selected {/if} value="56" title="144">56kg</option>
							<option {if $hw.weight == 57} selected {/if} value="57" title="146">57kg</option>
							<option {if $hw.weight == 58} selected {/if} value="58" title="150">58kg</option>
							<option {if $hw.weight == 59} selected {/if} value="59" title="152">59kg</option>
							<option {if $hw.weight == 60} selected {/if} value="60" title="154">60kg</option>
							<option {if $hw.weight == 61} selected {/if} value="61" title="156">61kg</option>
							<option {if $hw.weight == 62} selected {/if} value="62" title="158">62kg</option>
							<option {if $hw.weight == 63} selected {/if} value="63" title="160">63kg</option>
							<option {if $hw.weight == 64} selected {/if} value="64" title="162">64kg</option>
							<option {if $hw.weight == 65} selected {/if} value="65" title="164">65kg</option>
							<option {if $hw.weight == 66} selected {/if} value="66" title="166">66kg</option>
							<option {if $hw.weight == 67} selected {/if} value="67" title="168">67kg</option>
							<option {if $hw.weight == 68} selected {/if} value="68" title="170">68kg</option>
							<option {if $hw.weight == 69} selected {/if} value="69" title="172">69kg</option>
							<option {if $hw.weight == 70} selected {/if} value="70" title="174">70kg</option>
							<option {if $hw.weight == 71} selected {/if} value="71" title="176">71kg</option>
							<option {if $hw.weight == 72} selected {/if} value="72" title="178">72kg</option>
							<option {if $hw.weight == 73} selected {/if} value="73" title="180">73kg</option>
							<option {if $hw.weight == 74} selected {/if} value="74" title="182">74kg</option>
							<option {if $hw.weight == 75} selected {/if} value="75" title="184">75kg</option>
							<option {if $hw.weight == 76} selected {/if} value="76" title="186">76kg</option>
							<option {if $hw.weight == 77} selected {/if} value="77" title="188">77kg</option>
							<option {if $hw.weight == 78} selected {/if} value="78" title="190">78kg</option>
							<option {if $hw.weight == 79} selected {/if} value="79" title="192">79kg</option>
							<option {if $hw.weight == 80} selected {/if} value="80" title="194">80kg</option>
							<option {if $hw.weight == 81} selected {/if} value="81" title="196">81kg</option>
							<option {if $hw.weight == 82} selected {/if} value="82" title="198">82kg</option>
							<option {if $hw.weight == 83} selected {/if} value="83" title="200">83kg</option>
							<option {if $hw.weight == 84} selected {/if} value="84" title="202">84kg</option>
							<option {if $hw.weight == 85} selected {/if} value="85" title="204">85kg</option>
							<option {if $hw.weight == 86} selected {/if} value="86" title="206">86kg</option>
							<option {if $hw.weight == 87} selected {/if} value="87" title="208">87kg</option>
							<option {if $hw.weight == 88} selected {/if} value="88" title="210">88kg</option>
						</select>
					</div>
				</li>
				<li>
					<div>
						<span >年龄</span>
						<select name="age">
							<option {if $hw.age == 20} selected {/if} value="20">20</option>
							<option {if $hw.age == 21} selected {/if} value="21">21</option>
							<option {if $hw.age == 22} selected {/if} value="22">22</option>
							<option {if $hw.age == 23} selected {/if} value="23">23</option>
							<option {if $hw.age == 24} selected {/if} value="24">24</option>
							<option {if $hw.age == 25} selected {/if} value="25">25</option>
							<option {if $hw.age == 26} selected {/if} value="26">26</option>
							<option {if $hw.age == 27} selected {/if} value="27">27</option>
							<option {if $hw.age == 28} selected {/if} value="28">28</option>
							<option {if $hw.age == 29} selected {/if} value="29">29</option>
							<option {if $hw.age == 30} selected {/if} value="30">30</option>
							<option {if $hw.age == 31} selected {/if} value="31">31</option>
							<option {if $hw.age == 32} selected {/if} value="32">32</option>
							<option {if $hw.age == 33} selected {/if} value="33">33</option>
							<option {if $hw.age == 34} selected {/if} value="34">34</option>
							<option {if $hw.age == 35} selected {/if} value="35">35</option>
							<option {if $hw.age == 36} selected {/if} value="36">36</option>
							<option {if $hw.age == 37} selected {/if} value="37">37</option>
							<option {if $hw.age == 38} selected {/if} value="38">38</option>
							<option {if $hw.age == 39} selected {/if} value="39">39</option>
							<option {if $hw.age == 40} selected {/if} value="40">40</option>
							<option {if $hw.age == 41} selected {/if} value="41">41</option>
							<option {if $hw.age == 42} selected {/if} value="42">42</option>
							<option {if $hw.age == 43} selected {/if} value="43">43</option>
							<option {if $hw.age == 44} selected {/if} value="44">44</option>
							<option {if $hw.age == 45} selected {/if} value="45">45</option>
							<option {if $hw.age == 46} selected {/if} value="46">46</option>
							<option {if $hw.age == 47} selected {/if} value="47">47</option>
							<option {if $hw.age == 48} selected {/if} value="48">48</option>
							<option {if $hw.age == 49} selected {/if} value="49">49</option>
							<option {if $hw.age == 50} selected {/if} value="50">50</option>
							<option {if $hw.age == 51} selected {/if} value="51">51</option>
							<option {if $hw.age == 52} selected {/if} value="52">52</option>
							<option {if $hw.age == 53} selected {/if} value="53">53</option>
							<option {if $hw.age == 54} selected {/if} value="54">54</option>
							<option {if $hw.age == 55} selected {/if} value="55">55</option>
							<option {if $hw.age == 56} selected {/if} value="56">56</option>
							<option {if $hw.age == 57} selected {/if} value="57">57</option>
							<option {if $hw.age == 58} selected {/if} value="58">58</option>
							<option {if $hw.age == 59} selected {/if} value="59">59</option>
							<option {if $hw.age == 60} selected {/if} value="60">60</option>
						</select>
					</div>
				</li>
			</ul>
			<div>
				<span>-胸罩尺码-</span>
				<div class="height_color1">
					 <input type="hidden" value="{$hw.chest_circumference_type}" class="eur" name="chest_circumference_type">
					<div>
 						<span {if $hw.chest_circumference_type == 2}class="none"{/if}>标准</span>
						<span {if $hw.chest_circumference_type == 1}class="none"{/if}>欧码</span>
					</div>
				</div>
			</div>
			<ul>
				<li>
					<div>
						<span>下胸围</span>
						<select class="chest" name="chest_circumference_type">
							<option {if $hw.chest_circumference == 1} selected {/if} value="1">60</option>
							<option {if $hw.chest_circumference == 2} selected {/if} value="2">65</option>
							<option {if $hw.chest_circumference == 3} selected {/if} value="3">70</option>
							<option {if $hw.chest_circumference == 4} selected {/if} value="4">75</option>
							<option {if $hw.chest_circumference == 5} selected {/if} value="5">80</option>
							<option {if $hw.chest_circumference == 6} selected {/if} value="6">85</option>
							<option {if $hw.chest_circumference == 7} selected {/if} value="7">90</option>
							<option {if $hw.chest_circumference == 8} selected {/if} value="8">95</option>
							<option {if $hw.chest_circumference == 9} selected {/if} value="9">100及以上</option>
						</select>
						<select class="chest1 none" name="europe_chest_circumference">
							<option {if $hw.europe_chest_circumference == 1} selected {/if} value="1">28</option>
							<option {if $hw.europe_chest_circumference == 2} selected {/if} value="2">30</option>
							<option {if $hw.europe_chest_circumference == 3} selected {/if} value="3">32</option>
							<option {if $hw.europe_chest_circumference == 4} selected {/if} value="4">34</option>
							<option {if $hw.europe_chest_circumference == 5} selected {/if} value="5">36</option>
							<option {if $hw.europe_chest_circumference == 6} selected {/if} value="6">38</option>
							<option {if $hw.europe_chest_circumference == 7} selected {/if} value="7">40</option>
							<option {if $hw.europe_chest_circumference == 8} selected {/if} value="8">42</option>
							<option {if $hw.europe_chest_circumference == 9} selected {/if} value="9">44及以上</option>
						</select>
					</div>
				</li>
				<li>
					<div>
						<span>罩杯</span>
						<select name="cup_size">
							<option  {if $hw.cup_size == 1} selected {/if} value="AA">AA</option>
							<option  {if $hw.cup_size == 2} selected {/if} value="A">A</option>
							<option  {if $hw.cup_size == 3} selected {/if} value="B">B</option>
							<option  {if $hw.cup_size == 4} selected {/if} value="C">C</option>
							<option  {if $hw.cup_size == 5} selected {/if} value="D">D</option>
							<option  {if $hw.cup_size == 6} selected {/if} value="E">E及以上</option> 
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
</body>
</html>