{*
 * 2007-2016 PrestaShop
 *
 * Thirty Bees is an extension to the PrestaShop e-commerce software developed by PrestaShop SA
 * Copyright (C) 2017 Thirty Bees
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@thirtybees.com so we can send you a copy immediately.
 *
 * @author    Thirty Bees <modules@thirtybees.com>
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2017 Thirty Bees
 * @copyright 2007-2016 PrestaShop SA
 * @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 * PrestaShop is an internationally registered trademark & property of PrestaShop SA
*}

<div class="blockcategories_footer">
<!-- Block categories module -->
	<h4 class="title_block">{l s='Categories' mod='blockcategories'}</h4>
<div class="category_footer" style="float:left;clear:none;width:{$widthColumn}%">
	<div style="float:left" class="list">
		<ul class="tree {if $isDhtml}dhtml{/if}">
	
		{foreach from=$blockCategTree.children item=child name=blockCategTree}
			{if $smarty.foreach.blockCategTree.last}
				{include file="$branche_tpl_path" node=$child last='true'}
			{else}
				{include file="$branche_tpl_path" node=$child}
			{/if}
		
			{if ($smarty.foreach.blockCategTree.iteration mod $numberColumn) == 0 AND !$smarty.foreach.blockCategTree.last}
		</ul>
	</div>
</div>

<div class="category_footer" style="float:left;clear:none;width:{$widthColumn}%">
		<div style="float:left" class="list">
		<ul class="tree {if $isDhtml}dhtml{/if}">
			{/if}
			{/foreach}
		</ul>
	</div>
</div>
<br class="clear"/>
<!-- /Block categories module -->
</div>
