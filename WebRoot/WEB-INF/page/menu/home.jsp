﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>后台管理系统</title>
    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css" />
    <link rel="stylesheet" type="text/css" href="Styles/base.css" />
    <link rel="stylesheet" type="text/css" href="Styles/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/ui-lightness/jquery-ui-1.8.22.custom.css" />
    <script type="text/javascript" src="Scripts/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery-ui-1.8.22.custom.min.js"></script>
    <script type="text/javascript" src="Scripts/index.js"></script>
</head>
<body>
    <div class="warp">
        <!--头部开始-->
        <div class="top_c">
            <div class="top-menu">
                <ul class="top-menu-nav">
                    <li><a href="#">首页</a></li>
                    <li><a href="#" class="nav-main-title">业务运营管理<i class="tip-up"></i></a>
                        <ul class="kidc" style="width: 110px">
                            <li><a target="Conframe" href="Template/user.html">用户管理</a></li>
                            <li><a target="Conframe" href=".....">计费管理</a></li>
                            <li><a target="Conframe" href=".....">财务管理</a></li>
                            <li><a target="Conframe" href=".....">收费管理</a></li>
                            <li><a target="Conframe" href=".....">系统设置管理</a></li>
                            <li><a target="Conframe" href=".....">区域管理</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="nav-main-title">客户服务管理<i class="tip-up"></i></a>
                        <ul class="kidc" style="width: 140px">
                            <li><b class="tip"></b><a target="Conframe" href=".....">服务质量管理</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">客户反馈管理</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">客户满意度管理</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">服务销售机会管理</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">统计分析管理</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="nav-main-title">综合办公管理<i class="tip-up"></i></a>
                        <ul class="kidc" style="width: 110px">
                            <li><b class="tip"></b><a target="Conframe" href=".....">文档管理</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">人员考核</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">会议管理</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="nav-main-title">广域网管理<i class="tip-up"></i></a>
                        <ul class="kidc" style="width: 130px">
                            <li><b class="tip"></b><a target="Conframe" href=".....">系统设置与管理</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">性能保障管理</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">流量安全管理</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">安全组网管理</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">安全隔离管理</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">安全防护管理</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">集中管理</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="nav-main-title">网站系统管理<i class="tip-up"></i></a>
                        <ul class="kidc" style="width: 140px">
                            <li><b class="tip"></b><a target="Conframe" href=".....">系统设置与管理</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">配置管理</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">安全管理</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">故障管理</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">用户和权限管理</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">性能管理</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">系统日志管理</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">模板管理</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="nav-main-title">邮件系统管理<i class="tip-up"></i></a>
                        <ul class="kidc" style="width: 140px">
                            <li><b class="tip"></b><a target="Conframe" href=".....">垃圾邮件智能识别</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">内容过滤/规则匹配</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">智能抗攻击</a></li>
                        </ul>
                    </li>
                    <!-- <li><a href="#" class="nav-main-title">邮件系统管理<i class="tip-up"></i></a>
                        <ul class="kidc" style="width: 140px">
                            <li><b class="tip"></b><a target="Conframe" href=".....">垃圾邮件智能识别</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">内容过滤/规则匹配</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">智能抗攻击</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="nav-main-title">邮件系统管理<i class="tip-up"></i></a>
                        <ul class="kidc" style="width: 140px">
                            <li><b class="tip"></b><a target="Conframe" href=".....">垃圾邮件智能识别</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">内容过滤/规则匹配</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">智能抗攻击</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="nav-main-title">邮件系统管理<i class="tip-up"></i></a>
                        <ul class="kidc" style="width: 140px">
                            <li><b class="tip"></b><a target="Conframe" href=".....">垃圾邮件智能识别</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">内容过滤/规则匹配</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">智能抗攻击</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="nav-main-title">邮件系统管理<i class="tip-up"></i></a>
                        <ul class="kidc" style="width: 140px">
                            <li><b class="tip"></b><a target="Conframe" href=".....">垃圾邮件智能识别</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">内容过滤/规则匹配</a></li>
                            <li><b class="tip"></b><a target="Conframe" href=".....">智能抗攻击</a></li>
                        </ul>
                    </li> -->
                    <span class="top-medu-bg-right">
                    </span>
                </ul>

            </div>
            <div class="top-nav">欢迎您，xxx！&nbsp;&nbsp;<a href="#">修改密码</a> | <a href="login.html">安全退出</a></div>
        </div>
        <!--头部结束-->
        <!--左边菜单开始-->
        <div class="left_c left">
            <h1>系统操作菜单</h1>
            <div class="acc">
                <div>
                    <a class="one">业务运营管理</a>
                    <ul class="kid">
                        <li><b class="tip"></b><a target="Conframe" href=".....">用户管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">计费管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">收费管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">系统设置管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">区域管理</a></li>
                    </ul>
                </div>
                <div>
                    <a class="one">客户服务管理</a>
                    <ul class="kid">
                        <li><b class="tip"></b><a target="Conframe" href=".....">服务质量管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">客户反馈管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">客户满意度管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">服务销售机会管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">统计分析管理</a></li>
                    </ul>
                </div>
                <div>
                    <a class="one">综合办公管理</a>
                    <ul class="kid">
                        <li><b class="tip"></b><a target="Conframe" href=".....">文档管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">人员考核</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">会议管理</a></li>
                    </ul>
                </div>
                <div>
                    <a class="one">广域网管理</a>
                    <ul class="kid">
                        <li><b class="tip"></b><a target="Conframe" href=".....">系统设置与管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">性能保障管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">流量安全管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">安全组网管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">安全隔离管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">安全防护管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">集中管理</a></li>
                    </ul>
                </div>
                <div>
                    <a class="one">网站系统管理</a>
                    <ul class="kid">
                        <li><b class="tip"></b><a target="Conframe" href=".....">系统设置与管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">配置管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">安全管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">故障管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/authority.html">用户和权限管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">性能管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">系统日志管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">模板管理</a></li>
                    </ul>
                </div>
                <div>
                    <a class="one">邮件系统管理</a>
                    <ul class="kid">
                        <li><b class="tip"></b><a target="Conframe" href=".....">垃圾邮件智能识别</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">内容过滤/规则匹配</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">智能抗攻击</a></li>
                    </ul>
                </div>
                <div>
                    <a class="one">数据采集</a>
                    <ul class="kid">
                        <li><b class="tip"></b><a target="Conframe" href=".....">性能采集</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">告警采集</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">安全采集</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">配置采集</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">性能数据处理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">告警数据处理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">配置数据处理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">安全数据处理</a></li>
                    </ul>
                </div>
                <div>
                    <a class="one">协同调度</a>
                    <ul class="kid">
                        <li><b class="tip"></b><a target="Conframe" href=".....">事件管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">问题管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">资产管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">文档管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">发布管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">日常避嫌管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">资源管理</a></li>
                    </ul>
                </div>
                <div>
                    <a class="one">统一信息库</a>
                    <ul class="kid">
                        <li><b class="tip"></b><a target="Conframe" href=".....">工单数据</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">统计数据</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">性能数据</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">告警数据</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">资源数据</a></li>
                    </ul>
                </div>
                <div>
                    <a class="one">应用展示</a>
                    <ul class="kid">
                        <li><b class="tip"></b><a target="Conframe" href=".....">统一告警管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">服务管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">可用性管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">性能管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">资源拓扑管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/machine.jsp">资产管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">操作管理</a></li>
                        <li><b class="tip"></b><a target="Conframe" href=".....">安全与合规管理</a></li>
                    </ul>
                </div>
                <!-- <div id="datepicker"></div> -->
            </div>

        </div>
        <!--左边菜单结束-->
        <!--右边框架开始-->
        <div class="right_c">
            <div class="nav-tip" onclick="javascript:void(0)">&nbsp;</div>

        </div>
        <div class="Conframe">
            <iframe name="Conframe" id="Conframe"></iframe>
        </div>
        <!--右边框架结束-->

        <!--底部开始-->
        <div class="bottom_c">Copyright &copy;14级项目开发小组</div>
        <!--底部结束-->
    </div>
</body>
</html>
