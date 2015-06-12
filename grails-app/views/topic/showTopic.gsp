<%--
  Created by IntelliJ IDEA.
  User: prashant
  Date: 17/2/15
  Time: 5:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="${resource(dir:'css',file: 'bootstrap.min.css')}" >
    <link rel="stylesheet" href="${resource(dir: 'css',file: 'signin.css')}" >
    <link type="text/css" rel="stylesheet" href="${resource(dir:'css',file: 'header.css')}">
    <script rel="script" src="${resource(dir: 'js', file: 'jquery-1.11.2.min.js')}"></script>
    <script rel="script"  src="${resource(dir: 'js',file: 'bootstrap.min.js')}"></script>
    <style type="text/css">

    body {font-family: Helvetica,Arial; font-size:12px;}
    form label {display:inline-block ; width:100%;}
    #topic{margin:4% 0% 0% 2%; padding:0%;width:40%;height:auto;border:1px solid black;float: none;}
    #users{margin:2% 2% 0% 2%; padding:0%;width:40%;border:1px solid black;float: none;}
    #posts{margin:4% 2% 0% 2%; padding:0%;width:55%;float: right;clear: both; border:1px solid black;}
    .inner-container{margin:2%; padding:2%;text-align:left;}
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
        float:left;
        clear: both;
        margin-right: 1%;
        height:25px;
        width:25px;
    }
    ul{padding:0%;}
    ul li
    {
        margin: 0%;
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
            $(".sendInvitationDiv").click(function(){
                $(".sendInvitationModal").modal();
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
                        <li><g:link controller="user" action="editProfile">Profile</g:link></li>
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
                    <li><g:link controller="login" action="logout">Logout</g:link></li>
                </ul>
            </div>
        </div>
    </div>
</nav>
<div>
    <div id="posts" class="right">
        <div class="heading">Posts: ${subscribeTopic.name}</div>
        <g:render template='posts' model="${subscribeTopic}, ${resourcesList}"></g:render>
    </div>
</div>
<div>
     <div id="topic">
        <div class="heading">Topic: ${subscribeTopic.name}</div>
            <g:render template='topics' model="${subscribeTopic}, ${totalSubscribeTopic}, ${totalTopic}"></g:render>
     </div>
</div>

<div>
    <div id="users">
       <div class="heading">Users: ${subscribeTopic.name}</div>
            <g:render template='users' model="${subscribedUsers}, ${totalSubscribeUserTopic}, ${totalUserTopic}" ></g:render>
    </div>
</div>

%{--<g:render template="shareLink"></g:render>
<g:render template="shareDocument"></g:render>
<g:render template="sendInvitationMail"></g:render>--}%

</body>
</html>
