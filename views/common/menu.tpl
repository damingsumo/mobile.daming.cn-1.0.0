<div class="footer" style="border-top:2px solid #d1d1d2;">
{if isset($brandId)}
<input type="hidden" value="{$brandId}" id="brand_id">
{/if}
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
		var brandId = $('#brand_id').val();
		window.location.href='/brand/goods/list?brand_id='+brandId;
	}
	function go_genre() {
		var brandId = $('#brand_id').val();
		window.location.href='/brand/genre/list?brand_id='+brandId;
	}
	function go_user() {
		window.location.href='/user/index';
	}
	
</script>