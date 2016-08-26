<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Slide.ascx.cs" Inherits="Web_AMO.UCcontrol.Slide" %>
<script src="../JS/jquery-3.0.0.js"></script>
<script src="../JS/jquery-3.0.0.min.js"></script>

<script src="../JS/Slide.js"></script>
<body style="padding:0px; margin:auto; background-color:#fff;font-family:Arial, sans-serif">
    <script>
        jQuery(document).ready(function ($) {
            
            var jssor_1_options = {
              $AutoPlay: true,
              $SlideWidth: 600,
              $Cols: 2,
              $Align: 100,
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              }
            };
            
            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 750);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            
        });
    </script>

    <style>
        .jssorb01 {
            position: absolute;
        }
        .jssorb01 div, .jssorb01 div:hover, .jssorb01 .av {
            position: absolute;
            /* size of bullet elment */
            width: 12px;
            height: 12px;
            filter: alpha(opacity=70);
            opacity: .7;
            overflow: hidden;
            cursor: pointer;
            border: #000 1px solid;
        }
        .jssorb01 div { background-color: gray; }
        .jssorb01 div:hover, .jssorb01 .av:hover { background-color: #d3d3d3; }
        .jssorb01 .av { background-color: #fff; }
        .jssorb01 .dn, .jssorb01 .dn:hover { background-color: #555555; }

        .jssora13l, .jssora13r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 40px;
            height: 50px;
            cursor: pointer;
            background: url('../../ImageSlide/tienlui.png') no-repeat;
            overflow: hidden;

        }
        .jssora13l { background-position: -10px -35px; }
        .jssora13r { background-position: -70px -35px; }
        .jssora13l:hover { background-position: -130px -35px; }
        .jssora13r:hover { background-position: -190px -35px; }
        .jssora13l.jssora13ldn { background-position: -250px -35px; }
        .jssora13r.jssora13rdn { background-position: -310px -35px; }
    </style>


    <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 800px; height: 300px; overflow: hidden; visibility: hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;background:url('../../ImageSlide/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
        </div>
        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 800px; height: 300px; overflow: hidden;">

            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="../../ImageSlide/1.jpeg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="../../ImageSlide/2.jpeg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="../../ImageSlide/3.jpeg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="../../ImageSlide/4.jpeg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="../../ImageSlide/5.jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="../../ImageSlide/6.jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="../../ImageSlide/7.jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="../../ImageSlide/8.jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="../../ImageSlide/9.jpg" />
            </div>

        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb01" style="bottom:16px;right:16px;" data-autocenter="1">
            <div data-u="prototype" style="width:12px;height:12px;"></div>
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora13l" style="top:0px;left:30px; width:40px;height:50px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora13r" style="top:0px;right:30px; width:40px;height:50px;" data-autocenter="2"></span>
    </div>

</body>
