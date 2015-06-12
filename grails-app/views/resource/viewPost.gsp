<%--
  Created by IntelliJ IDEA.
  User: prashant
  Date: 12/6/15
  Time: 2:08 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>View Post</title>
    <link rel="stylesheet" href="${resource(dir:'css',file: 'bootstrap.min.css')}" >
    <link rel="stylesheet" href="${resource(dir: 'css',file: 'signin.css')}" >
    <link type="text/css" rel="stylesheet" href="${resource(dir:'css',file: 'header.css')}">
    <script rel="script" src="${resource(dir: 'js', file: 'jquery-1.11.2.min.js')}"></script>
    <script rel="script"  src="${resource(dir: 'js',file: 'bootstrap.min.js')}"></script>
    <style type="text/css">

    body {font-family: Helvetica,Arial; font-size:12px;}
    form label {display:inline-block ; width:100%;}
    #users{margin:4% 2% 0% 2%; padding:0%;width:50%;border:1px solid black;}
    #trendingTopics{margin:4% 2% 0% 2%; padding:0%;width:45%;float: right;clear: both; border:1px solid black;}
    .inner-container{margin:2%; padding:2%;text-align:left}
    input[type="email"],input[type="password"]{width:160px;}
    form input[type="text"],
    form input[type="password"],
    form input[type="email"] {width:160px;}
    form .line{padding:1%}
    form .line.submit{tet-align:right;}
    .header-heading{font-size:32px;margin:0%;padding:0%;}
    .heading{font-size:16px;font-weight: bold;border: 1px solid #000000;background-color: #5cb85c;width: auto;height:6%;}
    .right {
        float: right;
        clear: both;
    }

    img{
        margin: 0%;
        height:25px;
        width:25px;
    }
    ul{padding:0%;}
    ul li
    {
        margin-right:0%;
        list-style-type: none;
        display: inline-block;
        padding-left: 15px;
    }

    </style>
    <script>
        $(document).ready(function(){
            $(".shareLinkModalDiv").click(function(){
                $(".shareLinkModal").modal();
            })
            $(".shareDocumentModalDiv").click(function(){
                $(".shareDocumentModal").modal();
            })
        });
    </script>
</head>
<body>
<nav class="nav navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">LinkSharing</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <div class="navbar-form navbar-right">
                <lable class="navbar-form navbar-left"><img src="${resource(dir:'images', file: 'businessman.jpg')}" />
                </lable>
                <div class="btn-group">
                    <button class="btn btn-mini dropdown-toggle" data-toggle="dropdown">
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><g:link controller="user" action="profile">Profile</g:link></li>
                        <li><g:link controller="login" action="logout">Logout</g:link></li>
                    </ul>
                </div>
            </div>

            <form class="navbar-form navbar-right">
                <div class="form-group">
                    <input class="form-control"  type="search" id="search" placeholder="Search"  />
                </div>
            </form>
            <div class="navbar-form navbar-right">
                <ul>
                    <li>
                        <a data-toggle="modal" title="Share Link" class="shareLinkModalDiv" href="javascript:">
                            <img src="${resource(dir:'images',file:'link.png')}"/>
                        </a>
                    </li>
                    <li>
                        <a data-toggle="modal" title="Share Document" class="shareDocumentModalDiv" href="javascript:">
                            <img src="${resource(dir:'images',file:'upload1.jpg')}"/>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>
<div>
    <div id="trendingTopics">
        <div class="heading">Trending Topics</div>
        <g:render template='trendingTopics'></g:render>
    </div>
</div>
<div>
<div>
    <div id="users">
        <g:render template='userInfo'></g:render>
    </div>
</div>

%{--<g:render template="shareLink"></g:render>
<g:render template="shareDocument"></g:render>--}%

</body>
</html>