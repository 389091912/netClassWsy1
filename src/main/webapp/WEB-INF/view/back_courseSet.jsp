<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh">

<head>
 
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>课程管理</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/back-index.css" />
    <script src="${pageContext.request.contextPath}/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-paginator.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-mypaginator.js"></script>
    <style>
    .file {
        position: relative;
        display: inline-block;
        background: #D0EEFF;
        border: 1px solid #99D3F5;
        border-radius: 4px;
        padding: 4px 12px;
        overflow: hidden;
        color: #1E88C7;
        text-decoration: none;
        text-indent: 0;
        line-height: 20px;
        width: 100%;
        text-align: center;
    }
    /*.file input {
        position: absolute;
        font-size: 100px;
        right: 0;
        top: 0;
        opacity: 0;
    }*/
    .file:hover {
        background: #AADFFD;
        border-color: #78C3F3;
        color: #004974;
        text-decoration: none;
    }
    .file:focus {
        background: #AADFFD;
        border-color: #78C3F3;
        color: #004974;
        text-decoration: none;
    }

    .img {
        /* max-width: 100px; */
        width: 100px;
        /* max-height: 120px; */
    }
    tr td {
        line-height: 120px !important;
    }

    </style>
    <script type="text/javascript">
        $(function(){
            // 课程管理 修改课程
            $(".doCourseModify").on("click", function() {
                $("#course-id-input").show();
                $(".file").html("选择文件");
                $("#cover-image").val(undefined);
                $(".modal-title").html("修改课程");
                $("#Course").modal("show");
            });
            $(".curse-btn").on("click", function() {
                $("#Course").modal("hide");
            });

            // 课程管理 添加课程
            $("#doCourse").on("click", function() {
                $("#course-id-input").hide();
                $(".file").html("选择文件");
                $("#cover-image").val(undefined);
                $(".modal-title").html("添加课程");
                $("#Course").modal("show");
            });

            //课程章节显示
            $(".course-detail").on("click", function() {
                $('#frame-id', window.parent.document).attr('src', 'back_courseReourceSet.html');
            });

            // 显示隐藏查询列表
            $('#show-course-search').click(function() {
                $('#show-course-search').hide();
                $('#upp-course-search').show();
                $('.show-course-search').slideDown(500);
            });
            $('#upp-course-search').click(function() {
                $('#show-course-search').show();
                $('#upp-course-search').hide();
                $('.show-course-search').slideUp(500);
            });

            //按钮的超链接设置函数
    //      myoptions.pageUrl = function(type, page, current) {
    //          return "${pageContext.request.contextPath }/findAll.do?pageNo="
    //                  + page;
    //      };
            //分页回调函数,点击按钮事件
            myoptions.onPageClicked = function(event, originalEvent, type, page) {
                //ajax回调接收数据成功时再重新初始化分页按钮
                console.log("pageNo=", page);
            };

            //分页,在bootstrap-mypaginator.js中
            myPaginatorFun("myPages", 1, 5);
        });

        function imageUpload(item){
            $(item).click();
        }
        function imageChange(item){
            var file = item.files[0];//获取选中的第一个文件
            $(".file").html(file.name);
            //console.log("file", file.name);
        }
    </script>

</head>

<body>
    <div class="panel panel-default" id="userPic">
        <div class="panel-heading">
            <h3 class="panel-title">课程管理</h3>
        </div>
        <div>
            <input type="button" value="添加课程" class="btn btn-primary" id="doCourse" style="margin: 5px 5px 5px 15px;" />
            <input type="button" value="查询" class="btn btn-success" id="doSearch" style="margin: 5px 5px 5px 0px;" />
            <input type="button" class="btn btn-primary" id="show-course-search" value="展开搜索" />
            <input type="button" value="收起搜索" class="btn btn-primary" id="upp-course-search" style="display: none;" />
        </div>
        <div class="panel-body">
            <div class="show-course-search" style="display: none;">
                <form class="form-horizontal">
                    <div class="form-group">
                        <div class="form-group col-xs-6">
                            <label for="author-name-search" class="col-xs-3 control-label">作者：</label>
                            <div class="col-xs-8">
                                <input type="text" class="form-control" id="author-name-search" placeholder="请输入作者" />
                            </div>
                        </div>
                        <div class="form-group col-xs-6">
                            <label for="course-name-search" class="col-xs-3 control-label">课程名称：</label>
                            <div class="col-xs-8">
                                <input type="text" class="form-control" id="course-name-search" placeholder="请输入课程名称" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-group col-xs-6">
                            <label for="course-status-search" class="col-xs-3 control-label">状态：</label>
                            <div class="col-xs-8">
                                <select class="form-control" id="course-status-search" name="course-status-search" >
                                    <option value="-1" >全部</option>
                                    <option value="0" >启用</option>
                                    <option value="1" >禁用</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group col-xs-6">
                            <label for="course-type-id-search" class="col-xs-3 control-label">课程类别：</label>
                            <div class="col-xs-8">
                                <select class="form-control" id="course-type-id-search" name="course_type_id-search" >
                                    <option value="-1" >全部</option>
                                    <option value="1" >java</option>
                                    <option value="2" >javascript</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-group col-xs-6">
                            <label class="col-xs-3 control-label">开始日期：</label>
                            <div class="col-xs-8">
                                <input type="text" class="form-control" placeholder="请输入开始时间:2017-10-10" />
                            </div>
                        </div>
                        <div class="form-group col-xs-6">
                            <label class="col-xs-3 control-label">结束日期：</label>
                            <div class="col-xs-8">
                                <input type="text" class="form-control" placeholder="请输入结束时间:2017-10-12" />
                            </div>
                        </div>
                    </div>
                    
                </form>
            </div>

            <div class="modal fade" tabindex="-1" id="Course">
                <!-- 窗口声明 -->
                <div class="modal-dialog modal-lg">
                    <!-- 内容声明 -->
                    <div class="modal-content">
                        <!-- 头部、主体、脚注 -->
                        <div class="modal-header">
                            <button class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">添加课程</h4>
                        </div>
                        <div class="modal-body text-center">
                            <div class="row text-right" id="course-id-input" style="display: none;" >
                                <label for="course-id" class="col-xs-4 control-label">课程编号：</label>
                                <div class="col-xs-4">
                                    <input type="text" class="form-control" id="course-id" name="course_id" readonly="true" />
                                </div>
                            </div>
                            <br>
                            <div class="row text-right">
                                <label for="course-name" class="col-xs-4 control-label">课程名称：</label>
                                <div class="col-xs-4">
                                    <input type="text" class="form-control" id="course-name" name="course_name" />
                                </div>
                            </div>
                            <br>
                            <div class="row text-right">
                                <label for="course-info" class="col-xs-4 control-label">课程简介：</label>
                                <div class="col-xs-4">
                                    <input type="text" class="form-control" id="course-info" name="course_info" />
                                </div>
                            </div>
                            <br>
                            <div class="row text-right">
                                <label for="course-author" class="col-xs-4 control-label">作者：</label>
                                <div class="col-xs-4">
                                    <input type="text" class="form-control" id="course-author" name="author" />
                                </div>
                            </div>
                            <br>
                            <div class="row text-right">
                                <label class="col-xs-4 control-label">封面图片：</label>
                                <div class="col-xs-4">
                                    <a href="javascript:imageUpload('#cover-image');" class="file" >选择文件</a>
                                    <input type="file" name="cover_image" style="display: none;" onchange="imageChange(this)" id="cover-image" />
                                </div>
                            </div>
                            <br>
                            <div class="row text-right">
                                <label for="recommendation-grade" class="col-xs-4 control-label">推荐等级：</label>
                                <div class="col-xs-4">
                                    <select class="form-control" id="recommendation-grade" name="recommendation_grade" >
                                        <option value="-1" >请选择</option>
                                        <option value="1" >普通</option>
                                        <option value="2" >推荐</option>
                                    </select>
                                </div>
                            </div>
                            <br>
                            <div class="row text-right">
                                <label for="course-type-id" class="col-xs-4 control-label">课程类别：</label>
                                <div class="col-xs-4">
                                    <select class="form-control" id="course-type-id" name="course_type_id" >
                                        <option value="-1" >请选择</option>
                                        <option value="1" >java</option>
                                        <option value="2" >javascript</option>
                                    </select>
                                </div>
                            </div>
                            <br>
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-primary curse-btn">确定</button>
                            <button class="btn btn-primary cancel" data-dismiss="modal">取消</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="show-list">
                <table class="table table-bordered table-hover" style="text-align: center;">
                    <thead>
                        <tr class="text-danger">
                            <th class="text-center">编号</th>
                            <th class="text-center">课程名称</th>
                            <th class="text-center">作者</th>
                            <th class="text-center">封面图片</th>
                            <th class="text-center">点击量</th>
                            <th class="text-center">推荐等级</th>
                            <th class="text-center">课程类别</th>
                            <th class="text-center">创建时间</th>
                            <th class="text-center">状态</th>
                            <th class="text-center">操作</th>
                        </tr>
                    </thead>
                    <tbody id="tb">
                        <tr>
                            <td>1</td>
                            <td>java基础</td>
                            <td>cc</td>
                            <td><image class="img" src="images/java-base.png" alter="no image" /></td>
                            <td>999</td>
                            <td>普通</td>
                            <td>java</td>
                            <td>2017-10-10 12:00:00</td>
                            <td>启用</td>
                            <td class="text-center">
                                <input type="button" class="btn btn-warning btn-sm doCourseModify" value="修改" />
                                <input type="button" class="btn btn-danger btn-sm" value="禁用" />
                                <input type="button" class="btn btn-success btn-sm course-detail" value="章节详情" />
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>javascript基础</td>
                            <td>cc</td>
                            <td><image class="img" src="images/javascript-base.png" alter="no image" /></td>
                            <td>999</td>
                            <td>普通</td>
                            <td>javascript</td>
                            <td>2017-10-10 12:00:00</td>
                            <td>禁用</td>
                            <td class="text-center">
                                <input type="button" class="btn btn-warning btn-sm doCourseModify" value="修改" />
                                <input type="button" class="btn btn-success btn-sm" value="启用" />
                                <input type="button" class="btn btn-success btn-sm course-detail" value="章节详情" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 分页 -->
            <div style="text-align: center;" >
                <ul id="myPages" ></ul>
            </div>

        </div>
    </div>
</body>

</html>
