<?php
/**
 * @package		Joomla.Site
 * @subpackage	Templates.beez_20
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access.
defined('_JEXEC') or die;

/**
 * beezDivision chrome.
 *
 * @since	1.6
 */

function modChrome_light($module, &$params, &$attribs)
{

if (!empty ($module->content)) : ?>
<div class="moduletable_ol_light">
<?php if ($module->showtitle != 0) : ?>
<h3 class="title"><?php echo $module->title; ?></h3>
<?php endif; ?>
<?php echo $module->content; ?>
</div>
<?php endif;
}

function modChrome_beige($module, &$params, &$attribs)
{

if (!empty ($module->content)) : ?>
<div class="moduletable_ol_beige">
<?php if ($module->showtitle != 0) : ?>
<h3 class="title"><?php echo $module->title; ?></h3>
<?php endif; ?>
<?php echo $module->content; ?>
</div>
<?php endif;
}

function modChrome_dark($module, &$params, &$attribs)
{

if (!empty ($module->content)) : ?>
<div class="moduletable_ol_dark">
<?php if ($module->showtitle != 0) : ?>
<h3 class="title"><?php echo $module->title; ?></h3>
<?php endif; ?>
<?php echo $module->content; ?>
</div>
<?php endif;
}

function modChrome_red($module, &$params, &$attribs)
{

if (!empty ($module->content)) : ?>
<div class="moduletable_ol_red">
<?php if ($module->showtitle != 0) : ?>
<h3 class="title"><?php echo $module->title; ?></h3>
<?php endif; ?>
<?php echo $module->content; ?>
</div>
<?php endif;
}

function modChrome_green($module, &$params, &$attribs)
{

if (!empty ($module->content)) : ?>
<div class="moduletable_ol_green">
<?php if ($module->showtitle != 0) : ?>
<h3 class="title"><?php echo $module->title; ?></h3>
<?php endif; ?>
<?php echo $module->content; ?>
</div>
<?php endif;
}

function modChrome_blue($module, &$params, &$attribs)
{

if (!empty ($module->content)) : ?>
<div class="moduletable_ol_blue">
<?php if ($module->showtitle != 0) : ?>
<h3 class="title"><?php echo $module->title; ?></h3>
<?php endif; ?>
<?php echo $module->content; ?>
</div>
<?php endif;
}

function modChrome_accordion($module, &$params, &$attribs) {
	
    if ($module->showtitle) {
    	echo ("
		<li>
        	<h2><span>".$module->title."</span></h2>
        	<div>".$module->content."</div>
        </li>
	");
	};
}?>