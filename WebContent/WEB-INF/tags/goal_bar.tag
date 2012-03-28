<%@ tag language="java" pageEncoding="ISO-8859-1"%>

<style>
#goal_outer {
	background-color: #BDBDBD;
	width: 100%;
	height: 90px;
    box-shadow: 0px 2px 8px rgba(0, 0, 0, 0.30);
    -moz-box-shadow: 0px 2px 8px rgba(0, 0, 0, 0.30);
    -webkit-box-shadow: 0px 2px 8px rgba(0, 0, 0, 0.30);
}

#goal_outer #bar_container {
	background-color: white;
	height: 55px;
	width: 85%;
	margin: 0px auto;
	position: relative;
	top: 20%;
}
#goal_outer #bar_container #bar{
	/*background-color:#0DB537;*/
	width:50%;
	height:100%;
	max-width:100%;
	
	
-moz-box-shadow: 0px 0px 2px #000000;
-webkit-box-shadow: 0px 0px 2px #000000;
box-shadow: 0px 0px 2px #000000;
/*IE 7 AND 8 DO NOT SUPPORT BLUR PROPERTY OF SHADOWS*/
filter: progid: DXImageTransform.Microsoft.gradient(startColorstr = '#52ff5a', endColorstr = '#232423');
/*INNER ELEMENTS MUST NOT BREAK THIS ELEMENTS BOUNDARIES*/
/*Element must have a height (not auto)*/
/*All filters must be placed together*/
-ms-filter: "progid: DXImageTransform.Microsoft.gradient(startColorstr = '#52ff5a', endColorstr = '#232423')";
/*Element must have a height (not auto)*/
/*All filters must be placed together*/
background-image: -moz-linear-gradient(top, #52ff5a, #232423);
background-image: -ms-linear-gradient(top, #52ff5a, #232423);
background-image: -o-linear-gradient(top, #52ff5a, #232423);
background-image: -webkit-gradient(linear, center top, center bottom, from(#52ff5a), to(#232423));
background-image: -webkit-linear-gradient(top, #52ff5a, #232423);
background-image: linear-gradient(top, #52ff5a, #232423);
/*--IE9 DOES NOT SUPPORT GRADIENT BACKGROUNDS--*/
opacity: 0.9;
-ms-filter: progid: DXImageTransform.Microsoft.Alpha(Opacity = 90);
/*-ms-filter must come before filter*/
filter: alpha(opacity = 90);
/*INNER ELEMENTS MUST NOT BREAK THIS ELEMENTS BOUNDARIES*/
/*All filters must be placed together*/


}
.rounded20{
-webkit-border-radius: 20px;
-moz-border-radius: 20px;
border-radius: 20px;
}

.rounded25{
-webkit-border-radius: 25px;
-moz-border-radius: 25px;
border-radius: 25px;
}
</style>

<div id="goal_outer" class="rounded25">
	<div id="bar_container" class="rounded20">
		<div id="bar" class="rounded20"></div>
	</div>
</div>
