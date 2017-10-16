<div class="footer" style="border-top:2px solid #d1d1d2;">
        <ul>
          <li>
            <a href="#">
              <img src="{staticurl action='16.png' type='img'}">
              <span onclick = "go_goods()">全部单品</span>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="{staticurl action='17.png' type='img'}">
              <span onclick = "go_genre()">分类</span>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="{staticurl action='18.png' type='img'}">
              <span onclick = "go_user()">我的</span>
            </a>
          </li>
        </ul>
      </div>
      
      <script type="text/javascript">
	function go_goods() {
		window.location.href='/brand/goods/list';
	}
	function go_genre() {
		window.location.href='/brand/genre/list';
	}
	function go_user() {
		window.location.href='/user/index';
	}
	
</script>