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
/*

defined('_JEXEC') or die;
JHTML::_('behavior.framework', true);
$app = JFactory::getApplication();
*/

if (!isset($this->error)) {
$this->error = JError::raiseWarning(404, JText::_('JERROR_ALERTNOAUTHOR'));
$this->debug = false;
}
//get language and direction
$doc = JFactory::getDocument();
$this->language = $doc->language;
$this->direction = $doc->direction;
$this->params = JFactory::getApplication()->getTemplate(true)->params;
$templateURL = $this->baseurl."/templates/".$this->template;

?>

<!doctype html><head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<jdoc:include type="head" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/system.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/media/jui/css/bootstrap.css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/basics.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/load.css " type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/template.css" type="text/css" />

<!--[if IE 9]>
<style type="text/css">

body, 
#siteWrapper,
#errorboxoutline a {
behavior:url(<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/pie/PIE.php);
}
</style>
<![endif]-->

<!--[if lte IE 8]>
<style type="text/css">

body, 
#siteWrapper,
#errorboxoutline a  {
behavior:url(<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/pie/PIE.php);
}
</style>
<![endif]-->

<style>

body, html, #ol_errorWrapper  {
height:100%;
overflow: hidden;
}

</style>


</head>
<body>

<div class="wrapper container">
<div id="ol_errorWrapper">


<div class="error">

<span class="errorNumber"><?php echo $this->error->getCode(); ?></span>
<div id="errorboxheader"><?php echo $this->error->getMessage(); ?></div>

<div id="outline">
<div id="errorboxoutline">	
<div id="errorboxbody">
<p><strong><?php echo JText::_('JERROR_LAYOUT_NOT_ABLE_TO_VISIT'); ?></strong></p>
<ol>
<li><?php echo JText::_('JERROR_LAYOUT_AN_OUT_OF_DATE_BOOKMARK_FAVOURITE'); ?></li>
<li><?php echo JText::_('JERROR_LAYOUT_SEARCH_ENGINE_OUT_OF_DATE_LISTING'); ?></li>
<li><?php echo JText::_('JERROR_LAYOUT_MIS_TYPED_ADDRESS'); ?></li>
<li><?php echo JText::_('JERROR_LAYOUT_YOU_HAVE_NO_ACCESS_TO_THIS_PAGE'); ?></li>
<li><?php echo JText::_('JERROR_LAYOUT_REQUESTED_RESOURCE_WAS_NOT_FOUND'); ?></li>
<li><?php echo JText::_('JERROR_LAYOUT_ERROR_HAS_OCCURRED_WHILE_PROCESSING_YOUR_REQUEST'); ?></li>
</ol>
<p><strong><?php echo JText::_('JERROR_LAYOUT_PLEASE_TRY_ONE_OF_THE_FOLLOWING_PAGES'); ?></strong></p>

<ul>
<li><a href="<?php echo $this->baseurl; ?>/index.php" title="<?php echo JText::_('JERROR_LAYOUT_GO_TO_THE_HOME_PAGE'); ?>"><?php echo JText::_('JERROR_LAYOUT_HOME_PAGE'); ?></a></li>
</ul>

<p><?php echo JText::_('JERROR_LAYOUT_PLEASE_CONTACT_THE_SYSTEM_ADMINISTRATOR'); ?>.</p>
<div id="techinfo">
<p><?php echo $this->error->getMessage(); ?></p>
<p>
<?php if ($this->debug) :
echo $this->renderBacktrace();
endif; ?>
</p>
</div>
</div>
</div>
</div>
</div>
</div>  
</div>

</body>
</html>