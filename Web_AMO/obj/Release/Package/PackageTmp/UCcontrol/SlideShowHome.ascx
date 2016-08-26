<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SlideShowHome.ascx.cs" Inherits="Web_AMO.Presentation.UCcontrol.SlideShowHome" %>

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="../../JS/SlideShowHome.js"></script>

<style>
    .slide-container {
	height: 355px;
	width: 725px;
	margin: 0 auto;
}

.slide-stage{
	height: 320px;
	position: relative;
}

.slide-image {
	left: 0;
	position: absolute;
	top: 4px;
	opacity:0;
	display:none;
    left:-5px;
}

.slide-image:first-child{
	opacity:1;
	display:block;
}
.slide-pager {
	height: 20px;
}

.slide-pager ul {
	float: right;
	margin: 10px 0 0;
	padding: 0;
	width: auto;
}

.slide-pager-slot {
	background: none repeat scroll 0 0 #999999;
	display: block;
	float: left;
	height: 15px;
	list-style: none outside none;
	margin: 0 -4px 0 9px;
	width: 15px;
	cursor:pointer;
}

.slide-pager-slot:hover{
	background:red;
}
.slide-pager ul .focus{
	background:green;
}
.slide-control-prev {
	float: left;
	margin: 10px 5px 0 -5px;
	text-align: center;
	width: 15px;
	height: 15px;
	background: orange;
	line-height: 12px;
	color: #fff;
	cursor:pointer;
}

.slide-control-next{
	float: left;
	margin: 10px 0 0 0;
	text-align: center;
	width: 15px;
	height: 15px;
	background: orange;
	line-height: 12px;
	color: #fff;
	cursor:pointer;
}
</style>

		<div class="slide-container">
			<div class="slide-stage">
				<div class="slide-image"><a href="#"><img src="../../ImageSlide/1.jpg"  width="735" height="320";/></a></div>
				<div class="slide-image"><a href="#"><img src="../../ImageSlide/2.jpg"  width="735" height="320";/></a></div>
				<div class="slide-image"><a href="#"><img src="../../ImageSlide/3.jpg"  width="735" height="320";/></a></div>
				<div class="slide-image"><a href="#"><img src="../../ImageSlide/4.jpg"  width="735" height="320";/></a></div>
				<div class="slide-image"><a href="#"><img src="../../ImageSlide/5.jpg"  width="735" height="320";/></a></div>
				<div class="slide-image"><a href="#"><img src="../../ImageSlide/6.jpg"  width="735" height="320";/></a></div>
				<div class="slide-image"><a href="#"><img src="../../ImageSlide/7.jpg"  width="735" height="320";/></a></div>
                <div class="slide-image"><a href="#"><img src="../../ImageSlide/8.jpg"  width="735" height="320";/></a></div>
				<div class="slide-image"><a href="#"><img src="../../ImageSlide/9.jpg"  width="735" height="320";/></a></div>
			</div>
			<div class="slide-pager">
				<ul class="pager-container"></ul>
				<div class="slide-control-prev">«</div>
				<div class="slide-control-next">»</div>
			</div>
		</div>