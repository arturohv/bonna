<?php
/**
 * @package     joofree9
 * @author      olwebdesign
 * @link        http://www.olwebdesign.com
 * @license     GNU/GPL
*/

// no direct access
defined('_JEXEC') or die;

/**
 * This is a file to add template specific chrome to pagination rendering.
 *
 * pagination_list_footer
 *	Input variable $list is an array with offsets:
 *		$list[prefix]		: string
 *		$list[limit]		: int
 *		$list[limitstart]	: int
 *		$list[total]		: int
 *		$list[limitfield]	: string
 *		$list[pagescounter]	: string
 *		$list[pageslinks]	: string
 *
 * pagination_list_render
 *	Input variable $list is an array with offsets:
 *		$list[all]
 *			[data]		: string
 *			[active]	: boolean
 *		$list[start]
 *			[data]		: string
 *			[active]	: boolean
 *		$list[previous]
 *			[data]		: string
 *			[active]	: boolean
 *		$list[next]
 *			[data]		: string
 *			[active]	: boolean
 *		$list[end]
 *			[data]		: string
 *			[active]	: boolean
 *		$list[pages]
 *			[{PAGE}][data]		: string
 *			[{PAGE}][active]	: boolean
 *
 * pagination_item_active
 *	Input variable $item is an object with fields:
 *		$item->base	: integer
 *		$item->prefix	: string
 *		$item->link	: string
 *		$item->text	: string
 *
 * pagination_item_inactive
 *	Input variable $item is an object with fields:
 *		$item->base	: integer
 *		$item->prefix	: string
 *		$item->link	: string
 *		$item->text	: string
 *
 * This gives template designers ultimate control over how pagination is rendered.
 *
 * NOTE: If you override pagination_item_active OR pagination_item_inactive you MUST override them both
 */

function pagination_list_footer($list)
{
	$html = "<div class=\"list-footer\">\n";

	$html .= "\n<div class=\"limit\">".JText::_('JGLOBAL_DISPLAY_NUM').$list['limitfield']."</div>";
	$html .= $list['pageslinks'];
	$html .= "\n<div class=\"counter\">".$list['pagescounter']."</div>";

	$html .= "\n<input type=\"hidden\" name=\"" . $list['prefix'] . "limitstart\" value=\"".$list['limitstart']."\" />";
	$html .= "\n</div>";

	return $html;
}

function pagination_list_render($list)
{
	// Initialise variables.
	$html = "<div class=\"ol_pagination\">";
	$html .= "<div class='ol_PaginationStart'>".$list['start']['data']."</div>";
	$html .= "<div class='ol_PaginationPrevious'>".$list['previous']['data']."</div>";

	foreach($list['pages'] as $page)
	{
		$html .= '<div class="ol_PaginationPage ';
		if ($page['data']['active']) {
			$html .= 'ol_PaginationPageActive';
		}
		$html .= '">';
		
		$html .= $page['data'];

		$html .= '</div>';
	}

	$html .= "<div class='ol_PaginationNext'>".$list['next']['data']."</div>";
	$html .= "<div class='ol_PaginationEnd'>".$list['end']['data']."</div>";

	$html .= "</div>";
	return $html;
}

function pagination_item_active(&$item) {
	return "<a href=\"".$item->link."\" title=\"".$item->text."\">".$item->text."</a>";
}

function pagination_item_inactive(&$item) {
	return "<span>".$item->text."</span>";
}
?>