<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-23
  Time: 오후 2:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- header -->

<header>
    <style>


    </style>
    <!-- quick -->
    <ul id="quick">
        <li>
            <!-- Sitemap -->
            <input type="checkbox" id="chk">
            <label  for="chk" id="sitemenu">
                <span id="top"></span>
                <span id="middle"></span>
                <span id="bottom"></span>
            </label>
            <!-- BG -->
            <div id="bg"></div>
            <!-- 모달창 -->
            <div id="modal"></div>
        </li>




        <!-- Login  -->
        <li  id="loginicon">
            <i class="bi bi-person" style="font-size:2.5rem;"></i>
        </li>

        <!--
        <li><a href="#">Menu3</a></li>
        <li><a href="#">Menu4</a></li>
        -->
    </ul>

    <!-- login -->
    <div id="loginwin" class="p-3">
        <div style="text-align:center;"><i class="bi bi-person" style="font-size:5rem;"></i></div>
        <input placeholder="Insert ID" class="form-control "><br>
        <input placeholder="Insert PW" class="form-control ">
    </div>

</header>