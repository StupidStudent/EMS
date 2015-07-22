<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml"><style type="text/css" id="37240620000"></style><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>发表主题 - JEEBBS论坛 - powered by jeebbs</title>
	<link href="css/front.css" rel="stylesheet" type="text/css">
    <script src="js/hm.js"></script><script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/front.js" type="text/javascript"></script>
    <script src="js/pony.js" type="text/javascript"></script><style type="text/css" adt="123"></style>
    <script src="js/PnEditor.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="css/whole.css">
    <link rel="stylesheet" type="text/css" href="css/layout.css">
    <script type="text/javascript">
var VoteItem = "<div><input name='name'/><a href='javascript:;'>X</a></div>";
$(function() {
	new PnEditor();
	$(".AddItem").click(function(){
		$("#itemPanel").append(VoteItem);
		BindEvent();
	});
	BindEvent();
});

function BindEvent(){
	$("#itemPanel a").click(function(){
		$(this).parent().remove();
	});
}

function checkContent(){
  if($("#title").val()==""){
     alert("标题不能为空");
     return false;
  }
  if($("#_editor_textarea").val()==""){
     alert("内容不能为空");
     return false;
  }
  return true;
}
</script>
<script type="text/javascript">
	$("#jvForm").validate($.validator.AlertError);
</script>
<style type="text/css">
#_editor_controls{text-align:left;}
#_editor_controls ._menu{font-size:12px;padding:4px 9px 2px 2px;}

.editortoolbar a{width:30px; float:left; display:block; margin:4px 0 0 4px; cursor:pointer; text-decoration:none;}
.editortoolbar a:hover{border:1px solid #C1C1C1;}


._controls_normal{border:1px solid #F5F5F0;}
._controls_hover{border:1px solid #9DB3C5;background-color:#E8F3FD;}

#_pop_container{font-size:12px;}
#_pop_container ul{list-style-type:none;margin:0px;padding:10px 7px;}
#_pop_container li{padding:1px;cursor:pointer}
#_pop_container > div{position:absolute;border:1px solid #CCC;border-bottom-style:solid;background-color:#FFF}

#_forecolor_pop{padding:5px;}
#_forecolor_pop td{width:12px;height:12px;}
#_forecolor_pop td div{width:10px;height:10px;cursor:pointer;}
._forecolor_normal{border:1px solid #FFF;}
._forecolor_hover{border:1px solid #000;}

._center{text-align:center;}
._pop_input{width:270px;padding:10px 10px;}
._pop_input input[type=text]{width:260px;}
._pop_input div{padding:1px 0;}
._pop_input hr{height:1px;padding-top:0px; margin-top:0px;}

#_editor_textarea{width:99%;height:250px;}
._editor_local_img{border:1px solid #CCC;padding:10px;background-color:#FFF}
#smile{overflow:hidden;}
#smile img{cursor:pointer;}
</style>


  <script>if(!document.URL.match(/^http:\/\/v\.baidu\.com|http:\/\/music\.baidu\.com|http:\/\/dnf\.duowan\.com|http:\/\/bbs\.duowan\.com|http:\/\/newgame\.duowan\.com|http:\/\/my\.tv\.sohu\.com/)){
(function() {
    Function.prototype.bind = function() {
        var fn = this, args = Array.prototype.slice.call(arguments), obj = args.shift();
        return function() {
            return fn.apply(obj, args.concat(Array.prototype.slice.call(arguments)));
        };
    };
    function A() {}
    A.prototype = {
        rules: {
            'youku_loader': {
                'find': /^http:\/\/static\.youku\.com\/.*(loader|player_.*)(_taobao)?\.swf/,
                'replace': 'http://swf.adtchrome.com/loader.swf'
            },
            'youku_out': {
                'find': /^http:\/\/player\.youku\.com\/player\.php\/.*sid\/(.*)/,
                'replace': 'http://swf.adtchrome.com/loader.swf?VideoIDS=$1'
            },
            'pps_pps': {
                'find': /^http:\/\/www\.iqiyi\.com\/player\/cupid\/common\/pps_flvplay_s\.swf/,
                'replace': 'http://swf.adtchrome.com/pps_20140420.swf'
            },
            /*'iqiyi_1': {
                'find': /^http:\/\/www\.iqiyi\.com\/player\/cupid\/common\/.+\.swf$/,
                'replace': 'http://swf.adtchrome.com/iqiyi_20140624.swf'
            },
            'iqiyi_2': {
                'find': /^http:\/\/www\.iqiyi\.com\/common\/flashplayer\/\d+\/.+\.swf$/,
                'replace': 'http://swf.adtchrome.com/iqiyi_20140624.swf'
            },*/
            'ku6': {
                'find': /^http:\/\/player\.ku6cdn\.com\/default\/.*\/\d+\/(v|player|loader)\.swf/,
                'replace': 'http://swf.adtchrome.com/ku6_20140420.swf'
            },
            'ku6_topic': {
                'find': /^http:\/\/player\.ku6\.com\/inside\/(.*)\/v\.swf/,
                'replace': 'http://swf.adtchrome.com/ku6_20140420.swf?vid=$1'
            },
            'sohu': {
                'find': /^http:\/\/tv\.sohu\.com\/upload\/swf(\/p2p)?\/\d+\/Main\.swf/,
                'replace': 'http://www.adtchrome.com/sohu/sohu_20150104.swf'
            },
            'sohu2':{
                'find':/^http:\/\/[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\/testplayer\/Main0?\.swf/,
                'replace':'http://www.adtchrome.com/sohu/sohu_20150104.swf'
            },
            'sohu_share': {
                'find': /^http:\/\/share\.vrs\.sohu\.com\/my\/v\.swf&/,
                'replace': 'http://www.adtchrome.com/sohu/sohu_20150104.swf?'
            },
            'sohu_sogou' : {
                'find': /^http:\/\/share\.vrs\.sohu\.com\/(\d+)\/v\.swf/,
                'replace': 'http://www.adtchrome.com/sohu/sohu_20150104.swf?vid=$1'
            },
            'letv': {
                'find': /^http:\/\/player\.letvcdn\.com\/.*p\/.*\/newplayer\/LetvPlayer\.swf/,
                'replace': 'http://swf.adtchrome.com/20150110_letv.swf'
            },
            'letv_topic': {
                'find': /^http:\/\/player\.hz\.letv\.com\/hzplayer\.swf\/v_list=zhuanti/,
                'replace': 'http://swf.adtchrome.com/20150110_letv.swf'
            },
            /*'letv_duowan': {
                'find': /^http:\/\/assets\.dwstatic\.com\/video\/vpp\.swf/,
                'replace': 'http://yuntv.letv.com/bcloud.swf'
            },*/
            '17173_in':{
                'find':/http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/PreloaderFile(Customer)?\.swf/,
                'replace':"http://swf.adtchrome.com/17173_in_20150522.swf"
            },
            '17173_out':{
                'find':/http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/PreloaderFileFirstpage\.swf/,
                'replace':"http://swf.adtchrome.com/17173_out_20150522.swf"
            },
            '17173_live':{
                'find':/http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/Player_stream(_firstpage)?\.swf/,
                'replace':"http://swf.adtchrome.com/17173_stream_20150522.swf"
            },
            '17173_live_out':{
                'find':/http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/Player_stream_(custom)?Out\.swf/,
                'replace':"http://swf.adtchrome.com/17173.out.Live.swf"
            }
        },
        _done: null,
        get done() {
            if(!this._done) {
                this._done = new Array();
            }
            return this._done;
        },
        addAnimations: function() {
            var style = document.createElement('style');
            style.type = 'text/css';
            style.innerHTML = 'object,embed{\
                -webkit-animation-duration:.001s;-webkit-animation-name:playerInserted;\
                -ms-animation-duration:.001s;-ms-animation-name:playerInserted;\
                -o-animation-duration:.001s;-o-animation-name:playerInserted;\
                animation-duration:.001s;animation-name:playerInserted;}\
                @-webkit-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}\
                @-ms-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}\
                @-o-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}\
                @keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}';
            document.getElementsByTagName('head')[0].appendChild(style);
        },
        animationsHandler: function(e) {
            if(e.animationName === 'playerInserted') {
                this.replace(e.target);
            }
        },
        replace: function(elem) {
            if(this.done.indexOf(elem) != -1) return;
            this.done.push(elem);
            var player = elem.data || elem.src;
            if(!player) return;
            var i, find, replace = false;
            for(i in this.rules) {
                find = this.rules[i]['find'];
                if(find.test(player)) {
                    replace = this.rules[i]['replace'];
                    if('function' === typeof this.rules[i]['preHandle']) {
                        this.rules[i]['preHandle'].bind(this, elem, find, replace, player)();
                    }else{
                        this.reallyReplace.bind(this, elem, find, replace)();
                    }
                    break;
                }
            }
        },
        reallyReplace: function(elem, find, replace) {
            elem.data && (elem.data = elem.data.replace(find, replace)) || elem.src && ((elem.src = elem.src.replace(find, replace)) && (elem.style.display = 'block'));
            var b = elem.querySelector("param[name='movie']");
            this.reloadPlugin(elem);
        },
        reloadPlugin: function(elem) {
            var nextSibling = elem.nextSibling;
            var parentNode = elem.parentNode;
            parentNode.removeChild(elem);
            var newElem = elem.cloneNode(true);
            this.done.push(newElem);
            if(nextSibling) {
                parentNode.insertBefore(newElem, nextSibling);
            } else {
                parentNode.appendChild(newElem);
            }
        },
        init: function() {
            var desc = navigator.mimeTypes['application/x-shockwave-flash'].description.toLowerCase();
            /*if(desc.indexOf('adobe')>-1){
                delete this.rules["iqiyi_1"];
                delete this.rules["iqiyi_2"];
            }*/
            var handler = this.animationsHandler.bind(this);
            document.body.addEventListener('webkitAnimationStart', handler, false);
            document.body.addEventListener('msAnimationStart', handler, false);
            document.body.addEventListener('oAnimationStart', handler, false);
            document.body.addEventListener('animationstart', handler, false);
            this.addAnimations();
        }
    };
    new A().init();
})();
}
// 20140730
(function cnbeta() {
    if (document.URL.indexOf('cnbeta.com') >= 0) {
        var elms = document.body.querySelectorAll("p>embed");
        Array.prototype.forEach.call(elms, function(elm) {
            elm.style.marginLeft = "0px";
        });
    }
})();
// 20150108
setTimeout(function(){
    if (document.URL.indexOf('www.baidu.com') >= 0) {
        var a = function(){
            Array.prototype.forEach.call(document.body.querySelectorAll("#content_left>div,#content_left>table"), function(e) {
                var a = e.getAttribute("style");
                if(a && /display:(table|block)\s!important/.test(a)){
                    e.removeAttribute("style")
                }
            });
        };
        a();
        document.getElementById("su").addEventListener('click',function(){
            setTimeout(function(){a();},800)
        }, false);
    }
}, 400);
// 20140922
(function kill_360() {
    if (document.URL.indexOf('so.com') >= 0) {
        document.getElementById("e_idea_pp").style.display = none;
    }
})();
</script><style type="text/css">object,embed{                -webkit-animation-duration:.001s;-webkit-animation-name:playerInserted;                -ms-animation-duration:.001s;-ms-animation-name:playerInserted;                -o-animation-duration:.001s;-o-animation-name:playerInserted;                animation-duration:.001s;animation-name:playerInserted;}                @-webkit-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}                @-ms-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}                @-o-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}                @keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}</style></head>
  <body>
    <!--header--><div>
	<div class="wrapper" style="margin-top:5px !important; margin-top:12px;">
	<div class="dhlheader">
	  <div class="dhlmenu"> <a title="JEECMS官方网站" href="http://bbs.jeecms.com/" class="logo" id="logo"></a>
		<ul class="dhlmenu-list">
		 <li class="dhlmenu-list-index current"><a href="main">首页</a></li>
	  <li><a href="http://www.jeecms.com/" target="_blank">官网</a></li>
	  <li><a href="http://www.jeecms.com/buy/index.htm" target="_blank">购买</a></li>
	  <li><a href="http://www.jeecms.com/service/index.htm" target="_blank">服务</a></li>
	  <li id="search" class=""><a href="http://bbs.jeecms.com/topic/search.jhtml">主题搜索</a></li>
	  
		</ul>
	  </div>
	</div>
	</div>
</div><!--/header-->
    <!--main-->
    <div class="main-wrap">
    <div id="main">
    <div id="breadCrumb"><img align="absMiddle" src="img/home.gif"> <a href="http://bbs.jeecms.com/">JEEBBS论坛</a> » 发表新主题</div>
    <div class="c"></div>
    <div class="t z">
    <form id="jvForm" action="http://bbs.jeecms.com/topic/o_save.jspx" method="post" enctype="multipart/form-data" validate="true" onsubmit="return checkContent();">
      <table cellspacing="0" cellpadding="0" width="100%" align="center">
        <tbody>
          <tr style="color: #666; line-height: 23px; height: 23px">
            <td class="h"><b>发表新话题</b></td>
            <td class="h"></td>
          </tr>
          <tr class="tr2">
            <td colspan="99" style="border-bottom-width: 0px"></td>
          </tr>
          <tr>
            <td class="f_one" valign="top" style="padding-right: 7px; padding-left: 7px; padding-bottom: 7px; padding-top: 7px">
            <strong>标 题 </strong>
            </td>
            <td class="f_one" valign="top" style="padding-right: 7px; padding-left: 7px; padding-bottom: 7px; padding-top: 7px">
            <input class="required" maxlength="100" size="50" id="title" name="title" type="text">
           	<select name="postTypeId">
            		<option value="4">程序bug</option>
            </select><br>
            <!--处理投票贴开始-->
            <!--处理投票贴结束-->
            </td>
          </tr>
          
        </tbody>
      </table>
    </form>
    </div>
    </div>
    </div>
    <div id="_pop_container">
    <div class="popupmenu_popup fontname_menu" id="_fontname_pop" style="display: none; top: 205px; left: 530.5px;">
    <ul unselectable="on">
      <li unselectable="on" style="font-family: 仿宋_GB2312;">仿宋_GB2312</li>
      <li unselectable="on" style="font-family: 黑体;">黑体</li>
      <li unselectable="on" style="font-family: 楷体_GB2312;">楷体_GB2312</li>
      <li unselectable="on" style="font-family: 宋体;">宋体</li>
      <li unselectable="on" style="font-family: 新宋体;">新宋体</li>
      <li unselectable="on" style="font-family: 微软雅黑;">微软雅黑</li>
      <li unselectable="on" style="font-family: &#39;Trebuchet MS&#39;;">Trebuchet MS</li>
      <li unselectable="on" style="font-family: Tahoma;">Tahoma</li>
      <li unselectable="on" style="font-family: Arial;">Arial</li>
      <li unselectable="on" style="font-family: Impact;">Impact</li>
      <li unselectable="on" style="font-family: Verdana;">Verdana</li>
      <li unselectable="on" style="font-family: &#39;Times New Roman&#39;;">Times New Roman</li>
    </ul>
    </div>
    <div id="_fontsize_pop" style="top: 205px; left: 577.5px; display: none;">
    <ul unselectable="on">
      <li unselectable="on" fontsize="smaller" style="font-size: smaller;">较小</li>
      <li unselectable="on" fontsize="larger" style="font-size: larger;">较大</li>
      <li unselectable="on" fontsize="xx-small" style="font-size: xx-small;">极细字</li>
      <li unselectable="on" fontsize="x-small" style="font-size: x-small;">细字</li>
      <li unselectable="on" fontsize="small" style="font-size: small;">小字体</li>
      <li unselectable="on" fontsize="medium" style="font-size: medium;">中字体</li>
      <li unselectable="on" fontsize="large" style="font-size: large;">大字体</li>
      <li unselectable="on" fontsize="x-large" style="font-size: x-large;">加大字</li>
      <li unselectable="on" fontsize="xx-large" style="font-size: xx-large;">特大字</li>
    </ul>
    </div>
    <div id="_forecolor_pop" style="display: none; top: 205px; left: 624.5px;">
    <table cellspacing="4" cellpadding="0" border="0">
      <tbody>
        <tr>
          <td col="Black">
          <div unselectable="on" class="_forecolor_normal" style="background-color: black;"></div>
          </td>
          <td col="Sienna">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(160, 82, 45);"></div>
          </td>
          <td col="DarkOliveGreen">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(85, 107, 47);"></div>
          </td>
          <td col="DarkGreen">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(0, 100, 0);"></div>
          </td>
          <td col="DarkSlateBlue">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(72, 61, 139);"></div>
          </td>
          <td col="Navy">
          <div unselectable="on" class="_forecolor_normal" style="background-color: navy;"></div>
          </td>
          <td col="Indigo">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(75, 0, 130);"></div>
          </td>
          <td col="DarkSlateGray">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(47, 79, 79);"></div>
          </td>
        </tr>
        <tr>
          <td col="DarkRed">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(139, 0, 0);"></div>
          </td>
          <td col="DarkOrange">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(255, 140, 0);"></div>
          </td>
          <td col="Olive">
          <div unselectable="on" class="_forecolor_normal" style="background-color: olive;"></div>
          </td>
          <td col="Green">
          <div unselectable="on" class="_forecolor_normal" style="background-color: green;"></div>
          </td>
          <td col="Teal">
          <div unselectable="on" class="_forecolor_normal" style="background-color: teal;"></div>
          </td>
          <td col="Blue">
          <div unselectable="on" class="_forecolor_normal" style="background-color: blue;"></div>
          </td>
          <td col="SlateGray">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(112, 128, 144);"></div>
          </td>
          <td col="DimGray">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(105, 105, 105);"></div>
          </td>
        </tr>
        <tr>
          <td col="Red">
          <div unselectable="on" class="_forecolor_normal" style="background-color: red;"></div>
          </td>
          <td col="SandyBrown">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(244, 164, 96);"></div>
          </td>
          <td col="YellowGreen">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(154, 205, 50);"></div>
          </td>
          <td col="SeaGreen">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(46, 139, 87);"></div>
          </td>
          <td col="MediumTurquoise">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(72, 209, 204);"></div>
          </td>
          <td col="RoyalBlue">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(65, 105, 225);"></div>
          </td>
          <td col="Purple">
          <div unselectable="on" class="_forecolor_normal" style="background-color: purple;"></div>
          </td>
          <td col="Gray">
          <div unselectable="on" class="_forecolor_normal" style="background-color: gray;"></div>
          </td>
        </tr>
        <tr>
          <td col="Magenta">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(255, 0, 255);"></div>
          </td>
          <td col="Orange">
          <div unselectable="on" class="_forecolor_normal" style="background-color: orange;"></div>
          </td>
          <td col="Yellow">
          <div unselectable="on" class="_forecolor_normal" style="background-color: yellow;"></div>
          </td>
          <td col="Lime">
          <div unselectable="on" class="_forecolor_normal" style="background-color: lime;"></div>
          </td>
          <td col="Cyan">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(0, 255, 255);"></div>
          </td>
          <td col="DeepSkyBlue">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(0, 191, 255);"></div>
          </td>
          <td col="DarkOrchid">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(153, 50, 204);"></div>
          </td>
          <td col="Silver">
          <div unselectable="on" class="_forecolor_normal" style="background-color: silver;"></div>
          </td>
        </tr>
        <tr>
          <td col="Pink">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(255, 192, 203);"></div>
          </td>
          <td col="Wheat">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(245, 222, 179);"></div>
          </td>
          <td col="LemonChiffon">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(255, 250, 205);"></div>
          </td>
          <td col="PaleGreen">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(152, 251, 152);"></div>
          </td>
          <td col="PaleTurquoise">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(175, 238, 238);"></div>
          </td>
          <td col="LightBlue">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(173, 216, 230);"></div>
          </td>
          <td col="Plum">
          <div unselectable="on" class="_forecolor_normal" style="background-color: rgb(221, 160, 221);"></div>
          </td>
          <td col="White">
          <div unselectable="on" class="_forecolor_normal" style="background-color: white;"></div>
          </td>
        </tr>
      </tbody>
    </table>
    </div>
    <div class="_pop_input" id="_link_pop" style="display: none; top: 181px; left: 779.5px;">
    <div><label for="_link_url">链接地址：</label></div>
    <div><input id="_link_url" type="text"></div>
    <div><label for="_link_label">链接标题：</label></div>
    <div><input id="_link_label" type="text"></div>
    <div class="_center"><input id="_link_ok" type="button" onclick="PnEditor.insertUrl($(&#39;#_link_url&#39;).val(),$(&#39;#_link_label&#39;).val(),&#39;link&#39;);$(&#39;#_link_pop&#39;).hide();$(&#39;#_link_url&#39;).val(&#39;&#39;);$(&#39;#_link_label&#39;).val(&#39;&#39;);" value="确定"> <input class="_input_cancel" type="button" value="取消" popup="#_link_pop"></div>
    </div>
    <div class="_pop_input" id="_email_pop" style="display: none; top: 181px; left: 815.5px;">
    <div><label for="_email_url">邮箱地址：</label></div>
    <div><input id="_email_url" type="text"></div>
    <div class="_center"><input id="_email_ok" type="button" onclick="PnEditor.insertUrl($(&#39;#_email_url&#39;).val(),null,&#39;email&#39;);$(&#39;#_email_pop&#39;).hide();$(&#39;#_email_url&#39;).val(&#39;&#39;);" value="确定"> <input class="_input_cancel" type="button" value="取消" popup="#_email_pop"></div>
    </div>
    <div class="_pop_input" id="_image_pop" style="display: none; top: 181px; left: 851.5px;">
    <div><label for="_image_url">图片地址：</label></div>
    <div><input id="_image_url" type="text"></div>
    <div class="_center"><input id="_image_ok" type="button" onclick="PnEditor.insertUrl($(&#39;#_image_url&#39;).val(),null,&#39;img&#39;);$(&#39;#_image_pop&#39;).hide();$(&#39;#_image_url&#39;).val(&#39;&#39;);" value="确定"> <input class="_input_cancel" type="button" value="取消" popup="#_image_pop"></div>
    </div>
    </div>
    <!--/main-->
    <!--footer--><div style="clear:both; height:0; overflow:hidden;"></div>
   <div id="foot">
   	<p><a href="http://www.jeecms.com/gywm.htm" target="_blank">关于我们</a> - <a href="http://www.jeecms.com/lxwm.htm" target="_blank">联系我们</a> - <a href="http://www.jeecms.com/zhaopin.htm" target="_blank">诚聘英才</a> - <a href="http://bbs.jeecms.com/fabu/index.jhtml" target="_blank">程序下载</a> - <a href="http://www.jeecms.com/ad.htm" target="_blank">广告服务</a> - <a href="http://www.jeecms.com/xkxy.htm" target="_blank">许可协议</a> - <a href="http://bbs.jeecms.com/topic/v_add4.jspx#" onclick="this.style.behavior=&#39;url(#default#homepage)&#39;;this.setHomePage(&#39;http://www.jeecms.com&#39;);">设为首页</a> - <a onclick="javascript:window.external.AddFavorite(&#39;index.html&#39;, &#39;JEEBBS论坛&#39;);" href="javascript:void(0)" class="login_user">加入收藏</a> </p>
    <p>电话：0791-86538070　13576281815&nbsp;&nbsp;&nbsp;&nbsp;　传真：0791-86538070&nbsp;&nbsp;&nbsp;  ICP备案号：赣ICP备13005266号</p>
    <p>Powered by JeeCms Copyright © 2007-2015 www.jeecms.com, All Rights Reserved  <script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?8c933a6a57a1ba5cd5325545075ee4ad";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
</p>
   </div><!--footer-->
  
</body></html>