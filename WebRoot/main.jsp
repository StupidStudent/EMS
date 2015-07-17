<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0029)http://localhost:8080/jeebbs/ -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>JEEBBS论坛 - JEECMS官方论坛|开源java cms,jsp cms,jsp bbs</title>
<meta name="keywords"
	content="java,cms,jsp,cms,jsp bbs,开源网站内容管理系统,网站群,站群,多站点,jeecms">
<meta name="description"
	content="讨论jsp cms、jsp bbs相关资讯，struts,hibernate,spring,freemarker最新技术研究">
<link href="css/front.css" rel="stylesheet" type="text/css">
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/front.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/whole.css">
<link rel="stylesheet" type="text/css" href="css/layout.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

to {、
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
	<div style="width:1000px; margin:auto;">
		<!--header-->
		<div>
			<div class="wrapper"
				style="margin-top:5px !important; margin-top:12px;">
				<div class="dhlheader">
					<div class="dhlmenu">
						<a title="JEECMS官方网站"
							href="./JEEBBS论坛 - JEECMS官方论坛 开源java cms,jsp cms,jsp bbs_files/JEEBBS论坛 - JEECMS官方论坛 开源java cms,jsp cms,jsp bbs.htm"
							class="logo" id="logo"></a>
						<ul class="dhlmenu-list">
							<li class="dhlmenu-list-index current"><a
								href="./JEEBBS论坛 - JEECMS官方论坛 开源java cms,jsp cms,jsp bbs_files/JEEBBS论坛 - JEECMS官方论坛 开源java cms,jsp cms,jsp bbs.htm">首页</a></li>
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
		<!--20条信息_Begin-->
		<!--notice-->
		<div id="notice">
			<div id="notice0" style="overflow-y: hidden; float:left;">
				<ul>
					<li><a href="http://idc.jeecms.com/" target="_blank">JEECMS虚拟主机，先试用再付费</a></li>
					<li><a href="http://idc.jeecms.com/" target="_blank">JEECMS虚拟主机代理，价格更低</a></li>
					<li><a href="http://www.jeecms.com/ad.htm" target="_blank">赞助商文字链接广告位招租</a></li>
					<li><a href="http://www.jeecms.com/ad.htm" target="_blank">赞助商文字链接广告位招租</a></li>
				</ul>
			</div>
			<div style="width:440px; float:right;">
				<div class="set-tab-box" style="height:20px;padding-top:15px;">
					<form action="http://localhost:8080/jeebbs/topic/search.jhtml"
						name="jvForm" method="get">
						<select name="forumId">
							<option value="0">整个论坛搜索</option>
							<option value="1">系统售前咨询</option>
							<option value="4">test</option>
							<option value="5">hobby</option>
							<option value="2">BUG反馈</option>
							<option value="3">英语爱好者</option>
						</select> 关键字：<input type="text" name="keywords" value=""> <input
							type="submit" value="搜索">
					</form>
				</div>
			</div>
			<div style="overflow-y: hidden; height: 3px"></div>
		</div>
		<!--/notice-->
		<!--/End-->
		<!--登录统计栏_Begin-->
		<jsp:include page="login.jsp" />	
		<!--登录统计栏_End-->
		<div style="line-height:28px;">
			<table border="0" cellspacing="0" cellpadding="0">
				<tbody>
					<tr>
						<td width="30"><img src="img/icon001.gif"></td>
						<td><span style="color:#838383;">今日:</span>7 <span
							style="color:#838383;">| </span> <span style="color:#838383;">昨日:</span>
							0 <span style="color:#838383;">| </span> <span
							style="color:#838383;">最高日:</span>7 于 2011-10-15 <span
							style="color:#838383;">| </span> <span style="color:#838383;">主题:</span>7
							<span style="color:#838383;">| </span> <span
							style="color:#838383;">帖子:</span>0 <span style="color:#838383;">|
						</span> <span style="color:#838383;">会员:</span>1 <span
							style="color:#838383;">| </span> <span style="color:#838383;">欢迎新会员:</span><span
							class="black">chen</span></td>
					</tr>
				</tbody>
			</table>

		</div>
	</div>
	<!--main-->
	<div class="main-wrap">
		<div id="main">

			<div id="content">
				<div class="contentwrap z">


					<!-- 每个类别区块 -->
					<c:forEach items="${kinds }" var="kind">
					<div class="t z">
						<table width="100%" cellspacing="0" cellpadding="0">
							<tbody>
								<tr>
									<th class="h" colspan="6"><a class="closeicon fr"><img
											alt="" src="img/cate_fold.gif" /></a>
										<h2>
											» <a class="cfont">${kind.getName()}</a>
										</h2></th>
								</tr>

							</tbody>

							<tbody>
								<tr class="tr3">
									<!-- 每个分区只显示前4个站点-->
									<c:forEach var="site" items="${kind.getSites()}" begin="0" end="3">
										<td bgcolor="#FFFFFF">
											<table width="100%" border="0" align="center" cellpadding="0"
												cellspacing="0">
												<tbody>
													<tr>
														<td width="30" rowspan="2" valign="top">
															<table width="30" border="0" cellspacing="0"
																cellpadding="0"
																style="margin-top:12px !important; margin-top:5px;">
																<tbody>
																	<tr>
																		<td valign="top">
																			<div>
																				<img src="img/tie002.gif" />
																			</div>
																		</td>
																	</tr>
																</tbody>
															</table>
														</td>
														<td></td>
													</tr>

													<tr>
														<td valign="top">
															<table width="100%" border="0" cellpadding="0"
																cellspacing="0">
																<tbody>
																	<tr>
																		<td></td>
																	</tr>

																	<tr>
																		<td>
																			<h3 class="b">
																				<a
																					href="site?siteId=${site.getSiteId()}">${site.getName()}</a>
																			</h3> <span class="b" style="color:#FF0000;">(5)</span>
																		</td>
																	</tr>

																	<tr>
																		<td class="tal y-style  e"><span
																			style="color:#838383;">主题:</span>2   <span
																			style="color:#838383;">贴数:</span> <span
																			class="gray2 ">5</span></td>
																	</tr>
																	<tr>
																		<td><span style="color:#838383;">标题:</span> <a
																			href="http://localhost:8080/jeebbs/sqzx/2.jhtml#pid8"
																			title="版主帖子">版主帖子</a>  </td>
																	</tr>
																	<tr>
																		<td><span style="color:#838383;">最后发表:</span> <span
																			class="f9">[2015-04-05]</span> </td>
																	</tr>

																	<tr>
																		<td><span style="color:#838383;">作者:</span><span
																			class="gray2">zhong </span></td>
																	</tr>
																</tbody>
															</table>
														</td>
													</tr>
												</tbody>
											</table>

										</td>
									</c:forEach>
									
									
									
								</tr>


							</tbody>
						</table>
					</div>
					</c:forEach>























					<div class="t z">
						<table width="100%" cellspacing="0" cellpadding="0">
							<tbody>
								<tr>
									<th class="h" colspan="6"><a class="closeicon fr"><img
											alt="" src="img/cate_fold.gif"></a>
										<h2>
											» <a class="cfont">≡JEECMS产品服务区≡</a>
										</h2></th>
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


							<tbody>
								<tr class="tr3">
									<td bgcolor="#FFFFFF">
										<table width="100%" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tbody>
												<tr>
													<td width="30" rowspan="2" valign="top">
														<table width="30" border="0" cellspacing="0"
															cellpadding="0"
															style="margin-top:12px !important; margin-top:5px;">
															<tbody>
																<tr>
																	<td valign="top">
																		<div>
																			<img src="img/tie002.gif">
																		</div>
																	</td>
																</tr>
															</tbody>
														</table>
													</td>
													<td></td>
												</tr>

												<tr>
													<td valign="top">
														<table width="100%" border="0" cellpadding="0"
															cellspacing="0">
															<tbody>
																<tr>
																	<td></td>
																</tr>

																<tr>
																	<td>
																		<h3 class="b">
																			<a
																				href="http://localhost:8080/jeebbs/sqzx/index.jhtml">系统售前咨询</a>
																		</h3> <span class="b" style="color:#FF0000;">(5)</span>
																	</td>
																</tr>

																<tr>
																	<td class="tal y-style  e"><span
																		style="color:#838383;">主题:</span>2 &nbsp; <span
																		style="color:#838383;">贴数:</span> <span class="gray2 ">5</span></td>
																</tr>
																<tr>
																	<td><span style="color:#838383;">标题:</span> <a
																		href="http://localhost:8080/jeebbs/sqzx/2.jhtml#pid8"
																		title="版主帖子">版主帖子</a> &nbsp;</td>
																</tr>
																<tr>
																	<td><span style="color:#838383;">最后发表:</span> <span
																		class="f9">[2015-04-05]</span>&nbsp;</td>
																</tr>

																<tr>
																	<td><span style="color:#838383;">作者:</span><span
																		class="gray2">zhong </span></td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
											</tbody>
										</table>

									</td>
									<td bgcolor="#FFFFFF">
										<table width="100%" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tbody>
												<tr>
													<td width="30" rowspan="2" valign="top">
														<table width="30" border="0" cellspacing="0"
															cellpadding="0"
															style="margin-top:12px !important; margin-top:5px;">
															<tbody>
																<tr>
																	<td valign="top">
																		<div>
																			<img src="img/tie001.gif">
																		</div>
																	</td>
																</tr>
															</tbody>
														</table>
													</td>
													<td></td>
												</tr>

												<tr>
													<td valign="top">
														<table width="100%" border="0" cellpadding="0"
															cellspacing="0">
															<tbody>
																<tr>
																	<td></td>
																</tr>

																<tr>
																	<td>
																		<h3 class="b">
																			<a
																				href="http://localhost:8080/jeebbs/test/index.jhtml">test</a>
																		</h3>

																	</td>
																</tr>

																<tr>
																	<td class="tal y-style  e"><span
																		style="color:#838383;">主题:</span>0 &nbsp; <span
																		style="color:#838383;">贴数:</span> <span class="gray2 ">0</span></td>
																</tr>
																<tr>
																	<td>无</td>
																</tr>
																<tr>
																	<td>无</td>
																</tr>

																<tr>
																	<td>无</td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
											</tbody>
										</table>

									</td>
									<td bgcolor="#FFFFFF">
										<table width="100%" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tbody>
												<tr>
													<td width="30" rowspan="2" valign="top">
														<table width="30" border="0" cellspacing="0"
															cellpadding="0"
															style="margin-top:12px !important; margin-top:5px;">
															<tbody>
																<tr>
																	<td valign="top">
																		<div>
																			<img src="img/tie001.gif">
																		</div>
																	</td>
																</tr>
															</tbody>
														</table>
													</td>
													<td></td>
												</tr>

												<tr>
													<td valign="top">
														<table width="100%" border="0" cellpadding="0"
															cellspacing="0">
															<tbody>
																<tr>
																	<td></td>
																</tr>

																<tr>
																	<td>
																		<h3 class="b">
																			<a
																				href="http://localhost:8080/jeebbs/hobby/index.jhtml">hobby</a>
																		</h3>

																	</td>
																</tr>

																<tr>
																	<td class="tal y-style  e"><span
																		style="color:#838383;">主题:</span>0 &nbsp; <span
																		style="color:#838383;">贴数:</span> <span class="gray2 ">0</span></td>
																</tr>
																<tr>
																	<td>无</td>
																</tr>
																<tr>
																	<td>无</td>
																</tr>

																<tr>
																	<td>无</td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
											</tbody>
										</table>

									</td>
								</tr>


							</tbody>
						</table>
					</div>
					<div class="t z">
						<table width="100%" cellspacing="0" cellpadding="0">
							<tbody>
								<tr>
									<th class="h" colspan="6"><a class="closeicon fr"><img
											alt="" src="img/cate_fold.gif"></a>
										<h2>
											» <a class="cfont">≡JEECMS使用交流区≡</a>
										</h2></th>
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


							<tbody>
								<tr class="tr3">
									<td bgcolor="#FFFFFF">
										<table width="100%" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tbody>
												<tr>
													<td width="30" rowspan="2" valign="top">
														<table width="30" border="0" cellspacing="0"
															cellpadding="0"
															style="margin-top:12px !important; margin-top:5px;">
															<tbody>
																<tr>
																	<td valign="top">
																		<div>
																			<img src="img/tie002.gif">
																		</div>
																	</td>
																</tr>
															</tbody>
														</table>
													</td>
													<td></td>
												</tr>

												<tr>
													<td valign="top">
														<table width="100%" border="0" cellpadding="0"
															cellspacing="0">
															<tbody>
																<tr>
																	<td></td>
																</tr>

																<tr>
																	<td>
																		<h3 class="b">
																			<a
																				href="http://localhost:8080/jeebbs/bug/index.jhtml">BUG反馈</a>
																		</h3> <span class="b" style="color:#FF0000;">(2)</span>
																	</td>
																</tr>

																<tr>
																	<td class="tal y-style  e"><span
																		style="color:#838383;">主题:</span>2 &nbsp; <span
																		style="color:#838383;">贴数:</span> <span class="gray2 ">2</span></td>
																</tr>
																<tr>
																	<td><span style="color:#838383;">标题:</span> <a
																		href="http://localhost:8080/jeebbs/bug/4.jhtml"
																		title="a sd ">a sd </a> &nbsp;</td>
																</tr>
																<tr>
																	<td><span style="color:#838383;">最后发表:</span> <span
																		class="f9">[2015-04-05]</span>&nbsp;</td>
																</tr>

																<tr>
																	<td><span style="color:#838383;">作者:</span><span
																		class="gray2">admin </span></td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
											</tbody>
										</table>

									</td>
								</tr>


							</tbody>
						</table>
					</div>
					<div class="t z">
						<table width="100%" cellspacing="0" cellpadding="0">
							<tbody>
								<tr>
									<th class="h" colspan="6"><a class="closeicon fr"><img
											alt="" src="img/cate_fold.gif"></a>
										<h2>
											» <a class="cfont">≡爱好交流区≡</a>
										</h2></th>
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


							<tbody>
								<tr class="tr3">
									<td bgcolor="#FFFFFF">
										<table width="100%" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tbody>
												<tr>
													<td width="30" rowspan="2" valign="top">
														<table width="30" border="0" cellspacing="0"
															cellpadding="0"
															style="margin-top:12px !important; margin-top:5px;">
															<tbody>
																<tr>
																	<td valign="top">
																		<div>
																			<img src="img/tie001.gif">
																		</div>
																	</td>
																</tr>
															</tbody>
														</table>
													</td>
													<td></td>
												</tr>

												<tr>
													<td valign="top">
														<table width="100%" border="0" cellpadding="0"
															cellspacing="0">
															<tbody>
																<tr>
																	<td></td>
																</tr>

																<tr>
																	<td>
																		<h3 class="b">
																			<a
																				href="http://localhost:8080/jeebbs/english/index.jhtml">英语爱好者</a>
																		</h3>

																	</td>
																</tr>

																<tr>
																	<td class="tal y-style  e"><span
																		style="color:#838383;">主题:</span>0 &nbsp; <span
																		style="color:#838383;">贴数:</span> <span class="gray2 ">0</span></td>
																</tr>
																<tr>
																	<td>无</td>
																</tr>
																<tr>
																	<td>无</td>
																</tr>

																<tr>
																	<td>无</td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
											</tbody>
										</table>

									</td>
								</tr>


							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div id="hotlink">
			&nbsp;&nbsp;
			<div class="fl">
				<img src="img/yqlj.gif">
			</div>
			<div class="fr">&nbsp;&nbsp;&nbsp;&nbsp;</div>
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
				href="http://localhost:8080/jeebbs/#"
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
<!-- 
			<script
				src="./JEEBBS论坛 - JEECMS官方论坛 开源java cms,jsp cms,jsp bbs_files/stat.php"
				language="JavaScript" charset="gb2312"></script>
			<script
				src="./JEEBBS论坛 - JEECMS官方论坛 开源java cms,jsp cms,jsp bbs_files/core.php"
				charset="utf-8" type="text/javascript"></script>
 -->
			<a href="http://www.cnzz.com/stat/website.php?web_id=1097297"
				target="_blank" title="站长统计"><img border="0" hspace="0"
				vspace="0" src="img/pic1.gif"></a>
		</p>
	</div>
	<!--footer-->

</body>
</html>