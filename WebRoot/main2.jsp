<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- saved from url=(0022)http://bbs.jeecms.com/ -->
<html><style type="text/css" id="4939073000"></style><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>JEEBBS论坛 - JEECMS官方论坛|开源java cms,jsp cms,jsp bbs</title>
    <meta name="keywords" content="java,cms,jsp,cms,jsp bbs,开源网站内容管理系统,网站群,站群,多站点,jeecms">
    <meta name="description" content="讨论jsp cms、jsp bbs相关资讯，struts,hibernate,spring,freemarker最新技术研究"> 
<meta property="qc:admins" content="264352542362553536375">
	<link href="css/front.css" rel="stylesheet" type="text/css">
    <script src="js/hm.js"></script><script src="js/jquery.js" type="text/javascript"></script><style type="text/css" adt="123"></style>
    <script src="js/front.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="css/whole.css">
    <link rel="stylesheet" type="text/css" href="css/layout.css">
    <style>
    li{ list-style-type:none;}
    </style>
<style type="text/css">object,embed{                -webkit-animation-duration:.001s;-webkit-animation-name:playerInserted;                -ms-animation-duration:.001s;-ms-animation-name:playerInserted;                -o-animation-duration:.001s;-o-animation-name:playerInserted;                animation-duration:.001s;animation-name:playerInserted;}                @-webkit-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}                @-ms-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}                @-o-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}                @keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}</style></head>
  <body>
  <div style="width:1000px; margin:auto;">
    <!--header--> 
<div>
	<div class="wrapper" style="margin-top:5px !important; margin-top:12px;">
	<div class="dhlheader">
	  <div class="dhlmenu"> <a title="JEECMS官方网站" href="./JEEBBS论坛 - JEECMS官方论坛 开源java cms,jsp cms,jsp bbs_files/JEEBBS论坛 - JEECMS官方论坛 开源java cms,jsp cms,jsp bbs.htm" class="logo" id="logo"></a>
		<ul class="dhlmenu-list">
		 <li class="dhlmenu-list-index current"><a href="./JEEBBS论坛 - JEECMS官方论坛 开源java cms,jsp cms,jsp bbs_files/JEEBBS论坛 - JEECMS官方论坛 开源java cms,jsp cms,jsp bbs.htm">首页</a></li>
	  <li><a href="http://www.jeecms.com/" target="_blank">官网</a></li>
	  <li><a href="http://www.jeecms.com/buy/index.htm" target="_blank">购买</a></li>
	  <li><a href="http://www.jeecms.com/service/index.htm" target="_blank">服务</a></li>
	  <li id="search" class=""><a href="http://bbs.jeecms.com/topic/search.jhtml">主题搜索</a></li>
	  
		</ul>
	  </div>
	</div>
	</div>
</div>	<!--/header-->
	<!--20条信息_Begin--> <!--notice-->
<div id="notice">
  <div id="notice0" style="overflow-y: hidden; float:left;">
    <ul>
      <li><a href="http://idc.jeecms.com/" target="_blank">JEECMS虚拟主机，先试用再付费</a></li>
	  <li><a href="http://idc.jeecms.com/" target="_blank">JEECMS虚拟主机代理，价格更低</a></li>
	  <li><a href="http://www.aaaidc.com/webhosting/java/" target="_blank" style="color:#F00;">【昊宏数据】java双线空间298元免费试用</a></li>
	  <li><a href="http://www.jeecms.com/ad.htm" target="_blank">赞助商文字链接广告位招租</a></li>
    </ul>
  </div>
  <div style="width:440px; float:right;"> <div class="set-tab-box" style="height:20px;padding-top:15px;">
		  <form action="http://bbs.jeecms.com/topic/search.jhtml" name="jvForm" method="get">
		  <select name="forumId">
		  <option value="0">整个论坛搜索</option>
   					 	<option value="1">系统售前咨询</option>
   					 	<option value="2">JEECMS发展建议</option>
   					 	<option value="3">授权用户服务区</option>
   					 	<option value="15">二次开发技术支持服务</option>
   					 	<option value="5">程序发布公告</option>
   					 	<option value="4">BUG反馈</option>
   					 	<option value="6">安装与使用</option>
   					 	<option value="14">模板制作讨论区</option>
   					 	<option value="16">二次开发技术交流</option>
   					 	<option value="17">教程分享</option>
   					 	<option value="18">系统升级讨论</option>
   					 	<option value="19">JSPGOU讨论专区</option>
   					 	<option value="7">freemarker技术专栏</option>
   					 	<option value="8">hibernate技术专栏</option>
   					 	<option value="12">spring技术专栏</option>
   					 	<option value="13">Java程序员学习区</option>
		  </select>
			关键字：<input type="text" name="keywords" value="">
			<input type="submit" value="搜索">
		  </form>
 </div></div>
  <div style="overflow-y: hidden; height: 3px"></div>
</div>
<!--/notice--><!--/End--> 
    <!--登录统计栏_Begin-->﻿<div class="dlkbg">
<script type="text/javascript">
	$(function() {
		$("#jvForm").validate();
	});
	</script>
<div class="t3 cc">
  <div class="cc" id="nav-user"> 
  
      欢迎您：zhongzone &nbsp;
			
    &nbsp;&nbsp;【级别：白丁】
    &nbsp;&nbsp;【<a href="http://bbs.jeecms.com/member/index.jhtml">用户中心</a>】
    &nbsp;&nbsp;【<a href="http://bbs.jeecms.com/logout.jspx?returnUrl=/">退出</a>】
    <script type="text/javascript" src="js/qc_loader.js" data-appid="101194204" data-redirecturi="http://bbs.jeecms.com/public_auth.jspx" charset="utf-8"></script><script src="js/qc-1.0.1.js" type="text/javascript" data-appid="101194204" data-redirecturi="http://bbs.jeecms.com/public_auth.jspx" charset="utf-8"></script>
			<script type="text/javascript">
		           //插入按钮的节点qqLoginBtn id
			    QC.Login({btnId:"qqLoginBtn",size: "A_M"}, function(reqData, opts){//登录成功
			       //根据返回数据，更换按钮显示状态方法
			       var dom = document.getElementById(opts['btnId']),
			       _logoutTemplate=[
			            //头像
			         //   '<span><img src="{figureurl}" class="{size_key}"/></span>',
			            //昵称
			            '<span>{nickname}</span>'    
			       ].join("");
			       dom && (dom.innerHTML = QC.String.format(_logoutTemplate, {
			           nickname : QC.String.escHTML(reqData.nickname), //做xss过滤
			           figureurl : reqData.figureurl
			       }));
			   });
                           if(!QC.Login.check()){
                                   $("#qqLoginBtn").remove();        
                            }
			 </script>
</div>
    
</div>

</div><!--登录统计栏_End-->
	<div style="line-height:28px;">
	<table border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td width="30"><img src="./JEEBBS论坛 - JEECMS官方论坛 开源java cms,jsp cms,jsp bbs_files/icon001.gif"></td>
    <td>
	<span style="color:#838383;">今日:</span>26 <span style="color:#838383;">| </span>
	<span style="color:#838383;">昨日:</span> 122 <span style="color:#838383;">| </span>
	<span style="color:#838383;">最高日:</span>3748 于 2013-03-22 <span style="color:#838383;">| </span>
	<span style="color:#838383;">主题:</span>34989 <span style="color:#838383;">| </span>
	<span style="color:#838383;">帖子:</span>474146 <span style="color:#838383;">| </span>
	<span style="color:#838383;">会员:</span>73550 <span style="color:#838383;">| </span>
	<span style="color:#838383;">欢迎新会员:</span><span class="black">ahbbztj</span>
	
	</td>
  </tr>
</tbody></table>

	</div>
	</div>
	<!--main-->
    <div class="main-wrap">
    <div id="main">
	
    <div id="content">
    <div class="contentwrap z">
    
    	<div class="t z">
            <table width="100%" cellspacing="0" cellpadding="0">
            <tbody>
            <tr>
            <th class="h" colspan="6"><a class="closeicon fr"><img alt="" src="image/cate_fold.gif"></a>
            <h2>» <a class="cfont">≡论坛快讯一≡</a></h2>
            </th>
            </tr>
            </tbody>
            <tbody><tr class="tr3">
            <td bgcolor="#FFFFFF">
            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tbody><tr>
              <td width="35%" height="30" align="center" bgcolor="#f1f1f1"><span style="color:#4284ce; font-weight:bold;">最新主题</span></td>
              <td width="35%" align="center" bgcolor="#f1f1f1"><span style="color:#4284ce; font-weight:bold;">最新回复</span></td>
              <td align="center" bgcolor="#f1f1f1"><span style="color:#4284ce; font-weight:bold;">今日热门话题</span></td>
            </tr>
            <tr>
              <td valign="top">
              <table width="100%" border="0" cellspacing="1" cellpadding="1" style="border-right:1px solid #d4eff7;">
                <tbody><tr>
                  <td style="line-height:24px;">
                  1.
                  <a href="http://bbs.jeecms.com/eckfjsjl/34998.jhtml" style="color:#4284ce;" title="jeebbs">
                  jeebbs</a>
                  [bj_why]
                  <br>
                  2.
                  <a href="http://bbs.jeecms.com/fabu/34997.jhtml" style="color:#4284ce;" title="的">
                  的</a>
                  [bj_why]
                  <br>
                  3.
                  <a href="http://bbs.jeecms.com/azsy/34996.jhtml" style="color:#4284ce;" title="安装成功部署无法访问">
                  安装成功部署无法访问</a>
                  [gx19890629]
                  <br>
                  4.
                  <a href="http://bbs.jeecms.com/fabu/34995.jhtml" style="color:#4284ce;" title="下载了">
                  下载了</a>
                  [feichang...]
                  <br>
                  5.
                  <a href="http://bbs.jeecms.com/fabu/34994.jhtml" style="color:#4284ce;" title="快下载">
                  快下载</a>
                  [feichang...]
                  <br>
                  6.
                  <a href="http://bbs.jeecms.com/eckfjsjl/34993.jhtml" style="color:#4284ce;" title="@@各位大神，jeecms取得公司的信息怎么写啊？">
                  @@各位大神，jeecms取得公司的信...</a>
                  [smartdraw]
                  <br>
                  7.
                  <a href="http://bbs.jeecms.com/sqfw/34992.jhtml" style="color:#4284ce;" title="tomcat6 jdk 1.6 自己编译的src,部署后报错。">
                  tomcat6 jdk 1.6 自己编译的src,...</a>
                  [gegewu]
                  <br>
                  8.
                  <a href="http://bbs.jeecms.com/azsy/34991.jhtml" style="color:#4284ce;" title="为什么添加一个栏目，然后选择了自己创建的模型是这样的">
                  为什么添加一个栏目，然后选择了...</a>
                  [707735896]
                  <br>
                  </td>
                </tr>
              </tbody></table>
              </td>
              <td valign="top">
              <table width="100%" border="0" cellspacing="1" cellpadding="1" style="border-right:1px solid #d4eff7;">
                <tbody><tr>
                  <td style="line-height:24px;">
                  1.
                  <a href="http://bbs.jeecms.com/eckfjsjl/34998.jhtml" style="color:#4284ce;" title="jeebbs">
                  jeebbs</a>
                  [bj_why]
                  <br>
                  2.
                  <a href="http://bbs.jeecms.com/fabu/34829.jhtml" style="color:#4284ce;" title="java开源BBS系统--jeebbs v4.0版源码包下载帖">
                  java开源BBS系统--jeebbs v4.0...</a>
                  [bj_why]
                  <br>
                  3.
                  <a href="http://bbs.jeecms.com/fabu/34997.jhtml" style="color:#4284ce;" title="的">
                  的</a>
                  [bj_why]
                  <br>
                  4.
                  <a href="http://bbs.jeecms.com/azsy/34991.jhtml" style="color:#4284ce;" title="为什么添加一个栏目，然后选择了自己创建的模型是这样的">
                  为什么添加一个栏目，然后选择...</a>
                  [gx19890629]
                  <br>
                  5.
                  <a href="http://bbs.jeecms.com/xtjc/30172.jhtml" style="color:#4284ce;" title="jeecmsV6系统使用说明书">
                  jeecmsV6系统使用说明书</a>
                  [ahbbztj]
                  <br>
                  6.
                  <a href="http://bbs.jeecms.com/fabu/30175.jhtml" style="color:#4284ce;" title="java开源CMS系统-JEECMS v6版安装包下载帖">
                  java开源CMS系统-JEECMS v6版...</a>
                  [ahbbztj]
                  <br>
                  7.
                  <a href="http://bbs.jeecms.com/fabu/30173.jhtml" style="color:#4284ce;" title="java开源CMS系统-JEECMS v6版源码包下载帖">
                  java开源CMS系统-JEECMS v6版...</a>
                  [flaygo]
                  <br>
                  8.
                  <a href="http://bbs.jeecms.com/xtsjtl/20840.jhtml" style="color:#4284ce;" title="jeecms后台内容编辑器升级">
                  jeecms后台内容编辑器升级</a>
                  [a664052243]
                  <br>
                  </td>
                </tr>
              </tbody></table>
              </td>
              <td valign="top">
              <table width="100%" border="0" cellspacing="1" cellpadding="1">
                <tbody><tr>
                  <td style="line-height:24px;">
                   1.
                   <a href="http://bbs.jeecms.com/fabu/34829.jhtml" style="color:#4284ce;" title="java开源BBS系统--jeebbs v4.0版源码包下载帖">java开源BBS系统--jeebbs v4.0版...</a>[4]
<br>
                   2.
                   <a href="http://bbs.jeecms.com/fabu/30173.jhtml" style="color:#4284ce;" title="java开源CMS系统-JEECMS v6版源码包下载帖">java开源CMS系统-JEECMS v6版源...</a>[4]
<br>
                   3.
                   <a href="http://bbs.jeecms.com/fabu/34830.jhtml" style="color:#4284ce;" title="java开源BBS系统--jeebbs v4.0版安装包下载帖">java开源BBS系统--jeebbs v4.0版...</a>[3]
<br>
                   4.
                   <a href="http://bbs.jeecms.com/fabu/30175.jhtml" style="color:#4284ce;" title="java开源CMS系统-JEECMS v6版安装包下载帖">java开源CMS系统-JEECMS v6版安...</a>[3]
<br>
                   5.
                   <a href="http://bbs.jeecms.com/xtjc/30172.jhtml" style="color:#4284ce;" title="jeecmsV6系统使用说明书">jeecmsV6系统使用说明书</a>[3]
<br>
                   6.
                   <a href="http://bbs.jeecms.com/xtjc/34828.jhtml" style="color:#4284ce;" title="jeebbsV4系统使用说明书下载帖">jeebbsV4系统使用说明书下载帖</a>[2]
<br>
                   7.
                   <a href="http://bbs.jeecms.com/xtsjtl/20840.jhtml" style="color:#4284ce;" title="jeecms后台内容编辑器升级">jeecms后台内容编辑器升级</a>[2]
<br>
                   8.
                   <a href="http://bbs.jeecms.com/azsy/34991.jhtml" style="color:#4284ce;" title="为什么添加一个栏目，然后选择了自己创建的模型是这样的">为什么添加一个栏目，然后选择了...</a>[1]
<br>
                  </td>
                </tr>
              </tbody></table>
              </td>
            </tr>
            </tbody></table>
            
            </td>
            </tr>
            </tbody></table>
        </div>
    
    <div class="t z">
    <ul>
        
        </ul><table width="100%" cellspacing="0" cellpadding="0">
      <tbody>
        <tr>
          <th class="h" colspan="6"><a class="closeicon fr"><img alt="" src="image/cate_fold.gif"></a>
          <h2>» <a class="cfont">≡JEECMS产品服务区≡</a></h2>
          </th>
        </tr>
<!--
        <tr class="tr2">
          <td width="*" colspan="2" class="tac">论坛</td>
          <td class="tal y-style e">主题 / 文章</td>
          <td class="tal y-style f">最后发表</td>
          <td style="width: 120px;" class="tal">版主</td>
        </tr>
-->
      </tbody>
      
     
        <tbody><tr class="tr3">
        <td bgcolor="#FFFFFF">
        <li style="width:247px; height:107px; float:left; overflow:hidden; margin-bottom:10px;">
	  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td width="30" rowspan="2" valign="top">
		<table width="30" border="0" cellspacing="0" cellpadding="0" style="margin-top:12px !important; margin-top:5px;">
          <tbody><tr>
            <td valign="top">
              <div> <img src="image/tie001.gif"> </div>
			  </td>
          </tr>
        </tbody></table>
		</td>
        <td> </td></tr>
      
      <tr>
        <td valign="top">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td>
		</td>
	  </tr>
      
      <tr>
        <td>
          <h3 class="b"><a href="http://bbs.jeecms.com/sqzx/index.jhtml">系统售前咨询</a></h3>
		  
		  </td>
          </tr>
          
          <tr>
            <td class="tal y-style  e">
			<span style="color:#838383;">主题:</span>3751 &nbsp;
			<span style="color:#838383;">贴数:</span> <span class="gray2 ">6389</span></td></tr>
          <tr>
            <td>
          <span style="color:#838383;">标题:</span>
          <a href="http://bbs.jeecms.com/sqzx/34831_3.jhtml#pid475474" title="安装jeecmsv6报错了">
          安装jeecmsv6..</a> &nbsp;</td></tr>
         <tr>
           <td> <span style="color:#838383;">最后发表:</span>
          <span class="f9">[2015-04-01]</span>&nbsp;</td></tr>
        
          <tr>
            <td>
          <span style="color:#838383;">作者:</span><span class="gray2">liaozq</span>
          
         </td></tr>
          </tbody></table>
          </td>
          </tr>
          </tbody></table>
         </li>
        <li style="width:247px; height:107px; float:left; overflow:hidden; margin-bottom:10px;">
	  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td width="30" rowspan="2" valign="top">
		<table width="30" border="0" cellspacing="0" cellpadding="0" style="margin-top:12px !important; margin-top:5px;">
          <tbody><tr>
            <td valign="top">
              <div> <img src="image/tie001.gif"> </div>
			  </td>
          </tr>
        </tbody></table>
		</td>
        <td> </td></tr>
      
      <tr>
        <td valign="top">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td>
		</td>
	  </tr>
      
      <tr>
        <td>
          <h3 class="b"><a href="http://bbs.jeecms.com/fzjy/index.jhtml">JEECMS发展建议</a></h3>
		  
		  </td>
          </tr>
          
          <tr>
            <td class="tal y-style  e">
			<span style="color:#838383;">主题:</span>637 &nbsp;
			<span style="color:#838383;">贴数:</span> <span class="gray2 ">9384</span></td></tr>
          <tr>
            <td>
          <span style="color:#838383;">标题:</span>
          <a href="http://bbs.jeecms.com/fzjy/12031_78.jhtml#pid474676" title="jspgou 店中店系统详细介绍帖">
          jspgou 店中店..</a> &nbsp;</td></tr>
         <tr>
           <td> <span style="color:#838383;">最后发表:</span>
          <span class="f9">[2015-03-31]</span>&nbsp;</td></tr>
        
          <tr>
            <td>
          <span style="color:#838383;">作者:</span><span class="gray2">kele_87</span>
          
         </td></tr>
          </tbody></table>
          </td>
          </tr>
          </tbody></table>
         </li>
        <li style="width:247px; height:107px; float:left; overflow:hidden; margin-bottom:10px;">
	  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td width="30" rowspan="2" valign="top">
		<table width="30" border="0" cellspacing="0" cellpadding="0" style="margin-top:12px !important; margin-top:5px;">
          <tbody><tr>
            <td valign="top">
              <div> <img src="image/tie001.gif"> </div>
			  </td>
          </tr>
        </tbody></table>
		</td>
        <td> </td></tr>
      
      <tr>
        <td valign="top">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td>
		</td>
	  </tr>
      
      <tr>
        <td>
          <h3 class="b"><a href="http://bbs.jeecms.com/sqfw/index.jhtml">授权用户服务区</a></h3>
		  
		  </td>
          </tr>
          
          <tr>
            <td class="tal y-style  e">
			<span style="color:#838383;">主题:</span>7911 &nbsp;
			<span style="color:#838383;">贴数:</span> <span class="gray2 ">72762</span></td></tr>
          <tr>
            <td>
          <span style="color:#838383;">标题:</span>
          <a href="http://bbs.jeecms.com/sqfw/34992.jhtml#pid477177" title="tomcat6 jdk 1.6 自己编译的src,部署后报错。">
          tomcat6 jd..</a> &nbsp;</td></tr>
         <tr>
           <td> <span style="color:#838383;">最后发表:</span>
          <span class="f9">[2015-04-04]</span>&nbsp;</td></tr>
        
          <tr>
            <td>
          <span style="color:#838383;">作者:</span><span class="gray2">gegewu</span>
          
         </td></tr>
          </tbody></table>
          </td>
          </tr>
          </tbody></table>
         </li>
        <li style="width:247px; height:107px; float:left; overflow:hidden; margin-bottom:10px;">
	  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td width="30" rowspan="2" valign="top">
		<table width="30" border="0" cellspacing="0" cellpadding="0" style="margin-top:12px !important; margin-top:5px;">
          <tbody><tr>
            <td valign="top">
              <div> <img src="image/tie001.gif"> </div>
			  </td>
          </tr>
        </tbody></table>
		</td>
        <td> </td></tr>
      
      <tr>
        <td valign="top">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td>
		</td>
	  </tr>
      
      <tr>
        <td>
          <h3 class="b"><a href="http://bbs.jeecms.com/eckf/index.jhtml">二次开发技术支持服务</a></h3>
		  
		  </td>
          </tr>
          
          <tr>
            <td class="tal y-style  e">
			<span style="color:#838383;">主题:</span>54 &nbsp;
			<span style="color:#838383;">贴数:</span> <span class="gray2 ">392</span></td></tr>
          <tr>
            <td>
          <span style="color:#838383;">标题:</span>
          <a href="http://bbs.jeecms.com/eckf/32227.jhtml#pid432118" title="V6中以自定义字段为条件查询数据库怎么做？">
          V6中以自定义字段为..</a> &nbsp;</td></tr>
         <tr>
           <td> <span style="color:#838383;">最后发表:</span>
          <span class="f9">[2014-11-20]</span>&nbsp;</td></tr>
        
          <tr>
            <td>
          <span style="color:#838383;">作者:</span><span class="gray2">yin2035</span>
          
         </td></tr>
          </tbody></table>
          </td>
          </tr>
          </tbody></table>
         </li>
          </td>
        
        
        </tr>
  
      
    </tbody></table>
    </div>
    <div class="t z">
    <ul>
        
        </ul><table width="100%" cellspacing="0" cellpadding="0">
      <tbody>
        <tr>
          <th class="h" colspan="6"><a class="closeicon fr"><img alt="" src="image/cate_fold.gif"></a>
          <h2>» <a class="cfont">≡JEECMS使用交流区≡</a></h2>
          </th>
        </tr>
<!--
        <tr class="tr2">
          <td width="*" colspan="2" class="tac">论坛</td>
          <td class="tal y-style e">主题 / 文章</td>
          <td class="tal y-style f">最后发表</td>
          <td style="width: 120px;" class="tal">版主</td>
        </tr>
-->
      </tbody>
      
     
        <tbody><tr class="tr3">
        <td bgcolor="#FFFFFF">
        <li style="width:247px; height:107px; float:left; overflow:hidden; margin-bottom:10px;">
	  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td width="30" rowspan="2" valign="top">
		<table width="30" border="0" cellspacing="0" cellpadding="0" style="margin-top:12px !important; margin-top:5px;">
          <tbody><tr>
            <td valign="top">
              <div> <img src="image/tie002.gif"> </div>
			  </td>
          </tr>
        </tbody></table>
		</td>
        <td> </td></tr>
      
      <tr>
        <td valign="top">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td>
		</td>
	  </tr>
      
      <tr>
        <td>
          <h3 class="b"><a href="http://bbs.jeecms.com/fabu/index.jhtml">程序发布公告</a></h3>
		  <span class="b" style="color:#FF0000;">(16)</span>
		  </td>
          </tr>
          
          <tr>
            <td class="tal y-style  e">
			<span style="color:#838383;">主题:</span>2541 &nbsp;
			<span style="color:#838383;">贴数:</span> <span class="gray2 ">178273</span></td></tr>
          <tr>
            <td>
          <span style="color:#838383;">标题:</span>
          <a href="http://bbs.jeecms.com/fabu/34829_17.jhtml#pid477215" title="java开源BBS系统--jeebbs v4.0版源码包下载帖">
          java开源BBS系..</a> &nbsp;</td></tr>
         <tr>
           <td> <span style="color:#838383;">最后发表:</span>
          <span class="f9">[2015-04-05]</span>&nbsp;</td></tr>
        
          <tr>
            <td>
          <span style="color:#838383;">作者:</span><span class="gray2">bj_why</span>
          
         </td></tr>
          </tbody></table>
          </td>
          </tr>
          </tbody></table>
         </li>
        <li style="width:247px; height:107px; float:left; overflow:hidden; margin-bottom:10px;">
	  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td width="30" rowspan="2" valign="top">
		<table width="30" border="0" cellspacing="0" cellpadding="0" style="margin-top:12px !important; margin-top:5px;">
          <tbody><tr>
            <td valign="top">
              <div> <img src="image/tie001.gif"> </div>
			  </td>
          </tr>
        </tbody></table>
		</td>
        <td> </td></tr>
      
      <tr>
        <td valign="top">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td>
		</td>
	  </tr>
      
      <tr>
        <td>
          <h3 class="b"><a href="http://bbs.jeecms.com/bug/index.jhtml">BUG反馈</a></h3>
		  
		  </td>
          </tr>
          
          <tr>
            <td class="tal y-style  e">
			<span style="color:#838383;">主题:</span>2144 &nbsp;
			<span style="color:#838383;">贴数:</span> <span class="gray2 ">14215</span></td></tr>
          <tr>
            <td>
          <span style="color:#838383;">标题:</span>
          <a href="http://bbs.jeecms.com/bug/32800_2.jhtml#pid477161" title="jeecmsv6导入到eclipse后，后台页面显示“服务器发生了异常情况”">
          jeecmsv6导入..</a> &nbsp;</td></tr>
         <tr>
           <td> <span style="color:#838383;">最后发表:</span>
          <span class="f9">[2015-04-04]</span>&nbsp;</td></tr>
        
          <tr>
            <td>
          <span style="color:#838383;">作者:</span><span class="gray2">kerewin</span>
          
         </td></tr>
          </tbody></table>
          </td>
          </tr>
          </tbody></table>
         </li>
        <li style="width:247px; height:107px; float:left; overflow:hidden; margin-bottom:10px;">
	  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td width="30" rowspan="2" valign="top">
		<table width="30" border="0" cellspacing="0" cellpadding="0" style="margin-top:12px !important; margin-top:5px;">
          <tbody><tr>
            <td valign="top">
              <div> <img src="image/tie002.gif"> </div>
			  </td>
          </tr>
        </tbody></table>
		</td>
        <td> </td></tr>
      
      <tr>
        <td valign="top">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td>
		</td>
	  </tr>
      
      <tr>
        <td>
          <h3 class="b"><a href="http://bbs.jeecms.com/azsy/index.jhtml">安装与使用</a></h3>
		  <span class="b" style="color:#FF0000;">(1)</span>
		  </td>
          </tr>
          
          <tr>
            <td class="tal y-style  e">
			<span style="color:#838383;">主题:</span>10414 &nbsp;
			<span style="color:#838383;">贴数:</span> <span class="gray2 ">92391</span></td></tr>
          <tr>
            <td>
          <span style="color:#838383;">标题:</span>
          <a href="http://bbs.jeecms.com/azsy/34991.jhtml#pid477213" title="为什么添加一个栏目，然后选择了自己创建的模型是这样的">
          为什么添加一个栏目，..</a> &nbsp;</td></tr>
         <tr>
           <td> <span style="color:#838383;">最后发表:</span>
          <span class="f9">[2015-04-05]</span>&nbsp;</td></tr>
        
          <tr>
            <td>
          <span style="color:#838383;">作者:</span><span class="gray2">gx19890629</span>
          
         </td></tr>
          </tbody></table>
          </td>
          </tr>
          </tbody></table>
         </li>
        <li style="width:247px; height:107px; float:left; overflow:hidden; margin-bottom:10px;">
	  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td width="30" rowspan="2" valign="top">
		<table width="30" border="0" cellspacing="0" cellpadding="0" style="margin-top:12px !important; margin-top:5px;">
          <tbody><tr>
            <td valign="top">
              <div> <img src="image/tie001.gif"> </div>
			  </td>
          </tr>
        </tbody></table>
		</td>
        <td> </td></tr>
      
      <tr>
        <td valign="top">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td>
		</td>
	  </tr>
      
      <tr>
        <td>
          <h3 class="b"><a href="http://bbs.jeecms.com/muban/index.jhtml">模板制作讨论区</a></h3>
		  
		  </td>
          </tr>
          
          <tr>
            <td class="tal y-style  e">
			<span style="color:#838383;">主题:</span>1340 &nbsp;
			<span style="color:#838383;">贴数:</span> <span class="gray2 ">20413</span></td></tr>
          <tr>
            <td>
          <span style="color:#838383;">标题:</span>
          <a href="http://bbs.jeecms.com/muban/22795_53.jhtml#pid477046" title="JEECMSv5子站点演示模板下载帖">
          JEECMSv5子站..</a> &nbsp;</td></tr>
         <tr>
           <td> <span style="color:#838383;">最后发表:</span>
          <span class="f9">[2015-04-03]</span>&nbsp;</td></tr>
        
          <tr>
            <td>
          <span style="color:#838383;">作者:</span><span class="gray2">mlxxkj</span>
          
         </td></tr>
          </tbody></table>
          </td>
          </tr>
          </tbody></table>
         </li>
        <li style="width:247px; height:107px; float:left; overflow:hidden; margin-bottom:10px;">
	  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td width="30" rowspan="2" valign="top">
		<table width="30" border="0" cellspacing="0" cellpadding="0" style="margin-top:12px !important; margin-top:5px;">
          <tbody><tr>
            <td valign="top">
              <div> <img src="image/tie002.gif"> </div>
			  </td>
          </tr>
        </tbody></table>
		</td>
        <td> </td></tr>
      
      <tr>
        <td valign="top">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td>
		</td>
	  </tr>
      
      <tr>
        <td>
          <h3 class="b"><a href="http://bbs.jeecms.com/eckfjsjl/index.jhtml">二次开发技术交流</a></h3>
		  <span class="b" style="color:#FF0000;">(1)</span>
		  </td>
          </tr>
          
          <tr>
            <td class="tal y-style  e">
			<span style="color:#838383;">主题:</span>1554 &nbsp;
			<span style="color:#838383;">贴数:</span> <span class="gray2 ">15447</span></td></tr>
          <tr>
            <td>
          <span style="color:#838383;">标题:</span>
          <a href="http://bbs.jeecms.com/eckfjsjl/34998.jhtml" title="jeebbs">jeebbs</a> &nbsp;</td></tr>
         <tr>
           <td> <span style="color:#838383;">最后发表:</span>
          <span class="f9">[2015-04-05]</span>&nbsp;</td></tr>
        
          <tr>
            <td>
          <span style="color:#838383;">作者:</span><span class="gray2">bj_why</span>
          
         </td></tr>
          </tbody></table>
          </td>
          </tr>
          </tbody></table>
         </li>
        <li style="width:247px; height:107px; float:left; overflow:hidden; margin-bottom:10px;">
	  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td width="30" rowspan="2" valign="top">
		<table width="30" border="0" cellspacing="0" cellpadding="0" style="margin-top:12px !important; margin-top:5px;">
          <tbody><tr>
            <td valign="top">
              <div> <img src="image/tie002.gif"> </div>
			  </td>
          </tr>
        </tbody></table>
		</td>
        <td> </td></tr>
      
      <tr>
        <td valign="top">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td>
		</td>
	  </tr>
      
      <tr>
        <td>
          <h3 class="b"><a href="http://bbs.jeecms.com/xtjc/index.jhtml">教程分享</a></h3>
		  <span class="b" style="color:#FF0000;">(5)</span>
		  </td>
          </tr>
          
          <tr>
            <td class="tal y-style  e">
			<span style="color:#838383;">主题:</span>185 &nbsp;
			<span style="color:#838383;">贴数:</span> <span class="gray2 ">13599</span></td></tr>
          <tr>
            <td>
          <span style="color:#838383;">标题:</span>
          <a href="http://bbs.jeecms.com/xtjc/30172_466.jhtml#pid477212" title="jeecmsV6系统使用说明书">
          jeecmsV6系统..</a> &nbsp;</td></tr>
         <tr>
           <td> <span style="color:#838383;">最后发表:</span>
          <span class="f9">[2015-04-05]</span>&nbsp;</td></tr>
        
          <tr>
            <td>
          <span style="color:#838383;">作者:</span><span class="gray2">ahbbztj</span>
          
         </td></tr>
          </tbody></table>
          </td>
          </tr>
          </tbody></table>
         </li>
        <li style="width:247px; height:107px; float:left; overflow:hidden; margin-bottom:10px;">
	  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td width="30" rowspan="2" valign="top">
		<table width="30" border="0" cellspacing="0" cellpadding="0" style="margin-top:12px !important; margin-top:5px;">
          <tbody><tr>
            <td valign="top">
              <div> <img src="image/tie002.gif"> </div>
			  </td>
          </tr>
        </tbody></table>
		</td>
        <td> </td></tr>
      
      <tr>
        <td valign="top">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td>
		</td>
	  </tr>
      
      <tr>
        <td>
          <h3 class="b"><a href="http://bbs.jeecms.com/xtsjtl/index.jhtml">系统升级讨论</a></h3>
		  <span class="b" style="color:#FF0000;">(2)</span>
		  </td>
          </tr>
          
          <tr>
            <td class="tal y-style  e">
			<span style="color:#838383;">主题:</span>32 &nbsp;
			<span style="color:#838383;">贴数:</span> <span class="gray2 ">621</span></td></tr>
          <tr>
            <td>
          <span style="color:#838383;">标题:</span>
          <a href="http://bbs.jeecms.com/xtsjtl/20840_26.jhtml#pid477209" title="jeecms后台内容编辑器升级">
          jeecms后台内容..</a> &nbsp;</td></tr>
         <tr>
           <td> <span style="color:#838383;">最后发表:</span>
          <span class="f9">[2015-04-05]</span>&nbsp;</td></tr>
        
          <tr>
            <td>
          <span style="color:#838383;">作者:</span><span class="gray2">a664052243</span>
          
         </td></tr>
          </tbody></table>
          </td>
          </tr>
          </tbody></table>
         </li>
        <li style="width:247px; height:107px; float:left; overflow:hidden; margin-bottom:10px;">
	  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td width="30" rowspan="2" valign="top">
		<table width="30" border="0" cellspacing="0" cellpadding="0" style="margin-top:12px !important; margin-top:5px;">
          <tbody><tr>
            <td valign="top">
              <div> <img src="image/tie001.gif"> </div>
			  </td>
          </tr>
        </tbody></table>
		</td>
        <td> </td></tr>
      
      <tr>
        <td valign="top">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td>
		</td>
	  </tr>
      
      <tr>
        <td>
          <h3 class="b"><a href="http://bbs.jeecms.com/jspgou/index.jhtml">JSPGOU讨论专区</a></h3>
		  
		  </td>
          </tr>
          
          <tr>
            <td class="tal y-style  e">
			<span style="color:#838383;">主题:</span>195 &nbsp;
			<span style="color:#838383;">贴数:</span> <span class="gray2 ">3404</span></td></tr>
          <tr>
            <td>
          <span style="color:#838383;">标题:</span>
          <a href="http://bbs.jeecms.com/jspgou/28987_78.jhtml#pid477064" title="jspgou系统标签使用文档最新完整版下载帖">
          jspgou系统标签..</a> &nbsp;</td></tr>
         <tr>
           <td> <span style="color:#838383;">最后发表:</span>
          <span class="f9">[2015-04-03]</span>&nbsp;</td></tr>
        
          <tr>
            <td>
          <span style="color:#838383;">作者:</span><span class="gray2">5511</span>
          
         </td></tr>
          </tbody></table>
          </td>
          </tr>
          </tbody></table>
         </li>
          </td>
        
        
        </tr>
  
      
    </tbody></table>
    </div>
    <div class="t z">
    <ul>
        
        </ul><table width="100%" cellspacing="0" cellpadding="0">
      <tbody>
        <tr>
          <th class="h" colspan="6"><a class="closeicon fr"><img alt="" src="image/cate_fold.gif"></a>
          <h2>» <a class="cfont">≡综合技术交流区≡</a></h2>
          </th>
        </tr>
<!--
        <tr class="tr2">
          <td width="*" colspan="2" class="tac">论坛</td>
          <td class="tal y-style e">主题 / 文章</td>
          <td class="tal y-style f">最后发表</td>
          <td style="width: 120px;" class="tal">版主</td>
        </tr>
-->
      </tbody>
      
     
        <tbody><tr class="tr3">
        <td bgcolor="#FFFFFF">
        <li style="width:247px; height:107px; float:left; overflow:hidden; margin-bottom:10px;">
	  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td width="30" rowspan="2" valign="top">
		<table width="30" border="0" cellspacing="0" cellpadding="0" style="margin-top:12px !important; margin-top:5px;">
          <tbody><tr>
            <td valign="top">
              <div> <img src="image/tie002.gif"> </div>
			  </td>
          </tr>
        </tbody></table>
		</td>
        <td> </td></tr>
      
      <tr>
        <td valign="top">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td>
		</td>
	  </tr>
      
      <tr>
        <td>
          <h3 class="b"><a href="http://bbs.jeecms.com/freemarker/index.jhtml">freemarker技术专栏</a></h3>
		  <span class="b" style="color:#FF0000;">(1)</span>
		  </td>
          </tr>
          
          <tr>
            <td class="tal y-style  e">
			<span style="color:#838383;">主题:</span>456 &nbsp;
			<span style="color:#838383;">贴数:</span> <span class="gray2 ">8611</span></td></tr>
          <tr>
            <td>
          <span style="color:#838383;">标题:</span>
          <a href="http://bbs.jeecms.com/freemarker/15345_67.jhtml#pid477193" title="Freemaker_入门+深入+开发指南+学习笔记">
          Freemaker_..</a> &nbsp;</td></tr>
         <tr>
           <td> <span style="color:#838383;">最后发表:</span>
          <span class="f9">[2015-04-05]</span>&nbsp;</td></tr>
        
          <tr>
            <td>
          <span style="color:#838383;">作者:</span><span class="gray2">cxloong</span>
          
         </td></tr>
          </tbody></table>
          </td>
          </tr>
          </tbody></table>
         </li>
        <li style="width:247px; height:107px; float:left; overflow:hidden; margin-bottom:10px;">
	  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td width="30" rowspan="2" valign="top">
		<table width="30" border="0" cellspacing="0" cellpadding="0" style="margin-top:12px !important; margin-top:5px;">
          <tbody><tr>
            <td valign="top">
              <div> <img src="image/tie001.gif"> </div>
			  </td>
          </tr>
        </tbody></table>
		</td>
        <td> </td></tr>
      
      <tr>
        <td valign="top">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td>
		</td>
	  </tr>
      
      <tr>
        <td>
          <h3 class="b"><a href="http://bbs.jeecms.com/hibernate/index.jhtml">hibernate技术专栏</a></h3>
		  
		  </td>
          </tr>
          
          <tr>
            <td class="tal y-style  e">
			<span style="color:#838383;">主题:</span>115 &nbsp;
			<span style="color:#838383;">贴数:</span> <span class="gray2 ">1845</span></td></tr>
          <tr>
            <td>
          <span style="color:#838383;">标题:</span>
          <a href="http://bbs.jeecms.com/hibernate/11911_15.jhtml#pid477134" title="Hibernate优化">
          Hibernate优..</a> &nbsp;</td></tr>
         <tr>
           <td> <span style="color:#838383;">最后发表:</span>
          <span class="f9">[2015-04-04]</span>&nbsp;</td></tr>
        
          <tr>
            <td>
          <span style="color:#838383;">作者:</span><span class="gray2">gaoyaqing</span>
          
         </td></tr>
          </tbody></table>
          </td>
          </tr>
          </tbody></table>
         </li>
        <li style="width:247px; height:107px; float:left; overflow:hidden; margin-bottom:10px;">
	  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td width="30" rowspan="2" valign="top">
		<table width="30" border="0" cellspacing="0" cellpadding="0" style="margin-top:12px !important; margin-top:5px;">
          <tbody><tr>
            <td valign="top">
              <div> <img src="image/tie001.gif"> </div>
			  </td>
          </tr>
        </tbody></table>
		</td>
        <td> </td></tr>
      
      <tr>
        <td valign="top">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td>
		</td>
	  </tr>
      
      <tr>
        <td>
          <h3 class="b"><a href="http://bbs.jeecms.com/spring/index.jhtml">spring技术专栏</a></h3>
		  
		  </td>
          </tr>
          
          <tr>
            <td class="tal y-style  e">
			<span style="color:#838383;">主题:</span>97 &nbsp;
			<span style="color:#838383;">贴数:</span> <span class="gray2 ">3116</span></td></tr>
          <tr>
            <td>
          <span style="color:#838383;">标题:</span>
          <a href="http://bbs.jeecms.com/spring/11543_51.jhtml#pid477131" title="SpringMVC+Freemarker实现半自动静态化">
          SpringMVC+..</a> &nbsp;</td></tr>
         <tr>
           <td> <span style="color:#838383;">最后发表:</span>
          <span class="f9">[2015-04-04]</span>&nbsp;</td></tr>
        
          <tr>
            <td>
          <span style="color:#838383;">作者:</span><span class="gray2">gaoyaqing</span>
          
         </td></tr>
          </tbody></table>
          </td>
          </tr>
          </tbody></table>
         </li>
        <li style="width:247px; height:107px; float:left; overflow:hidden; margin-bottom:10px;">
	  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td width="30" rowspan="2" valign="top">
		<table width="30" border="0" cellspacing="0" cellpadding="0" style="margin-top:12px !important; margin-top:5px;">
          <tbody><tr>
            <td valign="top">
              <div> <img src="image/tie001.gif"> </div>
			  </td>
          </tr>
        </tbody></table>
		</td>
        <td> </td></tr>
      
      <tr>
        <td valign="top">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td>
		</td>
	  </tr>
      
      <tr>
        <td>
          <h3 class="b"><a href="http://bbs.jeecms.com/java/index.jhtml">Java程序员学习区</a></h3>
		  
		  </td>
          </tr>
          
          <tr>
            <td class="tal y-style  e">
			<span style="color:#838383;">主题:</span>1007 &nbsp;
			<span style="color:#838383;">贴数:</span> <span class="gray2 ">4406</span></td></tr>
          <tr>
            <td>
          <span style="color:#838383;">标题:</span>
          <a href="http://bbs.jeecms.com/java/15413_8.jhtml#pid477084" title="Servlet工作原理">
          Servlet工作原..</a> &nbsp;</td></tr>
         <tr>
           <td> <span style="color:#838383;">最后发表:</span>
          <span class="f9">[2015-04-04]</span>&nbsp;</td></tr>
        
          <tr>
            <td>
          <span style="color:#838383;">作者:</span><span class="gray2">lysvanilla</span>
          
         </td></tr>
          </tbody></table>
          </td>
          </tr>
          </tbody></table>
         </li>
          </td>
        
        
        </tr>
  
      
    </tbody></table>
    </div>
    </div>
    </div>
    </div>
<div id="statisticDiv" class="memberstatistic">
<div class="memberstatisticinner">
论坛动态：在线人数总共&nbsp;<span id="usertotal">1106</span>&nbsp;-会员&nbsp;<span id="membertotal">8</span>&nbsp;-游客&nbsp;<span id="visitortotal">1098</span>&nbsp;
-最高纪录是 &nbsp;57685&nbsp;于&nbsp;2015-3-18
</div>
</div>
<script type="text/javascript">
	var memberTotal=$.cookie('membertotal'); 
	var visitorTotal=$.cookie('visitortotal');
	var total=$.cookie('usertotal');
	var date=new Date();
	var cookieExpireMinute=5;
	date.setTime(date.getTime() + (cookieExpireMinute * 60 * 1000));
	if(memberTotal!=null){
		$("#membertotal").html(memberTotal);
		$("#visitortotal").html(visitorTotal);
		$("#usertotal").html(total);
	}else{
		 $.post("/session/statistic.jspx", {
			 	member:true
			}, function(data) {
				$("#membertotal").html(data.membtertotal);
				$("#visitortotal").html(data.visitortotal);
				$("#usertotal").html(data.usertotal);
				$.cookie('membertotal',data.membtertotal,{expires:date,path:'/'});
				$.cookie('visitortotal',data.visitortotal,{expires:date,path:'/'});
				$.cookie('usertotal',data.usertotal,{expires:date,path:'/'});
		  }, "json");
	}
</script>     <!--
<div id="hotlink">
	&nbsp;&nbsp;
	<div class="fl"><img src="../../r/cms/www/blue/bbs_forum/img/yqlj.gif" /></div>
	<div class="fr">&nbsp;&nbsp;&nbsp;&nbsp;
	</div>
</div>     -->
    </div>
    <!--/main-->
    
	<!--footer--> 
<div style="clear:both; height:0; overflow:hidden;"></div>
   <div id="foot">
   	<p><a href="http://www.jeecms.com/gywm.htm" target="_blank">关于我们</a> - <a href="http://www.jeecms.com/lxwm.htm" target="_blank">联系我们</a> - <a href="http://www.jeecms.com/zhaopin.htm" target="_blank">诚聘英才</a> - <a href="http://bbs.jeecms.com/fabu/index.jhtml" target="_blank">程序下载</a> - <a href="http://www.jeecms.com/ad.htm" target="_blank">广告服务</a> - <a href="http://www.jeecms.com/xkxy.htm" target="_blank">许可协议</a> - <a href="http://bbs.jeecms.com/#">设为首页</a> - <a href="javascript:void(0)" class="login_user">加入收藏</a> </p>
    <p>电话：0791-86538070　13576281815&nbsp;&nbsp;&nbsp;&nbsp;　传真：0791-86538070&nbsp;&nbsp;&nbsp;  ICP备案号：赣ICP备13005266号</p>
    <p>Powered by JeeCms Copyright © 2007-2015 www.jeecms.com, All Rights Reserved  
</p>
   </div>	<!--footer-->
  
<iframe src="file/PMProxy.htm" style="width: 0px; height: 0px; display: none; overflow: hidden;"></iframe></body></html>