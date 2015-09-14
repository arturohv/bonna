<?php

// Template parameters
$maxWidth			= $this->params->get('maxWidth');
$bodyColor			= $this->params->get('bodyColor');
$bodyFontSize		= $this->params->get('bodyFontSize');
$bodyFontFamily		= $this->params->get('bodyFontFamily');
$bodyLineHeight		= $this->params->get('bodyLineHeight');
$showShadows	    = $this->params->get('showShadows');
$linkColor			= $this->params->get('linkColor');
$linkColorHover		= $this->params->get('linkColorHover');
$headerBgColor		= $this->params->get('headerBgColor');
$articleColor		= $this->params->get('articleColor');
$articleTitleColor	= $this->params->get('articleTitleColor');
$articleTitleShadowColor= $this->params->get('articleTitleShadowColor');
$articleTitleLinkColor= $this->params->get('articleTitleLinkColor');
$articleTitleLinkShadowColor= $this->params->get('articleTitleLinkShadowColor');
$articleTitleActiveColor= $this->params->get('articleTitleActiveColor');
$articleTitleActiveShadowColor= $this->params->get('articleTitleActiveShadowColor');
$articleTitleFontSize= $this->params->get('articleTitleFontSize');
$articleTitleFontFamily	= $this->params->get('articleTitleFontFamily');
$moduleTitleFontSize= $this->params->get('moduleTitleFontSize');
$moduleTitleFontFamily= $this->params->get('moduleTitleFontFamily');
$topnavBgColor		= $this->params->get('topnavBgColor');
$topnavColor		= $this->params->get('topnavColor');
$topnavLinkColor	= $this->params->get('topnavLinkColor');
$topnavLinkActiveColor	= $this->params->get('topnavLinkActiveColor');
$showdate			= $this->params->get('showdate');
$dateColor			= $this->params->get('dateColor');
$navColor			= $this->params->get('navColor');
$navActiveColor		= $this->params->get('navActiveColor');
$subnavActiveColor	= $this->params->get('subnavActiveColor');
$slideBgColor		= $this->params->get('slideBgColor');
$slideBgPattern		= $this->params->get('slideBgPattern');
$slideColor		= $this->params->get('slideColor');
$slideLinkColor	= $this->params->get('slideLinkColor');
$slideLinkActiveColor	= $this->params->get('slideLinkActiveColor');
$promoBgColor		= $this->params->get('promoBgColor');
$promoBgPattern		= $this->params->get('promoBgPattern');
$promoColor		= $this->params->get('promoColor');
$promoLinkColor	= $this->params->get('promoLinkColor');
$promoLinkActiveColor	= $this->params->get('promoLinkActiveColor');
$showcaseBgColor		= $this->params->get('showcaseBgColor');
$showcaseBgPattern		= $this->params->get('showcaseBgPattern');
$showcaseColor		= $this->params->get('showcaseColor');
$showcaseLinkColor	= $this->params->get('showcaseLinkColor');
$showcaseLinkActiveColor	= $this->params->get('showcaseLinkActiveColor');
$maintopBgColor		= $this->params->get('maintopBgColor');
$maintopColor		= $this->params->get('maintopColor');
$maintopLinkColor	= $this->params->get('maintopLinkColor');
$maintopLinkActiveColor	= $this->params->get('maintopLinkActiveColor');
$mainbottomBgColor		= $this->params->get('mainbottomBgColor');
$mainbottomColor		= $this->params->get('mainbottomColor');
$mainbottomLinkColor	= $this->params->get('mainbottomLinkColor');
$mainbottomLinkActiveColor	= $this->params->get('mainbottomLinkActiveColor');
$bottomBgColor		= $this->params->get('bottomBgColor');
$bottomColor		= $this->params->get('bottomColor');
$bottomLinkColor	= $this->params->get('bottomLinkColor');
$bottomLinkActiveColor	= $this->params->get('bottomLinkActiveColor');
$footerBgColor		= $this->params->get('footerBgColor');
$footerColor		= $this->params->get('footerColor');
$footerLinkColor	= $this->params->get('footerLinkColor');
$footerLinkActiveColor	= $this->params->get('footerLinkActiveColor');
$copyrightBgColor		= $this->params->get('copyrightBgColor');
$copyrightColor		= $this->params->get('copyrightColor');
$copyrightLinkColor	= $this->params->get('copyrightLinkColor');
$copyrightLinkActiveColor	= $this->params->get('copyrightLinkActiveColor');
$backtotop			= $this->params->get('backtotop');
$showLytebox		= $this->params->get('showLytebox');
$showDefaultLogo	= $this->params->get('showDefaultLogo');
$defaultLogo 		= $this->params->get('defaultLogo');
$defaultLogoImgColor = $this->params->get('defaultLogoImgColor');
$defaultLogoImgOpacity = $this->params->get('defaultLogoImgOpacity');
$defaultLogoPadding	= $this->params->get('defaultLogoPadding');
$defaultLogoMargin	= $this->params->get('defaultLogoMargin');
$showMediaLogo		= $this->params->get('showMediaLogo');
$mediaLogo 			= $this->params->get('mediaLogo');
$mediaLogoPadding	= $this->params->get('mediaLogoPadding');
$mediaLogoMargin	= $this->params->get('mediaLogoMargin');
$showTextLogo		= $this->params->get('showTextLogo');
$textLogo 			= $this->params->get('textLogo');
$textLogoColor 		= $this->params->get('textLogoColor');
$textLogoFontSize 	= $this->params->get('textLogoFontSize');
$textLogoFontFamily = $this->params->get('textLogoFontFamily');
$textLogoLineHeight = $this->params->get('textLogoLineHeight');
$textLogoPadding 	= $this->params->get('textLogoPadding');
$textLogoMargin 	= $this->params->get('textLogoMargin');
$showSlogan 		= $this->params->get('showSlogan');
$slogan 			= $this->params->get('slogan');
$sloganColor 		= $this->params->get('sloganColor');
$sloganFontSize 	= $this->params->get('sloganFontSize');
$sloganFontFamily 	= $this->params->get('sloganFontFamily');
$sloganLineHeight 	= $this->params->get('sloganLineHeight');
$sloganPadding 		= $this->params->get('sloganPadding');
$sloganMargin 		= $this->params->get('sloganMargin');
$var15TitleShadowColor= $this->params->get('var15TitleShadowColor');
$mobileNavUpBgColor	= $this->params->get('mobileNavUpBgColor');
$mobileNavText		= $this->params->get('mobileNavText');
$mobileNavBgColor 	= $this->params->get('mobileNavBgColor');
$mobileNavBgLinkColor 	= $this->params->get('mobileNavBgLinkColor');
$mobileNavBgBorderColor = $this->params->get('mobileNavBgBorderColor');
$mobileNavActiveColor 	= $this->params->get('mobileNavActiveColor');
$mobileNavBgActiveColor = $this->params->get('mobileNavBgActiveColor');
$mobileBodyFontSize	= $this->params->get('mobileBodyFontSize');
$mobileBodyLineHeight = $this->params->get('mobileBodyLineHeight');
$mobileTextLogoFontSize = $this->params->get('mobileTextLogoFontSize');
$mobileSloganFontSize = $this->params->get('mobileSloganFontSize');
$mobileArticleFontSize = $this->params->get('mobileArticleFontSize');
$mobileModuleFontSize = $this->params->get('mobileModuleFontSize');
$analyticsCode		= $this->params->get('analyticsCode');
$rtlTemplate		= $this->params->get('rtlTemplate');

?>

<style type="text/css">
<?php if ($bodyColor != '' || $bodyFontSize != '' || $bodyFontFamily != '' || $bodyLineHeight != '' ) { ?>
body { <?php if ($bodyColor != '')	{ ?> color: #<?php echo htmlspecialchars($bodyColor); ?>; <?php } ?> <?php if ($bodyFontSize != '')	{ ?> font-size: <?php echo htmlspecialchars($bodyFontSize); ?>;	<?php } ?><?php if ($bodyFontFamily != '')	{ ?> font-family: <?php echo htmlspecialchars($bodyFontFamily); ?>;	<?php } ?> <?php if ($bodyLineHeight != '') { ?> line-height: <?php echo htmlspecialchars($bodyLineHeight); ?>; <?php } ?> }
<?php } ?>
<?php if (($showShadows) !=0) { ?>
.mcolor, .dark, .white, .logs, .beige, .greys, .moduletablewhite, .moduletablegrey, .moduletablebeige, .moduletablelogs,.moduletabledark, .moduletablecolor { -webkit-box-shadow: 0px 3px 5px #ccc;	-moz-box-shadow: 0px 3px 5px #ccc;box-shadow: 0px 3px 5px #ccc;}
<?php } ?>
<?php if ($maxWidth != '')	{ ?>
.base { max-width: <?php echo htmlspecialchars($maxWidth); ?>; }
<?php } ?>
<?php if ($linkColor != '')	{ ?>
a { color: #<?php echo htmlspecialchars($linkColor); ?>; }
<?php } ?>
<?php if ($linkColorHover != '') { ?>
a:hover { color: #<?php echo htmlspecialchars($linkColorHover); ?>; }
<?php } ?>
<?php if ($headerBgColor != '')	{ ?>
#headersite { background-color: #<?php echo htmlspecialchars($headerBgColor); ?> ;}
<?php } ?>
<?php if ($articleColor != '' ) { ?>
.item, .items-leading, .item-page {<?php if ($articleColor != '') { ?> color: #<?php echo htmlspecialchars($articleColor); ?> ; <?php } ?>}
<?php } ?>
<?php if ( $articleTitleFontSize != '' || $articleTitleFontFamily != '' ) { ?>
.blog h1.title, .blog-featured h1.title, .item h1.title, .item-page h1.title, .archive h1.title, .category-list h1.title  { <?php if ($articleTitleFontSize != '') { ?>	font-size: <?php echo htmlspecialchars($articleTitleFontSize); ?> ; <?php } ?> <?php if ($articleTitleFontFamily != '') { ?> font-family: <?php echo htmlspecialchars($articleTitleFontFamily); ?> ; <?php } ?>}
<?php } ?>
<?php if ($moduleTitleFontSize != '' || $moduleTitleFontFamily != '' ) { ?>
.moduletable h3, .moduletable_menu h3, .moduletable_text h3 { <?php if ($moduleTitleFontSize != '') { ?> font-size: <?php echo htmlspecialchars($moduleTitleFontSize); ?> ; <?php } ?> <?php if ($moduleTitleFontFamily != '') { ?> font-family: <?php echo htmlspecialchars($moduleTitleFontFamily); ?> ; <?php } ?>} 
<?php } ?>
<?php if ($topnavBgColor != '')	{ ?>
#topnavwrap { background-color: #<?php echo htmlspecialchars($topnavBgColor); ?> ;}
<?php } ?><?php if ($topnavColor != '') { ?>
#topnav { color: #<?php echo htmlspecialchars($topnavColor); ?> ; }
<?php } ?>
<?php if ($topnavLinkColor != '') { ?>
#topnav ul li a, #topnav a { color: #<?php echo htmlspecialchars($topnavLinkColor); ?> ; }
<?php } ?><?php if ($topnavLinkActiveColor != '') { ?>
#topnav ul li.active a, #topnav ul li a:hover, #topnav ul li:hover a, #topnav ul li.sfHover a, #topnav a:hover { color: #<?php echo htmlspecialchars($topnavLinkActiveColor); ?> ;	}
<?php } ?><?php if ($dateColor != '') { ?>
#showdate { color: #<?php echo htmlspecialchars($dateColor); ?> ; }
<?php } ?><?php if ($navColor != '') { ?>
#nav ul li a { color: #<?php echo htmlspecialchars($navColor); ?> ; }
<?php } ?>
<?php if ($navActiveColor != '' ) { ?>
#nav ul li.active a, #nav ul li a:hover, #nav ul li:hover a, #nav ul li.sfHover a,  a.nav-mobile:hover, a.nav-mobile:focus, #nav-mobile li a:hover, #nav-mobile li a:focus { 
<?php if ($navActiveColor != '') { ?> color: #<?php echo htmlspecialchars($navActiveColor); ?> ; <?php } ?>}<?php } ?><?php if ($subnavActiveColor != '' ) { ?>
#nav li li.active a, #nav li li li.active a, #nav li li li li.active a,#nav li li li li li.active a, #nav li li a:hover, #nav li li li a:hover, #nav li li li li a:hover, #nav li li li li li a:hover {
<?php if ($subnavActiveColor != '') { ?> color: #<?php echo htmlspecialchars($subnavActiveColor); ?> ; <?php } ?>	}
<?php } ?>
<?php if ($slideBgColor != '' || $slideBgPattern != '')	{ ?>
#showwrap { background-color: #<?php echo htmlspecialchars($slideBgColor); ?> ;background-image: url(<?php echo $this->baseurl; ?>/templates/<?php echo $this->template?>/images/patterns/<?php echo htmlspecialchars($slideBgPattern); ?>.png );}
<?php } ?><?php if ($slideColor != '') { ?>
#show { color: #<?php echo htmlspecialchars($slideColor); ?> ; }
<?php } ?>
<?php if ($slideLinkColor != '') { ?>
#show ul li a, #show a { color: #<?php echo htmlspecialchars($slideLinkColor); ?> ; }
<?php } ?><?php if ($slideLinkActiveColor != '') { ?>
#show ul li.active a, #show ul li a:hover, #show ul li:hover a, #show ul li.sfHover a, #show a:hover { color: #<?php echo htmlspecialchars($slideLinkActiveColor); ?> ; }
<?php } ?>
<?php if ($promoBgColor != ''|| $promoBgPattern != '')	{ ?>
#promowrap { background-color: #<?php echo htmlspecialchars($promoBgColor); ?> ;background-image: url(<?php echo $this->baseurl; ?>/templates/<?php echo $this->template?>/images/patterns/<?php echo htmlspecialchars($promoBgPattern); ?>.png );}
<?php } ?><?php if ($promoColor != '') { ?>
#advert { color: #<?php echo htmlspecialchars($promoColor); ?> ; }
<?php } ?>
<?php if ($promoLinkColor != '') { ?>
#advert ul li a, #advert a { color: #<?php echo htmlspecialchars($promoLinkColor); ?> ; }
<?php } ?><?php if ($promoLinkActiveColor != '') { ?>
#advert ul li.active a, #advert ul li a:hover, #advert ul li:hover a, #advert ul li.sfHover a, #advert a:hover { color: #<?php echo htmlspecialchars($promoLinkActiveColor); ?> ;	}
<?php } ?>
<?php if ($showcaseBgColor != ''|| $showcaseBgPattern != '')	{ ?>
#showcasewrap { background-color: #<?php echo htmlspecialchars($showcaseBgColor); ?> ;background-image: url(<?php echo $this->baseurl; ?>/templates/<?php echo $this->template?>/images/patterns/<?php echo htmlspecialchars($showcaseBgPattern); ?>.png );}
<?php } ?><?php if ($showcaseColor != '') { ?>
#showcase { color: #<?php echo htmlspecialchars($showcaseColor); ?> ; }
<?php } ?>
<?php if ($showcaseLinkColor != '') { ?>
#showcase ul li a, #showcase a { color: #<?php echo htmlspecialchars($showcaseLinkColor); ?> ; }
<?php } ?><?php if ($showcaseLinkActiveColor != '') { ?>
#showcase ul li.active a, #showcase ul li a:hover, #showcase ul li:hover a, #showcase ul li.sfHover a, #showcase a:hover { color: #<?php echo htmlspecialchars($showcaseLinkActiveColor); ?> ;	}
<?php } ?>
<?php if ($maintopBgColor != '')	{ ?>
#maintopwrap { background-color: #<?php echo htmlspecialchars($maintopBgColor); ?> ;}
<?php } ?><?php if ($maintopColor != '') { ?>
#maintop { color: #<?php echo htmlspecialchars($maintopColor); ?> ; }
<?php } ?>
<?php if ($maintopLinkColor != '') { ?>
#maintop ul li a, #maintop a { color: #<?php echo htmlspecialchars($maintopLinkColor); ?> ; }
<?php } ?><?php if ($maintopLinkActiveColor != '') { ?>
#maintop ul li.active a, #maintop ul li a:hover, #maintop ul li:hover a, #maintop ul li.sfHover a, #maintop a:hover { color: #<?php echo htmlspecialchars($maintopLinkActiveColor); ?> ;	}
<?php } ?>
<?php if ($mainbottomBgColor != '')	{ ?>
#mainbottomwrap { background-color: #<?php echo htmlspecialchars($mainbottomBgColor); ?> ;}
<?php } ?><?php if ($mainbottomColor != '') { ?>
#mainbottom { color: #<?php echo htmlspecialchars($mainbottomColor); ?> ; }
<?php } ?>
<?php if ($mainbottomLinkColor != '') { ?>
#mainbottom ul li a, #mainbottom a { color: #<?php echo htmlspecialchars($mainbottomLinkColor); ?> ; }
<?php } ?><?php if ($mainbottomLinkActiveColor != '') { ?>
#mainbottom ul li.active a, #mainbottom ul li a:hover, #mainbottom ul li:hover a, #mainbottom ul li.sfHover a, #mainbottom a:hover { color: #<?php echo htmlspecialchars($mainbottomLinkActiveColor); ?> ;	}
<?php } ?>
<?php if ($bottomBgColor != '')	{ ?>
#bottomwrap { background-color: #<?php echo htmlspecialchars($bottomBgColor); ?> ;}
<?php } ?><?php if ($bottomColor != '') { ?>
#bottom { color: #<?php echo htmlspecialchars($bottomColor); ?> ; }
<?php } ?>
<?php if ($bottomLinkColor != '') { ?>
#bottom ul li a, #bottom a { color: #<?php echo htmlspecialchars($bottomLinkColor); ?> ; }
<?php } ?><?php if ($bottomLinkActiveColor != '') { ?>
#bottom ul li.active a, #bottom ul li a:hover, #bottom ul li:hover a, #bottom ul li.sfHover a, #bottom a:hover { color: #<?php echo htmlspecialchars($bottomLinkActiveColor); ?> ;	}
<?php } ?>
<?php if ($footerBgColor != '')	{ ?>
#footerwrap { background-color: #<?php echo htmlspecialchars($footerBgColor); ?> ;}
<?php } ?><?php if ($footerColor != '') { ?>
#footer { color: #<?php echo htmlspecialchars($footerColor); ?> ; }
<?php } ?>
<?php if ($footerLinkColor != '') { ?>
#footer ul li a, #footer a { color: #<?php echo htmlspecialchars($footerLinkColor); ?> ; }
<?php } ?><?php if ($footerLinkActiveColor != '') { ?>
#footer ul li.active a, #footer ul li a:hover, #footer ul li:hover a, #footer ul li.sfHover a, #footer a:hover { color: #<?php echo htmlspecialchars($footerLinkActiveColor); ?> ;	}
<?php } ?>
<?php if ($copyrightBgColor != '')	{ ?>
#copyrightwrap { background-color: #<?php echo htmlspecialchars($copyrightBgColor); ?> ;}
<?php } ?><?php if ($copyrightColor != '') { ?>
#copyright { color: #<?php echo htmlspecialchars($copyrightColor); ?> ; }
<?php } ?>
<?php if ($copyrightLinkColor != '') { ?>
#copyright ul li a, #copyright a { color: #<?php echo htmlspecialchars($copyrightLinkColor); ?> ; }
<?php } ?><?php if ($copyrightLinkActiveColor != '') { ?>
#copyright ul li.active a, #copyright ul li a:hover, #copyright ul li:hover a, #copyright ul li.sfHover a, #copyright a:hover { color: #<?php echo htmlspecialchars($copyrightLinkActiveColor); ?> ;	}
<?php } ?>
<?php if ($defaultLogoImgColor != '' || $defaultLogoImgOpacity != '') { ?>
#logo img { 
<?php if ($defaultLogoImgColor != '') { ?> background-color: #<?php echo htmlspecialchars($defaultLogoImgColor); ?> ; <?php } ?>	
<?php if ($defaultLogoImgOpacity != '') { ?> opacity: <?php echo htmlspecialchars($defaultLogoImgOpacity); ?> ; <?php } ?> 
}
<?php } ?><?php if ($defaultLogoPadding != '' || $defaultLogoMargin != '' ) { ?>
.defaultLogo {
<?php if ($defaultLogoPadding != '') { ?> padding: <?php echo htmlspecialchars($defaultLogoPadding); ?>; <?php } ?>
<?php if ($defaultLogoMargin != '')	{ ?> margin: <?php echo htmlspecialchars($defaultLogoMargin); ?>; <?php } ?>
}
<?php } ?><?php if ($mediaLogoPadding != '' || $mediaLogoMargin != '' ) { ?>
.mediaLogo { 
<?php if ($mediaLogoPadding != '') { ?> padding: <?php echo htmlspecialchars($mediaLogoPadding); ?>; <?php } ?>
<?php if ($mediaLogoMargin != '') { ?> margin: <?php echo htmlspecialchars($mediaLogoMargin); ?>; <?php } ?>
}
<?php } ?><?php if ($textLogoColor != '' || $textLogoFontSize != '' || $textLogoFontFamily != '' || $textLogoLineHeight != '' || $textLogoPadding != '' || $textLogoMargin != '' ) { ?>
.textLogo {
<?php if ($textLogoColor != '')	{ ?> color: #<?php echo htmlspecialchars($textLogoColor); ?> ; <?php } ?>
<?php if ($textLogoFontSize != '')	{ ?> font-size: <?php echo htmlspecialchars($textLogoFontSize); ?> ; <?php } ?>
<?php if ($textLogoFontFamily != '') { ?> font-family: <?php echo htmlspecialchars($textLogoFontFamily); ?> ; <?php } ?>
<?php if ($textLogoLineHeight != '') { ?> line-height: <?php echo htmlspecialchars($textLogoLineHeight); ?> ; <?php } ?>
<?php if ($textLogoPadding != '') { ?> padding: <?php echo htmlspecialchars($textLogoPadding); ?>; <?php } ?>
<?php if ($textLogoMargin != '') { ?> margin: <?php echo htmlspecialchars($textLogoMargin); ?>; <?php } ?>
}
<?php } ?><?php if ($sloganColor != '' || $sloganFontSize != '' || $sloganFontFamily != '' || $sloganLineHeight != '' || $sloganPadding != '' || $sloganMargin != '' ) { ?>
.slogan {
<?php if ($sloganColor != '') { ?> color: #<?php echo htmlspecialchars($sloganColor); ?> ; <?php } ?>
<?php if ($sloganFontSize != '') { ?> font-size: <?php echo htmlspecialchars($sloganFontSize); ?> ; <?php } ?>
<?php if ($sloganFontFamily != '') { ?> font-family: <?php echo htmlspecialchars($sloganFontFamily); ?> ; <?php } ?>
<?php if ($sloganLineHeight != '') { ?> line-height: <?php echo htmlspecialchars($sloganLineHeight); ?> ; <?php } ?>
<?php if ($sloganPadding != '') { ?> padding: <?php echo htmlspecialchars($sloganPadding); ?>; <?php } ?>
<?php if ($sloganMargin != '') { ?> margin: <?php echo htmlspecialchars($sloganMargin); ?>; <?php } ?>
}
<?php } ?>
@media handheld, only screen and (max-width: 767px) {
<?php if ($mobileNavUpBgColor != '') { ?>
#navbar { background-color: #<?php echo htmlspecialchars($mobileNavUpBgColor); ?> ; }
<?php } ?>
<?php if ($mobileNavBgColor != '') { ?>
#nav-mobile ul { background-color: #<?php echo htmlspecialchars($mobileNavBgColor); ?> ; }
<?php } ?><?php if ($mobileNavBgLinkColor != '' || $mobileNavBgBorderColor != '' ) { ?>
#nav-mobile ul a { 
<?php if ($mobileNavBgLinkColor != '') { ?>	color: #<?php echo htmlspecialchars($mobileNavBgLinkColor); ?>; <?php } ?>
<?php if ($mobileNavBgBorderColor != '') { ?> border-bottom: 1px solid # <?php echo htmlspecialchars($mobileNavBgBorderColor); ?>; <?php } ?>
}
<?php } ?><?php if ($mobileNavActiveColor != '' || $mobileNavBgActiveColor != '' ) { ?>
#nav-mobile ul a:hover { 
<?php if ($mobileNavActiveColor != '') { ?> color: #<?php echo htmlspecialchars($mobileNavActiveColor); ?>; <?php } ?>
<?php if ($mobileNavBgActiveColor != '') { ?> background-color: #<?php echo htmlspecialchars($mobileNavBgActiveColor); ?>; <?php } ?>
}
<?php } ?><?php if ($mobileBodyFontSize != '' || $mobileBodyLineHeight != '' ) { ?>
body { 
<?php if ($mobileBodyFontSize != '') { ?>	font-size: <?php echo htmlspecialchars($mobileBodyFontSize); ?>; <?php } ?>
<?php if ($mobileBodyLineHeight != '') { ?>	line-height: <?php echo htmlspecialchars($mobileBodyLineHeight); ?>; <?php } ?>
}
<?php } ?><?php if ($mobileTextLogoFontSize != '') { ?>
.textLogo { font-size: <?php echo htmlspecialchars($mobileTextLogoFontSize); ?> ; }
<?php } ?><?php if ($mobileSloganFontSize != '') { ?>
.slogan { font-size: <?php echo htmlspecialchars($mobileSloganFontSize); ?> ; }
<?php } ?><?php if ($mobileArticleFontSize != '') { ?>
.blog h2.title, .blog-featured h2.title, .item h2.title, .item-page h2.title { 
	font-size: <?php echo htmlspecialchars($mobileArticleFontSize); ?> ; }
<?php } ?><?php if ($mobileModuleFontSize != '')	{ ?>
.moduletable h3, .moduletable_menu h3, .moduletable_text h3 { 
	font-size: <?php echo htmlspecialchars($mobileModuleFontSize); ?> ; } 
<?php } ?>}

</style>