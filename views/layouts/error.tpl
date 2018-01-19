 <!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>失败</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script type="text/javascript" src="{staticurl action='jquery-1.8.2.min.js' type='js'}"></script>
	<script type="text/javascript" src="{staticurl action='ways.js' type='js'}"></script>
	<meta  name="viewport"  content=" user-scalable=no, width=device-width,initial-scale=1.0">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
</head>
<body style="background:#f8f8f8;"> 
	  <div class="header" style="background:#f9f9f9;">
        <a href="" class="header_fl">
          <img src="{staticurl action='1.png' type='img'}">
        </a>
     </div>
  <div class="false"> 
       <img src="{staticurl action='false.png' type='img'}">
       <span>{$msg}</span> 
       {if !isset($backUrl)}
               <button onclick="javascript:history.go(-1);">返回</button>
            {else}
            	<button onclick="javascript:window.location.href='{$backUrl}'">返回</button>
            {/if}
       
  </div>
  
</body>
</html>