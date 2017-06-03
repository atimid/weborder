<%--
  Created by IntelliJ IDE
  User: yking
  Date: 17-5-12
  Time: 上午10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet"
          href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"/>
    <link href="/weborder/css/input.css" rel="stylesheet">
    <link href="/weborder/css/register.css" rel="stylesheet">
    <link href="/weborder/css/navbar.css" rel="stylesheet">
    <script
            src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>修改商品</title>
</head>
<body>
<div class="container">
    <nav class="navbar navbar-static-top main-navbar" id="top">
        <div class="container">
            <div class="navbar-header">
                <ul class="ulh nav navbar-nav">
                    <li><a href="/weborder/customer/classification.jsp">分类</a></li>
                    <li><a href="/weborder/customer/shopBasket.action">购物车</a></li>
                    <li><a href="/weborder/customer/order.action" target="_blank">我的订单</a></li>
                </ul>
            </div>
            <nav>
                <ul class=" ulh nav navbar-nav navbar-right">
                    <li><a href="/weborder/customer/update.action" target="_blank">我的信息</a>
                    </li>
                    <li><a href="/weborder/customer/exit.action">退出</a>
                    </li>
                </ul>
            </nav>
        </div>
    </nav>
    <label color="red"><s:actionerror/></label>
    <label color="red"><s:actionmessage/></label>
    <form class="form-register" action="/weborder/customer/register.action" method="post">
        <h2 class="form-register-heading">用户信息修改</h2>
        <label for="inputUsername" class="sr-only">用户名</label>
        <input type="text" id="inputUsername" class="form-control"
               value="${customer.id}" name="customer.id"
               placeholder="用户名" required readonly>

        <label for="inputPassword" class="sr-only">密码</label>
        <input type="password" id="inputPassword" class="form-control"
               value="${customer.csrPwd}" name="customer.csrPwd"
               placeholder="密码" required autofocus>

        <label for="inputName" class="sr-only">姓名</label>
        <input type="text" id="inputName" class="form-control"
               value="${customer.csrName}" name="customer.csrName"
               placeholder="姓名" required>

        <label for="inputSex" class="sr-only">性别</label>
        <input type="text" id="inputSex" class="form-control"
               value="${customer.csrSex}" name="customer.csrSex"
               placeholder="性别" required>

        <label for="inputTel" class="sr-only">联系电话</label>
        <input type="tel" id="inputTel" class="form-control"
               value="${customer.csrTel}" name="customer.csrTel"
               placeholder="联系电话" required>

        <label for="inputAddress" class="sr-only">联系地址</label>
        <input type="text" id="inputAddress" class="form-control"
               value="${customer.csrAddress}" name="customer.csrAddress"
               placeholder="联系地址" required>

        <button class="btn btn-lg btn-primary btn-block" type="submit">修改</button>
    </form>
    </form>
</div>
</body>
</html>
