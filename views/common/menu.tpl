<div class="footer" style="border-top:2px solid #d1d1d2;">
{if isset($brandId)}
<input type="hidden" value="{$brandId}" id="brand_id">
{/if}
        <ul>
          <li>
            <a onclick = "go_goods()">
              <img src="{staticurl action='16.png' type='img'}">
              <span>全部单品</span>
            </a>
          </li>
          <li>
            <a onclick = "go_genre()">
              <img src="{staticurl action='17.png' type='img'}">
              <span>分类</span>
            </a>
          </li>
          <li>
            <a onclick = "go_user()">
              <img src="{staticurl action='18.png' type='img'}">
              <span>我的</span>
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