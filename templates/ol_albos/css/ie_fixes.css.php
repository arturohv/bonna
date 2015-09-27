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

.contact-image > img {
	 behavior: none !important;
}

ul.menu,
.ol_smenu ul.menu li:first-child a, 
.ol_smenu ul.menu li:first-child .separator,
.ol_smenu ul.menu li:last-child a, 
.ol_smenu ul.menu li:last-child .separator,
ul.menu ul
 {	
	-webkit-border-radius: 0px;
	-moz-border-radius: 0px;
	border-radius: 0px;
}


.item-page {
	margin:0;
}

ul.menu li > a,
ul.menu li > span,
ul.menu li ul li > a,
ul.menu li ul li > span,
ul.menu li ul li ul li > a,
ul.menu li ul li ul li > span {
	background: none;
}

#navigation {
	padding: 13px 0 0 0;
}

input[type='text'], input[type='password'], input[type='email'], select, textarea {
	position: relative;
	background-image:url(../images/bg_input_ie.png);
}

select {
	padding-top: 3px;
	padding-bottom: 1px;
}

.btn,
input.button,
button,
.btn-group > .btn:first-child,
.ol_buttonYellow, 
.ol_buttonRed, 
.ol_buttonBlue,
.ol_buttonGreen,
.ol_buttonPink,
.ol_buttonBlack,
.ol_buttonWhite,
.ol_buttonAccent,
ul.pagenav li a,
.ol_pagination > div {
	box-shadow: none;
	-pie-box-shadow: none;
}

");

?>