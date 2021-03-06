<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">

<head>
    <title>课程</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/iconfont/font_1/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/iconfont/font_0/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <style>
    html,
    body {
        height: 100%;
    }

    body>.wrap-cc {
        min-height: 100%;
    }

    .content-cc {
        /* padding-bottom 等于 footer 的高度 */
        padding-bottom: 80px;
    }

    .footer-cc {
        width: 100%;
        height: 80px;
        /* margin-top 为 footer 高度的负值 */
        margin-top: -80px;
    }
    </style>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
    $(function() {
        $(".arrow").click(function() {
            $(this).parent().next().toggle();
        })

        $(".title-ul>li").on('click', function() {
            console.log($(this));
            $(this).addClass('current').siblings().removeClass("current");
            var panelId = "#" + $(this).attr("name");
            $(this).parent().siblings().css({
                'display': 'none'
            });
            $(panelId).css({
                'display': 'block'
            });

        })
    })
    </script>
</head>

<body>
    <div class="wrap-cc">
        <div class="content-cc">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <!--  <a class="navbar-brand" href="#">Brand</a> -->
                        <a href="front_index.html"><img src="images/com-logo1.png" alt="" width="120" style="margin-right: 20px;"></a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="#" class="vertical-middle">免费课程</a></li>
                            <li><a href="#" class="vertical-middle">职业路径</a></li>
                        </ul>
                        <form class="navbar-form navbar-left searchInput" style="padding:10px;">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="Search">
                            </div>
                            <button type="submit" class="btn btn-default "><span class="glyphicon glyphicon-search"></span></button>
                        </form>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle user-active" data-toggle="dropdown" role="button">
                            <img class="img-circle" src="images/user.jpeg" id="userImg">
                            <span class="caret"></span>
                        </a>
                                <ul class="dropdown-menu userinfo cc">
                                    <li>
                                        <img src="images/user.jpeg" class="img-circle" alt="">
                                        <div class="">
                                            <p>我叫细倩倩</p>
                                            <p>金币<span>236</span>&nbsp;积分 <span>0</span></p>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="front_mycourse.html">
                                    <i class="glyphicon glyphicon-edit"></i>我的课程
                                </a>
                                        <a href="front_record.html">
                                    <i class="glyphicon glyphicon-record"></i>积分记录
                                </a>
                                    </li>
                                    <li>
                                        <a href="#" data-toggle="modal" data-target="#userSet">
                                    <i class="glyphicon glyphicon-cog"></i>个人设置
                                </a>
                                        <a href="javascript:void(0);"><i class="glyphicon glyphicon-off"></i>退出登录</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container-fluid -->
            </nav>
            <div class="container-fluid banner">
                <div class="container banner-contain">
                    <div class="row">
                        <p> 课程&bsol;前端开发&bsol;前端工具&bsol;webpack深入与实战</p>
                    </div>
                    <div class="row">
                        <p>webpack深入与实战</p>
                    </div>
                    <div class="row">
                        <button class="btn    btn-success  col-md-2">
                            继续学习 | &nbsp;&nbsp; <i class="glyphicon glyphicon-star-empty">  </i>
                        </button>
                        <ul class="col-md-5">
                            <li>点击量
                                <p> 45571 </p>
                            </li>
                            <li> 课程时长
                                <p>3小时21分</p>
                            </li>
                            <li> 综合评分
                                <p>9.7</p>
                            </li>
                        </ul>
                        <ul class="three-logo  col-md-4  col-md-offset-1 ">
                            <li>
                                <i class="icon iconfont icon-weixin"></i>
                            </li>
                            <li>
                                <i class="icon iconfont icon-weibo"></i>
                            </li>
                            <li>
                                <i class="icon iconfont icon-qq"></i>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <div class="desp">简介：随着模块化开发的普及，webpack 已经越来越成为一个前端项目的标配，本课程介绍了如何在项目中使用 webpack 打包文件，处理各种资源，以及配置开发环境，上线环境等，通过实际的例子来讲解 webpack 的使用方法，带你探索 webpack 强大的功能。</div>
                        <ul class="title-ul">
                            <li class="current" name="chapter">章节</li>
                            <li name="comment">评价</li>
                        </ul>
                        <ul class="course-content margin-bottom-90" id="chapter">
                            <li>
                                <div class="row">
                                    <div class="col-md-12 course-title">
                                        <i class="icon  i-round iconfont icon-weibiaoti-"></i> 第1章 <span> webpack基本介绍 </span>
                                        <i class="glyphicon glyphicon-triangle-bottom pull-right arrow"></i>
                                    </div>
                                    <ul class="lesson-title">
                                        <li class="col-md-11 col-md-offset-1 padding-10 ">
                                            <span class="glyphicon glyphicon-triangle-right icon-right"> </span>
                                            <a href="front_courseDetail.html"><span> 1-1 webpack 基本介绍 (07:03)</span></a>
                                        </li>
                                        <li class="col-md-11 col-md-offset-1 padding-10 ">
                                            <span class="glyphicon glyphicon-triangle-right icon-right"> </span>
                                            <a href="front_courseDetail.html"><span> 1-1 webpack 基本介绍 (07:03)</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <div class="row">
                                    <div class="col-md-12 course-title">
                                        <i class="icon  i-round iconfont icon-weibiaoti-"></i> 第1章 <span> webpack基本介绍 </span>
                                        <i class="glyphicon glyphicon-triangle-bottom pull-right arrow"></i>
                                    </div>
                                    <ul class="lesson-title">
                                        <li class="col-md-11 col-md-offset-1 padding-10 ">
                                            <span class="glyphicon glyphicon-triangle-right icon-right"> </span>
                                            <a href="front_courseDetail.html"><span> 1-1 webpack 基本介绍 (07:03)</span></a>
                                        </li>
                                        <li class="col-md-11 col-md-offset-1 padding-10 ">
                                            <span class="glyphicon glyphicon-triangle-right icon-right"> </span>
                                            <a href="front_courseDetail.html"><span> 1-1 webpack 基本介绍 (07:03)</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <div class="row">
                                    <div class="col-md-12 course-title">
                                        <i class="icon  i-round iconfont icon-weibiaoti-"></i> 第1章 <span> webpack基本介绍 </span>
                                        <i class="glyphicon glyphicon-triangle-bottom pull-right arrow"></i>
                                    </div>
                                    <ul class="lesson-title">
                                        <li class="col-md-11 col-md-offset-1 padding-10 ">
                                            <span class="glyphicon glyphicon-triangle-right icon-right"> </span>
                                            <a href="front_courseDetail.html"><span> 1-1 webpack 基本介绍 (07:03)</span></a>
                                        </li>
                                        <li class="col-md-11 col-md-offset-1 padding-10 ">
                                            <span class="glyphicon glyphicon-triangle-right icon-right"> </span>
                                            <a href="front_courseDetail.html"><span> 1-1 webpack 基本介绍 (07:03)</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                        <ul id="comment" class="margin-bottom-90">
                            <li>
                                <div class="row comment-area">
                                    <div class="col-md-1"><img src="images/user.jpeg" alt="" class="img-circle " width="35" height="35"></div>
                                    <div class="col-md-10 comment-info">
                                        <div class="col-md-12">user01</div>
                                        <div class="col-md-12">正在研究大数据分析，挺有用的</div>
                                        <div class="col-md-12">
                                            <div>
                                                时间：<span>22小时前</span>
                                            </div>
                                            <div>
                                                <span>举报</span>
                                                <span><i class="icon iconfont icon-zan"></i>12</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="row comment-area">
                                    <div class="col-md-1"><img src="images/user.jpeg" alt="" class="img-circle " width="35" height="35"></div>
                                    <div class="col-md-10 comment-info">
                                        <div class="col-md-12">user01</div>
                                        <div class="col-md-12">正在研究大数据分析，挺有用的</div>
                                        <div class="col-md-12">
                                            <div>
                                                时间：<span>22小时前</span>
                                            </div>
                                            <div>
                                                <span>举报</span>
                                                <span><i class="icon iconfont icon-zan"></i>12</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="load-more">
                                    <span onclick="alert('正在加载...');">加载更多...</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <div class="row teacher-msg">
                            <div class="col-md-12 course-title padding-30">推荐课程</div>
                        </div>
                        <div class="row  recommd-course">
                            <div class="col-md-4">
                                <img src="images/timg.jpg" alt="">
                            </div>
                            <div class="col-md-8">
                                <div><a href="front_course.html">Fiddler</a></div>
                                <div>Fiddler是非常犀利的web调试工具，本课程全面讲解了Fiddle了</div>
                            </div>
                        </div>
                        <div class="row  recommd-course">
                            <div class="col-md-4">
                                <img src="images/timg.jpg" alt="">
                            </div>
                            <div class="col-md-8">
                                <div><a href="front_course.html">Fiddler</a></div>
                                <div>Fiddler是非常犀利的web调试工具，本课程全面讲解了Fiddle了</div>
                            </div>
                        </div>
                        <div class="row  recommd-course">
                            <div class="col-md-4">
                                <img src="images/timg.jpg" alt="">
                            </div>
                            <div class="col-md-8">
                                <div><a href="front_course.html">Fiddler</a></div>
                                <div>Fiddler是非常犀利的web调试工具，本课程全面讲解了Fiddle了</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="userSet" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <h4 class="modal-title" id="myModalLabel">个人信息</h4>
                        </div>
                        <form action="#" class="form-horizontal" method="post">
                            <div class="modal-body">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">旧密码：</label>
                                    <div class="col-sm-6">
                                        <input class="form-control" type="text" name="password" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">新密码：</label>
                                    <div class="col-sm-6">
                                        <input class="form-control" type="password" name="newPassword" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">确认密码：</label>
                                    <div class="col-sm-6">
                                        <input class="form-control" type="password" name="rePassword" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">昵称：</label>
                                    <div class="col-sm-6">
                                        <input class="form-control" type="text" name="nickname" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">邮箱：</label>
                                    <div class="col-sm-6">
                                        <input class="form-control" type="text" name="email" />
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-info" data-dismiss="modal" aria-label="Close">关&nbsp;&nbsp;闭</button>
                                <button type="reset" class="btn btn-info">重&nbsp;&nbsp;置</button>
                                <button type="submit" class="btn btn-info">确&nbsp;&nbsp;定</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-cc">
        <div class="footer">
            <div>
                版权所有： 南京网博
            </div>
            <div>
                Copyright © 2017 imooc.com All Rights Reserved | 京ICP备 13046642号-2
            </div>
        </div>
    </div>
</body>

</html>