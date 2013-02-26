<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : TrendyBiz
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20120818

-->
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>TrendyBiz by FCT</title>
        <link href="http://fonts.googleapis.com/css?family=Dancing+Script|Open+Sans+Condensed:300" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/style.css" />
    </head>
    <body>
        <div id="wrapper">
            <div id="menu-wrapper">
                <div id="menu" class="container">
                    <ul>
                        <li class="current_page_item"><a href="#">Homepage</a></li>
                        <li><a href="/news/">Новости</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Photos</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Links</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
            </div>
            <div id="logo" class="container">
                <h1><a href="#">TrendyBiz </a></h1>
                <p>In posuere eleifend odio quisque semper augue.</p>
            </div>
            <div class="divider">&nbsp;</div>
            <div id="page" class="container">

                <?php echo $content; ?>

                <!-- end #content -->
                <div id="sidebar">
                    <div>
                        <h2>Nulla luctus eleifend</h2>
                        <ul class="list-style1">
                            <li class="first"><a href="#">Pellentesque quis elit non lectus gravida blandit.</a></li>
                            <li><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</a></li>
                            <li><a href="#">Phasellus nec erat sit amet nibh pellentesque congue.</a></li>
                            <li><a href="#">Cras vitae metus aliquam risus pellentesque pharetra.</a></li>
                            <li><a href="#">Phasellus nec erat sit amet nibh pellentesque congue.</a></li>
                            <li><a href="#">Maecenas vitae orci vitae tellus feugiat eleifend.</a></li>
                        </ul>
                    </div>
                </div>
                <!-- end #sidebar -->
                <div style="clear: both;">&nbsp;</div>
            </div>
            <!-- end #page -->
            <div class="divider">&nbsp;</div>
            <div id="three-column" class="container">
                <div id="tbox1">
                    <div class="box-style">
                        <div class="image"><img src="images/img07.jpg" width="320" height="170" alt="" /></div>
                        <div class="arrow"></div>
                        <div class="content">
                            <h2>Fusce ultrices fringilla</h2>
                            <p>Aliquam erat volutpat. Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum id, elementum congue, nibh. </p>
                        </div>
                    </div>
                </div>
                <div id="tbox2">
                    <div class="box-style">
                        <div class="image"><img src="images/img08.jpg" width="320" height="170" alt="" /></div>
                        <div class="arrow"></div>
                        <div class="content">
                            <h2>Mauris vulputate dolor</h2>
                            <p>Aliquam erat volutpat. Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum id, elementum congue, nibh. </p>
                        </div>
                    </div>
                </div>
                <div id="tbox3">
                    <div class="box-style">
                        <div class="image"><img src="images/img09.jpg" width="320" height="170" alt="" /></div>
                        <div class="arrow"></div>
                        <div class="content">
                            <h2>Nulla luctus eleifend </h2>
                            <p>Aliquam erat volutpat. Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum id, elementum congue, nibh.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer-content" class="container">
            <div id="footer-bg">
                <div id="column1">
                    <h2>Welcome to my website</h2>
                    <p>In posuere eleifend odio quisque semper augue mattis wisi maecenas ligula. Donec leo, vivamus fermentum nibh in augue praesent a lacus at urna congue rutrum. Quisque dictum integer nisl risus, sagittis convallis, rutrum id, congue, and nibh. Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum id, elementum congue, nibh. Suspendisse dictum porta lectus.<br />
                    </p>
                </div>
                <div id="column2">
                    <h2>Etiam rhoncus volutpat</h2>
                    <ul class="list-style2">
                        <li class="first"><a href="#">Pellentesque quis elit non lectus gravida blandit.</a></li>
                        <li><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</a></li>
                        <li><a href="#">Phasellus nec erat sit amet nibh pellentesque congue.</a></li>
                        <li><a href="#">Cras vitae metus aliquam risus pellentesque pharetra.</a></li>
                        <li><a href="#">Maecenas vitae orci vitae tellus feugiat eleifend.</a></li>
                    </ul>
                </div>
                <div id="column3">
                    <h2>Recommended Links</h2>
                    <ul class="list-style2">
                        <li class="first"><a href="#">Pellentesque quis elit non lectus gravida blandit.</a></li>
                        <li><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</a></li>
                        <li><a href="#">Phasellus nec erat sit amet nibh pellentesque congue.</a></li>
                        <li><a href="#">Cras vitae metus aliquam risus pellentesque pharetra.</a></li>
                        <li><a href="#">Maecenas vitae orci vitae tellus feugiat eleifend.</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="footer">
            <p>© 2012 Untitled Inc. All rights reserved. Lorem ipsum dolor sit amet nullam blandit consequat phasellus etiam lorem. Design by <a href="http://www.freecsstemplates.org">FCT</a>.  Photos by <a href="http://fotogrph.com/">Fotogrph</a>.</p>
        </div>
        <!-- end #footer -->
    </body>
</html>
