{include file="common/header.tpl" pageTitle="商品列表"}
{include file="common/menu.tpl"}

{foreach $genres as $k=>$v}
	<div class="jacket">
	
		<span>{if $k == 1}上装 {elseif $k == 2}裤子 {elseif $k == 3}套裙 {elseif $k == 4}套装{/if}</span>
		<ul>
		{foreach $v as $genre}
    	    <li>
    	    <a href="../goods/list?genre_id={$genre.genre_id}">
    	    	<img src="{$genre.genre['picture_url']}">
    	    	<span>{$genre.genre['name']}</span>
    	    </a>
    	    </li> 
    	    {/foreach}
        </ul>
	</div>
	{/foreach}
</body>
</html>
