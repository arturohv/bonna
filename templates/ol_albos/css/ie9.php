<?php

/**
* @version 1.0
* @package ol_albos
* @copyright (C) 2012 by olwebdesign
* @license Released under the terms of the GNU General Public License
**/

header("content-type: text/css");

echo("
@charset 'utf-8';
/* CSS Document */

body, 
#siteWrapper,
header,
#main section,        
.moduletable_ol_light,
.moduletable_ol_dark,         
input, 
input[type="text"],
input[type="password"],
input[type="email"],
textarea,
ul.menu,
.ol_pagination div,
.autocompleter-choices,
ul.autocompleter-choices li.autocompleter-selected,       
ul.pagenav li a,
.button, 
button,
.btn,
#errorboxoutline a,       
ul.pagenav li a,        
.input-append .add-on,
.input-prepend .add-on,        
.ol_buttonAccent, 
.ol_buttonYellow, 
.ol_buttonRed, 
.ol_buttonBlue,
.ol_buttonGreen,
.ol_buttonPink,
.ol_buttonBlack,
.ol_buttonWhite,        
#login-form.compact .button,
.tip  {
behavior:url(<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/pie/PIE.php);
}

ul.menu {
-webkit-border-radius: 0px;
-moz-border-radius: 0px;
border-radius: 0px; 
}
");

?>