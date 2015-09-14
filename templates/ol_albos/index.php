<?php
/**
* @package     ol_albos
* @author      olwebdesign
* @link        http://www.olwebdesign.com
* @license     GNU/GPL
*/

defined('_JEXEC') or die;
if(!defined('DS')){
define( 'DS', DIRECTORY_SEPARATOR );
}

JHTML::_('behavior.modal');
JHTML::_('behavior.framework', true);
JHtml::_('bootstrap.framework');

$app = JFactory::getApplication();
$max_sitewidth	= $this->params->get('max_sitewidth');
$headHeigh	     = $this->params->get('headHeigh');
$showDefaultLogo	= $this->params->get('showDefaultLogo');
$defaultLogo 		= $this->params->get('defaultLogo');
$showMediaLogo		= $this->params->get('showMediaLogo');
$mediaLogo 			= $this->params->get('mediaLogo');
$showTextLogo		= $this->params->get('showTextLogo');
$textLogo 			= $this->params->get('textLogo');
$showSlogan 		= $this->params->get('showSlogan');
$slogan 			= $this->params->get('slogan');
$analyticsCode		= $this->params->get('analyticsCode');
$responsiveCode		= $this->params->get('responsiveCode');
$blogger_icon = $this->params->get('blogger_icon');
$digg_icon = $this->params->get('digg_icon');
$facebook_icon = $this->params->get('facebook_icon');
$flickr_icon = $this->params->get('flickr_icon');
$google_icon = $this->params->get('google_icon');
$linkedin_icon = $this->params->get('linkedin_icon');
$myspace_icon = $this->params->get('myspace_icon');
$pinterest_icon = $this->params->get('pinterest_icon');
$stumble_icon = $this->params->get('stumble_icon');
$twitter_icon = $this->params->get('twitter_icon');
$rssfeed_icon = $this->params->get('rssfeed_icon');
$headpos		= $this->params->get('headpos');
$top_height		= $this->params->get('top_height');
$bg1            = $this->params->get("bg1");
$bg2            = $this->params->get("bg2");
$bg3            = $this->params->get("bg3");
$bg4            = $this->params->get("bg4");
$bg5            = $this->params->get("bg5");
$bg6            = $this->params->get("bg6");
$bg7            = $this->params->get("bg7");
$bg8            = $this->params->get("bg8");
$bg9            = $this->params->get("bg9");
$bg10            = $this->params->get("bg10");
$bg11            = $this->params->get("bg11");
$slides          = $this->params->get('slides');
$caption         = $this->params->get ('caption');
$menu            = $this->params->get ('menu');
$socialCode         = $this->params->get ('socialCode');
$jukenburn_thumb1 	= $this->params->get('jukenburn_thumb1', '' );
$jukenburn_thumb2 	= $this->params->get('jukenburn_thumb2', '' );
$jukenburn_thumb3 	= $this->params->get('jukenburn_thumb3', '' );
$jukenburn_thumb4 	= $this->params->get('jukenburn_thumb4', '' );
$jukenburn_thumb5 	= $this->params->get('jukenburn_thumb5', '' );
$jukenburn_image1 	= $this->params->get('jukenburn_image1', '' );
$jukenburn_image2 	= $this->params->get('jukenburn_image2', '' );
$jukenburn_image3 	= $this->params->get('jukenburn_image3', '' );
$jukenburn_image4 	= $this->params->get('jukenburn_image4', '' );
$jukenburn_image5 	= $this->params->get('jukenburn_image5', '' );
$jukenburn_texts1 	= $this->params->get('jukenburn_texts1', '' );
$jukenburn_texts2 	= $this->params->get('jukenburn_texts2', '' );
$jukenburn_texts3 	= $this->params->get('jukenburn_texts3', '' );
$jukenburn_texts4 	= $this->params->get('jukenburn_texts4', '' );
$jukenburn_texts5 	= $this->params->get('jukenburn_texts5', '' );
$jukenburn_text1 	= $this->params->get('jukenburn_text1', '' );
$jukenburn_text2 	= $this->params->get('jukenburn_text2', '' );
$jukenburn_text3 	= $this->params->get('jukenburn_text3', '' );
$jukenburn_text4 	= $this->params->get('jukenburn_text4', '' );
$jukenburn_text5 	= $this->params->get('jukenburn_text5', '' );
$jukenburn_desc1 	= $this->params->get('jukenburn_desc1', '' );
$jukenburn_desc2 	= $this->params->get('jukenburn_desc2', '' );
$jukenburn_desc3 	= $this->params->get('jukenburn_desc3', '' );
$jukenburn_desc4 	= $this->params->get('jukenburn_desc4', '' );
$jukenburn_desc5 	= $this->params->get('jukenburn_desc5', '' );
$jukenburn_info1 	= $this->params->get('jukenburn_info1', '' );
$jukenburn_info2 	= $this->params->get('jukenburn_info2', '' );
$jukenburn_info3 	= $this->params->get('jukenburn_info3', '' );
$jukenburn_info4 	= $this->params->get('jukenburn_info4', '' );
$jukenburn_info5 	= $this->params->get('jukenburn_info5', '' );
$jukenburn_desc1 	= $this->params->get('jukenburn_desc1', '' );
$jukenburn_desc2 	= $this->params->get('jukenburn_desc2', '' );
$jukenburn_desc3 	= $this->params->get('jukenburn_desc3', '' );
$jukenburn_desc4 	= $this->params->get('jukenburn_desc4', '' );
$jukenburn_desc5 	= $this->params->get('jukenburn_desc5', '' );

if ($jukenburn_thumb1 || $jukenburn_thumb2 || $jukenburn_thumb3 || $jukenburn_thumb4 || $jukenburn_thumb5) {
// use images from template manager
} else {
// use default images
$jukenburn_thumb1 = $this->baseurl . '/templates/' . $this->template . '/header/header01.jpg';
$jukenburn_thumb2 = $this->baseurl . '/templates/' . $this->template . '/header/header02.jpg';
}

$highlights1ModuleCount = $this->countModules('top_1 + top_2 + top_3 + top_4 + top_5 + top_6');
if($highlights1ModuleCount > 0) {$highlights1ModuleWidth = $highlights1ModuleCount;}

$maincontent1ModuleCount = $this->countModules('maintop_1 + maintop_2 + maintop_3 + maintop_4 + maintop_5 + maintop_6');
if($maincontent1ModuleCount > 0) {$maincontent1ModuleWidth = $maincontent1ModuleCount;}

$maincontent2ModuleCount = $this->countModules('mainbottom_1 + mainbottom_2 + mainbottom_3 + mainbottom_4 + mainbottom_5 + mainbottom_6');
if($maincontent2ModuleCount > 0) {$maincontent2ModuleWidth = $maincontent2ModuleCount;}

$bottomModuleCount = $this->countModules('bottom_1 + bottom_2 + bottom_3 + bottom_4 + bottom_5 + bottom_6');
if($bottomModuleCount > 0) {$bottomModuleWidth = $bottomModuleCount;}

$contentLeft = 0;
$contentRight = 0;

if($this->countModules('left') > 0) {
$contentLeft =	1;
}

if($this->countModules('right') > 0) {
$contentRight =	1;
}

$moduleWidthcomponentContent = "ol_componentWidth_".(4 - ($contentLeft + $contentRight));
$templateURL = str_replace('/','%',$this->baseurl."/templates/".$this->template);

?>

<!doctype html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<jdoc:include type="head" />
<?php if (($this->countModules('header') && $slides == 2) || ($slides == 1)): ?>
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/rs-plugin/css/fullwidth.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/rs-plugin/css/settings.css" type="text/css" />
<?php endif; ?>	
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/system.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/bootstrap.css" />
<?php if($this->params->get('socialCode',1)) : ?>
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/social.css " type="text/css" />
<?php endif; ?>
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/basics.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/load.css " type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/menu.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/template.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/setts.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/elements.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/typo.css" type="text/css" />
<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/script.js"></script>

<style type="text/css">
header > .wrapper, #system-message-container, #mx-header, #main, footer,.ol_spB, #ol_headerWrapper { width: <?php echo $max_sitewidth ?>px; }
header { position: <?php echo $headpos ?>;}
<?php if (($headpos == absolute) || ($headpos == fixed)): ?>
#fixheight {height: <?php echo $top_height ?>px;}
<?php endif; ?>	
.fullwidthbanner-container{	max-height: <?php echo $headHeigh ?>px !important;}  
</style>
<!-- Pulled from http://code.google.com/p/html5shiv/ -->
<!--[if lt IE 9]>
<script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/html5.js"></script>
<![endif]-->

<?php
if(strstr($_SERVER['HTTP_USER_AGENT'],'iPad')){
echo('
<style>	
ul.menu ul {display: none; padding: 0;width: auto;white-space: nowrap;position: absolute;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, .3);-moz-box-shadow: 0 1px 3px rgba(0, 0, 0, .3);box-shadow: 0 1px 3px rgba(0, 0, 0, .3);-pie-box-shadow: 0 2px 0px rgba(0, 0, 0, 0.15);}
.ol_smenu ul.menu li:hover > ul {display: block;	}
</style>
');
}?>
<!--[if lt IE 9]>
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/ie_fixes.css.php" type="text/css" /><link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/ie9.php" type="text/css" media="screen,projection" />
<![endif]-->
</head>

<body id="body">
<header id="header">
<div class="wrapper container">
<div class="siteLogo">		
<?php if (($showDefaultLogo) !=0) : ?>				
<a class="defaultLogo" href="<?php echo $this->baseurl; ?>/"><img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/images/logo/<?php echo htmlspecialchars($defaultLogo);?>" style="border:0;" alt="" /></a>
<?php endif;?>
<?php if (($showMediaLogo) !=0) : ?>				
<a class="mediaLogo" href="<?php echo $this->baseurl; ?>/"><img src="<?php echo $this->baseurl ?>/<?php echo htmlspecialchars($mediaLogo);?>" style="border:0;" alt="" /></a>
<?php endif;?>
<?php if (($showTextLogo) !=0) : ?>				
<a class="textLogo" href="<?php echo $this->baseurl; ?>/"><?php echo htmlspecialchars($textLogo);?></a>
<?php endif;?>
<?php if (($showSlogan) !=0) : ?>				
<div class="slogan"><?php echo htmlspecialchars($slogan);?></div>
<?php endif;?>
</div>
<?php if ($this->countModules( 'search' )) : ?>
<div id="ol_hOut">
<div id="ol_hIn">
<jdoc:include type="modules" name="search" style="xhtml" />
</div>
</div>
<?php endif; ?>
<div class="ol_clearFR"></div>
<div id="mainMenu">
<jdoc:include type="modules" name="mainmenu" style="xhtml" />
</div>
<div class="cleartBoth"></div>
</div>
</header>

<?php if (($this->countModules('header') && $slides == 2) || ($slides == 1)): ?>
<div class="fullwidthbanner-container">
<!-- You CAN NOT remove (or unreadable) this without olwebdesign.com permission. -->
<div id="ocpanel"> Designed by olwebdesign </div>
<!-- You CAN NOT remove (or unreadable) this without olwebdesign.com permission. -->
<div class="fullwidthbanner">          
<ul>
<?php if ($jukenburn_thumb1): ?>
<!-- FADE -->
<li data-transition="fade" data-slotamount="4" > <img src="<?php echo $jukenburn_thumb1; ?>">
</li>
<?php endif;?>
<?php if ($jukenburn_thumb2): ?>
<!-- SLIDEUP -->
<li data-transition="" data-slotamount="15" > <img src="<?php echo $jukenburn_thumb2; ?>">
<?php endif;?>
<?php if ($jukenburn_thumb3): ?>
<!-- SLIDEUP -->
<li data-transition="" data-slotamount="10" > <img src="<?php echo $jukenburn_thumb3; ?>">
</li>
<?php endif;?>
<?php if ($jukenburn_thumb4): ?>
<!-- SLIDEUP -->
<li data-transition="" data-slotamount="10"> <img src="<?php echo $jukenburn_thumb4; ?>">
</li>
<?php endif;?>
<?php if ($jukenburn_thumb5): ?>
<!-- SLIDEUP -->
<li data-transition="" data-slotamount="12"> <img src="<?php echo $jukenburn_thumb5; ?>">
</li>
<?php endif;?>
</ul>
<div class="tp-bannertimer"></div>
</div>
</div>
<script type = "text/javascript" src = "<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/rs-plugin/js/jquery.plugins.min.js"></script>
<script type = "text/javascript" src = "<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/rs-plugin/js/jquery.revolution.min.js"></script>		
<script type="text/javascript">								
var tpj=jQuery;
tpj.noConflict();				
tpj(document).ready(function() {				
if (tpj.fn.cssOriginal!=undefined)
tpj.fn.css = tpj.fn.cssOriginal;
tpj('.fullwidthbanner').revolution(
{	
delay:<?php echo $this->params->get('speed'); ?>,												
startwidth:890,
startheight:450,							
onHoverStop:"<?php echo $this->params->get('banner'); ?>",						// Stop Banner Timet at Hover on Slide on/off							
thumbWidth:100,							// Thumb With and Height and Amount (only if navigation Tyope set to thumb !)
thumbHeight:80,
thumbAmount:3,							
hideThumbs:200,
navigationType:"<?php echo $this->params->get('menu'); ?>",					//bullet, thumb, none, both	 (No Shadow in Fullwidth Version !)
navigationArrows:"<?php echo $this->params->get('navarrow'); ?>",		//nexttobullets, verticalcentered, none
navigationStyle:"<?php echo $this->params->get('styles'); ?>",				//round,square,navbar							
touchenabled:"on",						// Enable Swipe Function : on/off							
navOffsetHorizontal:0,
navOffsetVertical:20,							
fullWidth:"on",							
shadow:0,								//0 = no Shadow, 1,2,3 = 3 Different Art of Shadows -  (No Shadow in Fullwidth Version !)
stopLoop:"off"							// on == Stop loop at the last Slie,  off== Loop all the time.

});	
});
</script>
<?php else: ?>
<div id="fixheight"></div>
<?php endif; ?>	
<!-- No Slides -->
<?php if ($this->countModules('header') && $slides == 0): ?>
<div id="mx-headerout">
<div id="mx-header">
<jdoc:include type="modules" name="header" />
</div>
</div>
<?php endif; ?>

<?php if ($this->countModules( 'info' )) : ?>
<div id="ol_headerWrapper">
<div id="ol_headerContent">
<jdoc:include type="modules" name="info" style="xhtml" />
</div>
</div>
<?php endif; ?>

<div id="main">
<div class="wrapper container">
<jdoc:include type="message" />
<?php if($this->params->get('socialCode',1)) : ?>
<div id="social-bookmarks">
<ul class="social-bookmarks">
<?php if($this->params->get('blogger_icon')) : ?>
<li class="blogger"><a href="<?php echo $blogger_icon; ?>">blogger</a></li>
<?php endif; ?>
<?php if($this->params->get('digg_icon')) : ?>
<li class="digg"><a href="<?php echo $digg_icon; ?>">digg</a></li>
<?php endif; ?>
<?php if ($this->params->get('facebook_icon')) : ?>
<li class="facebook"><a href="<?php echo $facebook_icon; ?>">facebook</a></li>
<?php endif; ?>
<?php if($this->params->get('flickr_icon')) : ?>
<li class="flickr"><a href="<?php echo $flickr_icon; ?>">flickr</a></li>
<?php endif; ?>
<?php if($this->params->get('google_icon')) : ?>
<li class="google"><a href="<?php echo $google_icon; ?>">google</a></li>
<?php endif; ?>
<?php if($this->params->get('linkedin_icon')) : ?>
<li class="linkedin"><a href="<?php echo $linkedin_icon; ?>">linkedin</a></li>
<?php endif; ?>
<?php if($this->params->get('myspace_icon')) : ?>
<li class="myspace"><a href="<?php echo $myspace_icon; ?>">myspace</a></li>
<?php endif; ?>
<?php if($this->params->get('pinterest_icon')) : ?>
<li class="pinterest"><a href="<?php echo $pinterest_icon; ?>">pinterest</a></li>
<?php endif; ?>
<?php if($this->params->get('stumble_icon')) : ?>
<li class="stumbleupon"><a href="<?php echo $stumble_icon; ?>">stumbleupon</a></li>
<?php endif; ?>
<?php if($this->params->get('twitter_icon')) : ?>
<li class="twitter"><a href="<?php echo $twitter_icon; ?>">twitter</a></li>
<?php endif; ?>
<?php if($this->params->get('rssfeed_icon')) : ?>
<li class="rss"><a href="<?php echo $rssfeed_icon; ?>">rss</a></li>
<?php endif; ?>
</ul>
</div> 
<div style="clear:both;"></div>
<?php endif; ?>
<?php if ($this->countModules( 'bookmark' )) : ?>
<jdoc:include type="modules" name="bookmark" style="xhtml" />
<div style="clear:both;"></div>
<?php endif; ?>
<?php if ($this->countModules( 'top_1 or top_2 or top_3 or top_4 or top_5 or top_6' )) : ?>
<section>
<div class="row colWidth_<?php echo $highlights1ModuleWidth ?>">
<?php if ($this->countModules( 'top_1' )) : ?>
<jdoc:include type="modules" name="top_1" style="xhtml" />
<?php endif; ?>
<?php if ($this->countModules( 'top_2' )) : ?>
<jdoc:include type="modules" name="top_2" style="xhtml" />
<?php endif; ?>
<?php if ($this->countModules( 'top_3' )) : ?>
<jdoc:include type="modules" name="top_3" style="xhtml" />
<?php endif; ?>
<?php if ($this->countModules( 'top_4' )) : ?>
<jdoc:include type="modules" name="top_4" style="xhtml" />
<?php endif; ?>
<?php if ($this->countModules( 'top_5' )) : ?>
<jdoc:include type="modules" name="top_5" style="xhtml" />
<?php endif; ?>
<?php if ($this->countModules( 'top_6' )) : ?>
<jdoc:include type="modules" name="top_6" style="xhtml" />
<?php endif; ?>
</div>
</section>
<div class="ol_clearFL"></div>
<?php endif; ?>
<?php if ($this->countModules( 'maintop_1 or maintop_2 or maintop_3 or maintop_4 or maintop_5 or maintop_6' )) : ?>
<section>
<div class="row colWidth_<?php echo $maincontent1ModuleWidth ?>">
<?php if ($this->countModules( 'maintop_1' )) : ?>
<jdoc:include type="modules" name="maintop_1" style="xhtml" />
<?php endif; ?>
<?php if ($this->countModules( 'maintop_2' )) : ?>
<jdoc:include type="modules" name="maintop_2" style="xhtml" />
<?php endif; ?>
<?php if ($this->countModules( 'maintop_3' )) : ?>
<jdoc:include type="modules" name="maintop_3" style="xhtml" />
<?php endif; ?>
<?php if ($this->countModules( 'maintop_4' )) : ?>
<jdoc:include type="modules" name="maintop_4" style="xhtml" />
<?php endif; ?>
<?php if ($this->countModules( 'maintop_5' )) : ?>
<jdoc:include type="modules" name="maintop_5" style="xhtml" />
<?php endif; ?>
<?php if ($this->countModules( 'maintop_6' )) : ?>
<jdoc:include type="modules" name="maintop_6" style="xhtml" />
<?php endif; ?>
</div>
</section>
<?php endif; ?>
<section>
<div class="row_main">
<?php if ($this->countModules( 'left' )) : ?>
<div class="ol_left">
<jdoc:include type="modules" name="left" style="xhtml" />
</div>
<?php endif; ?>
<div class="ol_componentContent <?php echo $moduleWidthcomponentContent?>">
<?php if ($this->countModules( 'breadcrumbs' )) : ?>
<div class="ol_breadcrumbs">
<jdoc:include type="modules" name="breadcrumbs" style="xhtml" />
</div>
<?php endif; ?>
<div class="inner">
<jdoc:include type="component" />
</div>
</div>
<?php if ($this->countModules( 'right' )) : ?>
<div class="ol_right">
<jdoc:include type="modules" name="right" style="xhtml" />
</div>
<?php endif; ?>
<div class="cleartBoth"></div>
</div>
</section>
<?php if ($this->countModules( 'mainbottom_1 or mainbottom_2 or mainbottom_3 or mainbottom_4 or mainbottom_5 or mainbottom_6' )) : ?>
<section>
<div class="row colWidth_<?php echo $maincontent2ModuleWidth ?>">
<?php if ($this->countModules( 'mainbottom_1' )) : ?>
<jdoc:include type="modules" name="mainbottom_1" style="xhtml" />
<?php endif; ?>
<?php if ($this->countModules( 'mainbottom_2' )) : ?>
<jdoc:include type="modules" name="mainbottom_2" style="xhtml" />
<?php endif; ?>
<?php if ($this->countModules( 'mainbottom_3' )) : ?>
<jdoc:include type="modules" name="mainbottom_3" style="xhtml" />
<?php endif; ?>
<?php if ($this->countModules( 'mainbottom_4' )) : ?>
<jdoc:include type="modules" name="mainbottom_4" style="xhtml" />
<?php endif; ?>
<?php if ($this->countModules( 'mainbottom_5' )) : ?>
<jdoc:include type="modules" name="mainbottom_5" style="xhtml" />
<?php endif; ?>
<?php if ($this->countModules( 'mainbottom_6' )) : ?>
<jdoc:include type="modules" name="mainbottom_6" style="xhtml" />
<?php endif; ?>
</div>
</section>
<?php endif; ?>
<div class="ol_clearFL"></div>
<?php if ($this->countModules( 'bottom_1 or bottom_2 or bottom_3 or bottom_4 or bottom_5 or bottom_6' )) : ?>
<section>
<div class="row colWidth_<?php echo $bottomModuleWidth ?>">
<?php if ($this->countModules( 'bottom_1' )) : ?>
<jdoc:include type="modules" name="bottom_1" style="xhtml" />
<?php endif; ?>
<?php if ($this->countModules( 'bottom_2' )) : ?>
<jdoc:include type="modules" name="bottom_2" style="xhtml" />
<?php endif; ?>
<?php if ($this->countModules( 'bottom_3' )) : ?>
<jdoc:include type="modules" name="bottom_3" style="xhtml" />
<?php endif; ?>
<?php if ($this->countModules( 'bottom_4' )) : ?>
<jdoc:include type="modules" name="bottom_4" style="xhtml" />
<?php endif; ?>
<?php if ($this->countModules( 'bottom_5' )) : ?>
<jdoc:include type="modules" name="bottom_5" style="xhtml" />
<?php endif; ?>
<?php if ($this->countModules( 'bottom_6' )) : ?>
<jdoc:include type="modules" name="bottom_6" style="xhtml" />
<?php endif; ?>
</div>
</section>
<?php endif; ?>
</div>
</div>
<div class="ol_spB"></div>
<footer>
<section>  
<div id="copyright" class="clearfix"><!--copyright starts here-->
<?php require("footer.php"); ?>
</div><!--copyright ends here-->  
</section>
</footer>

</body>
</html>