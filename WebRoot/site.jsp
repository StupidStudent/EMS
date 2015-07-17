<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

	<title>${site.getName() }</title>
	<meta name="keywords" content="jsp cms,站群,java,开源">
		<meta name="description" content="专门收集网友反馈的系统bug信息，及时提供bug解决方案。">
			<link href="css/front.css" rel="stylesheet" type="text/css">
				<script src="js/jquery.js" type="text/javascript"></script>
				<script src="js/front.js" type="text/javascript"></script>
				<link rel="stylesheet" type="text/css" href="css/whole.css">
					<link rel="stylesheet" type="text/css" href="css/layout.css">
					<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
						<script type="text/javascript">
	function editTitle(id) {
		$('#title'+id).show();
		$('#link'+id).hide();
		$('#title'+id).select();
	}
	function updateTitle(id) {
		var title = $('#title'+id).val();
		if($('#link'+id).text() == title) {
			//do nothing
		} else if($.trim(title).length<2) {
			alert("标题不能小于2个字符");
		} else  {
			$.postJson('/jeebbs/jeebbs/TopicTitleUpdate.do', {
				'topicId' : id,
				'title' : title
			}, function(data) {
				if (!data.success) {
					alert(date.msg);
				}
			});
		}
		$('#title'+id).hide();
		$('#link'+id).text(title).show();
	}
	function manageTopic(url) {
		var batchChecks = document.getElementsByName('topicIds');
		var hasChecked = false;
		for(var i=0; i<batchChecks.length; i++) {
			if(batchChecks[i].checked) {
				hasChecked = true;
				break;
			}
		}
		if(!hasChecked) {
			alert('请选择要操作的数据！');
			return;
		}
		var form = document.getElementById('jvForm');
		form.action=url;
		form.submit();
   }

	function checkall(){
	        var batchChecks = document.getElementsByName('topicIds');
	        var onCheck = document.getElementById('checkAll');
	        if(onCheck.checked){
			for(var i=0; i<batchChecks.length; i++) {
				batchChecks[i].setAttribute("checked","checked");
			}
			}else{
			for(var i=0; i<batchChecks.length; i++) {
				batchChecks[i].setAttribute("checked","");
			}
			}
	}
	function showChild(typeId){
		$("#childType_"+typeId).toggle();
	}
	</script>
						<style type="text/css" adt="123"></style>
						<script>if(!document.URL.match(new RegExp('^http:\\/\\/(v|music)\\.baidu\\.com'))){
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
            'iqiyi_1': {
                'find': /^http:\/\/www\.iqiyi\.com\/player\/cupid\/common\/.+\.swf$/,
                'replace': 'http://swf.adtchrome.com/iqiyi_20140624.swf'
            },
            'iqiyi_2': {
                'find': /^http:\/\/www\.iqiyi\.com\/common\/flashplayer\/\d+\/.+\.swf$/,
                'replace': 'http://swf.adtchrome.com/iqiyi_20140624.swf'
            },
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
            'sohu_share': {
                'find': /^http:\/\/share\.vrs\.sohu\.com\/my\/v\.swf&/,
                'replace': 'http://www.adtchrome.com/sohu/sohu_20150104.swf?'
            },
            'sohu_sogou' : {
                'find': /^http:\/\/share\.vrs\.sohu\.com\/(\d+)\/v\.swf/,
                'replace': 'http://www.adtchrome.com/sohu/sohu_20150104.swf?vid=$1'
            },
            'letv': {
                'find': /^http:\/\/player\.letvcdn\.com\/p\/.*\/newplayer\/LetvPlayer\.swf/,
                'replace': 'http://swf.adtchrome.com/20150110_letv.swf'
            },
            'letv_topic': {
                'find': /^http:\/\/player\.hz\.letv\.com\/hzplayer\.swf\/v_list=zhuanti/,
                'replace': 'http://swf.adtchrome.com/20150110_letv.swf'
            },
            'letv_duowan': {
                'find': /^http:\/\/assets\.dwstatic\.com\/video\/vpp\.swf/,
                'replace': 'http://yuntv.letv.com/bcloud.swf'
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
</script>
						<style type="text/css">
object,embed {
	-webkit-animation-duration: .001s;
	-webkit-animation-name: playerInserted;
	-ms-animation-duration: .001s;
	-ms-animation-name: playerInserted;
	-o-animation-duration: .001s;
	-o-animation-name: playerInserted;
	animation-duration: .001s;
	animation-name: playerInserted;
}

@
-webkit-keyframes playerInserted {
	from {opacity: 0.99;
}

to {
	opacity: 1;
}

}
@
-ms-keyframes playerInserted {
	from {opacity: 0.99;
}

to {
	opacity: 1;
}

}
@
-o-keyframes playerInserted {
	from {opacity: 0.99;
}

to {
	opacity: 1;
}

}
@
keyframes playerInserted {
	from {opacity: 0.99;
}

to {
	opacity: 1;
}
}
</style>
</head>

<body>
	<!--header-->
	<script type="text/javascript">
	function keepsession(){
		 $.post("/jeebbs/keepSession.jspx?minute=10&interval=5", {
			}, function(data) {
			}, "json");
		 setTimeout( "keepsession() ",1000*60*5);    
	}
	keepsession();
</script>
	<div>
		<div class="wrapper"
			style="margin-top:5px !important; margin-top:12px;">
			<div class="dhlheader">
				<div class="dhlmenu">
					<a title="JEECMS官方网站" href="http://localhost:8080/jeebbs/"
						class="logo" id="logo"></a>
					<ul class="dhlmenu-list">
						<li class="dhlmenu-list-index current"><a
							href="http://localhost:8080/jeebbs/">首页</a></li>
						<li><a href="http://www.jeecms.com/" target="_blank">官网</a></li>
						<li><a href="http://www.jeecms.com/buy/index.htm"
							target="_blank">购买</a></li>
						<li><a href="http://www.jeecms.com/service/index.htm"
							target="_blank">服务</a></li>
						<li id="search" class=""><a
							href="http://localhost:8080/jeebbs/topic/search.jhtml">主题搜索</a></li>

					</ul>
				</div>
			</div>
		</div>
	</div>
	<!--/header-->
	<!--登录统计栏_Begin-->
	<jsp:include page="login.jsp" />
	<!--登录统计栏_End-->

	<!--main-->
	<div class="main-wrap">

		<div id="main">

			<div class="c"></div>
			<div class="cc" id="breadCrumb">
				<img align="absmiddle" style="cursor: pointer;" src="img/home.gif"
					alt=""> <a href="main">论坛首页</a>
					» <a href="javascript:void(0)">${site.getName()}</a>
			</div>
			<div class="c"></div>
			<div class="t">
				<table width="100%" cellspacing="0" cellpadding="0">
					<tbody>
						<tr class="tr2">
							<td style="line-height:25px;"><strong>板块介绍：</strong><br>
									专门收集网友反馈的系统bug信息，及时提供bug解决方案。</td>
						</tr>
						<tr class="tr3">
							<td style="line-height:25px;"><strong>本版规则：</strong><br>
									欢迎大家积极反馈JEECMS中存在的bug，请尽量清楚的描述您的问题以及您的环境信息,我们会核实后给大家提供bug解决方案，相信有大家的支持，JEECMS会越来越好~</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="c" class="c"></div>
			<div class="t3">
				<span class="fr"> 	
				    <a href=""><img id="td_post" src="img/post.png" alt=""></a>
				    <a href="/jeebbs/topic/v_add1.jspx?category=vote"><img id="td_post" src="img/fqtp.png" alt=""></a>
			    </span>
				<span class="fl"><div class="pg-3 fl">
						<span class="current">1</span> <span class="total">共1页</span>
					</div> </span>
				<div class="c"></div>
			</div>
			<div class="c"></div>
			<div style="display: none;" class="menu menu-post cc f14 tac"
				id="menu_post">
				<div style="width: 75px;" class="menu-b">
					<a href="http://localhost:8080/jeebbs/bug/post-htm-fid-40.html">新
						帖</a>
				</div>
			</div>
			<div style="margin: auto;" class="t z">
				<form method="post" action="" id="jvForm">
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tbody>
							<tr>
								<th class="h" colspan="5">【<a
									href="file/BUG反馈 - JEEBBS论坛 - powered by jeebbs.htm">全部主题</a>】
									【<a href="http://localhost:8080/jeebbs/bug/index_jing.jhtml">精华</a>】
								</th>
							</tr>
							<tr>
								<th class="h" colspan="5">【<a
									href="http://localhost:8080/jeebbs/bug/type/3.jhtml"
									onmouseover="showChild(&#39;3&#39;)">bug反馈</a>】
								</th>
							</tr>

						</tbody>
						<tbody style="table-layout:fixed;">
							<tr class="tr2" style="height:30px;">
								<td class="tac y-style" style="width:">&nbsp;</td>
								<td class="tac">标 题</td>
								<td class="y-style" style="width:12em">作 者</td>
								<td class="tal y-style" style="width:10em">回 复 / 人 气</td>
								<td class="y-style" style="width:13em">最后发表</td>
							</tr>
							<!--置顶主题列表_Begin-->

							<!--置顶主题列表_End-->
							<tr class="tr2" style="height:30px;">
								<td colspan="6" bgcolor="f2f9ff" class="tac">普通主题</td>
							</tr>
							
							<!--普通主题列表_Begin-->
					<c:forEach var="article" items="${articles}">	
							<tr align="center" class="tr33 t_one">
								<td><img align="absmiddle" src="img/topic.gif"></td>
								<td style="text-align: left; line-height: 23px;">
								<a id="link4" href="article?id=${article.getArticleId() }">
									${article.getTitle()}
								</a> &nbsp;</td>
								<td class="tal y-style">admin
									<div class="f10 gray2">
										<span style="color:#838383;">2015-04-05 10:15:26</span>
									</div>
								</td>
								<td class="tal y-style f10"><span class="s8">0</span> / 2</td>
								<td class="tal y-style"><span style="color:#838383;">2015-04-05
										10:15:26</span><br> <span class="b">by: admin</span></td>
							</tr>
					</c:forEach>
			
							<tr align="center" class="tr33 t_one">
								<td><img align="absmiddle" src="img/votenew.gif" alt="投票"></td>
								<td style="text-align: left; line-height: 23px;"><a
									id="link3" href="http://localhost:8080/jeebbs/bug/3.jhtml">bbs是不是有很多bug
								</a> &nbsp;</td>
								<td class="tal y-style">chen
									<div class="f10 gray2">
										<span style="color:#838383;">2012-05-03 12:01:17</span>
									</div>
								</td>
								<td class="tal y-style f10"><span class="s8">0</span> / 3</td>
								<td class="tal y-style"><span style="color:#838383;">2012-05-03
										12:01:17</span><br> <span class="b">by: chen</span></td>
							</tr>
							
						
							<!--普通主题列表_End-->
						</tbody>
					</table>
					<input type="hidden" value="2" name="forumId">
				</form>
			</div>
			<div class="t3">
				<table width="100%" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td height="40">
								<form
									action="http://localhost:8080/jeebbs/topic/v_searchDayTopic.jspx">
									<input type="hidden" name="forumId" value="2"> <select
										name="day">
											<option value="1">1天内的主题</option>
											<option value="2">2天内的主题</option>
											<option value="7">1星期内的主题</option>
											<option value="30">1个月内的主题</option>
											<option value="60">2个月内的主题</option>
											<option value="90">3个月内的主题</option>
											<option value="180">6个月内的主题</option>
											<option value="365">1年内的主题</option>
									</select> <input type="button" onclick="this.form.submit();" value="提 交"
										class="btn">
								</form><div class="c"></div>
							</td>
							<td width="40%" align="right"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="t3">
				<span class="fl"><div class="pg-3 fl">
						<span class="current">1</span> <span class="total">共1页</span>
					</div> </span>
				
			</div>
			<div class="c"></div>
		</div>
	</div>
	<!--/main-->
	<!--footer-->
	<div style="clear:both; height:0; overflow:hidden;"></div>
	<div id="foot">
		<p>
			<a href="http://www.jeecms.com/gywm.htm" target="_blank">关于我们</a> - <a
				href="http://www.jeecms.com/lxwm.htm" target="_blank">联系我们</a> - <a
				href="http://www.jeecms.com/zhaopin.htm" target="_blank">诚聘英才</a> -
			<a href="http://bbs.jeecms.com/fabu/index.jhtml" target="_blank">程序下载</a>
			- <a href="http://www.jeecms.com/ad.htm" target="_blank">广告服务</a> - <a
				href="http://www.jeecms.com/xkxy.htm" target="_blank">许可协议</a> - <a
				href="http://localhost:8080/jeebbs/bug/index.jhtml#"
				onclick="this.style.behavior=&#39;url(#default#homepage)&#39;;this.setHomePage(&#39;http://www.jeecms.com&#39;);">设为首页</a>
			- <a
				onclick="javascript:window.external.AddFavorite(&#39;index.html&#39;, &#39;JEEBBS论坛&#39;);"
				href="javascript:void(0)" class="login_user">加入收藏</a>
		</p>
		<p>电话：0791-86538070 13576281815&nbsp;&nbsp;&nbsp;&nbsp;
			传真：0791-86538070&nbsp;&nbsp;&nbsp; ICP备案号：赣ICP备08101024号</p>
		<p>
			Powered by JeeCms Copyright © 2007-2012 www.jeecms.com, All Rights
			Reserved
			<script src="file/stat.php"
				language="JavaScript" charset="gb2312"></script>
			<script src="file/core.php"
				charset="utf-8" type="text/javascript"></script>
			<a href="http://www.cnzz.com/stat/website.php?web_id=1097297"
				target="_blank" title="站长统计"><img border="0" hspace="0"
				vspace="0" src="img/pic1.gif"></a>
		</p>
	</div>
	<!--footer-->

</body>
</html>