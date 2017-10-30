{include file="common/header.tpl" pageTitle="我的"}
{include file="common/menu.tpl"}
<form action="/user/feedback" id="myform" method="post" onsubmit="return check()">
    <div class="Feedback">
      <textarea class="textarea" placeholder="谢谢您的意见和反馈" name="note"></textarea>
      <span>—&nbsp您可以留下联系电话，我们的工作人员会联系您&nbsp—</span>
      <input type="text" placeholder="联系电话（选填）" name="phone">
    </div>
    <div class="buttom">
		<input type="submit" value="提交">
		</div>
</form>
<script type="text/javascript">
	function check() {
		var note = $('#note').val();
		if(note=="") {
			alert('请填写反馈信息');
			return false;
		}
	}
</script>
</body>
</html>