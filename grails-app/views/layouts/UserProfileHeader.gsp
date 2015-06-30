<%--
  Created by IntelliJ IDEA.
  User: prashant
  Date: 22/6/15
  Time: 12:46 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:layoutTitle default="header"></g:layoutTitle></title>
    <link rel="stylesheet" href="${resource(dir:'css',file: 'bootstrap.min.css')}" >
    <script rel="script" src="${resource(dir: 'js', file: 'jquery-1.11.2.min.js')}"></script>
    <script rel="script"  src="${resource(dir: 'js',file: 'bootstrap.min.js')}"></script>
    <script rel="script" src="${resource(dir: 'js',file: 'linksharing.js')}"></script>

    <style type="text/css">
    img{
        height:25px;
        width:25px;
    }
    ul li {
        list-style-type: none;
        display: inline-block;
    }
    .modal-header, h4, .close {
        background-color: #5cb85c;
        color:white !important;
        text-align: center;
        font-size: 30px;
    }
    .modal-footer {
        background-color: #f9f9f9;
    }
    </style>
    <g:layoutHead/>
</head>
<body>

<nav class="nav navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <g:link class="navbar-brand" controller="dashboard" action="dashboard">LinkSharing</g:link>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <div class="navbar-form navbar-right">
                <ul class="navbar-form navbar-left">
                    <li>
                        <g:link controller="user" action="showUser">
                            <img src="${resource(dir:'images', file: 'businessman.jpg')}" />
                        </g:link>
                    </li>
                    <li style="color: #ffffff;"><g:link controller="user" action="showUser"><appTag:userFullName></appTag:userFullName></g:link></li>
                </ul>
                <div class="btn-group">
                    <button class="btn btn-mini dropdown-toggle" data-toggle="dropdown">
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><g:link controller="user" action="profile">Profile</g:link></li>
                        %{--<li><g:link controller="user" action="list">Users</g:link></li>
                        <li><g:link controller="topic" action="topicList">Topics</g:link></li>
                        <li><g:link controller="resource" action="viewPost">Posts</g:link></li>--}%
                        <li><g:link controller="login" action="logout">Logout</g:link></li>
                    </ul>
                </div>
            </div>

            <div class="navbar-form navbar-right">
                <g:form controller="search" action="search" >
                    <input class="form-control" type="search" id="search" name="query" value="${params.query}" placeholder="Search"  />
                    <g:submitButton name="search"></g:submitButton>
                </g:form>
            </div>
        </div>
    </div>
</nav>

<g:layoutBody/>

</body>
</html>