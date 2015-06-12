<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Dashboard</title>
    <link rel="stylesheet" href="${resource(dir:'css',file: 'bootstrap.min.css')}" >
    <link rel="stylesheet" href="${resource(dir: 'css',file: 'signin.css')}" >
    <link type="text/css" rel="stylesheet" href="${resource(dir:'css',file: 'header.css')}">
    <script rel="script" src="${resource(dir: 'js', file: 'jquery-1.11.2.min.js')}"></script>
    <script rel="script"  src="${resource(dir: 'js',file: 'bootstrap.min.js')}"></script>

    <style type="text/css">
    body {font-family: Helvetica,Arial; font-size:12px;}

    #search{margin: 0%;padding: 0%;width:auto;vertical-align: middle;float: none;clear: both;}
    form label {display:inline-block ; width:100%;}
    #subscriptions{margin:2% 0% 0% 2%; padding:0%;width:35%;height:auto;border:1px solid black;}
    #trending-topics{margin:2% 0% 0% 2%; padding:0%;width:30%;height:auto;border:1px solid black;}
    #inbox{margin:2% 0% 0% 2%; padding:0%;width:60%;height:auto;border:1px solid black;
        float: right;clear:both;}
    #create-topic{margin:2% 0% 0% 2%; padding:0%;width:60%;height:auto;border:1px solid black;}
    #top-posts{margin:2%; padding:0%;width:60%;border:1px solid black;}
    #invite{clear:both;margin:2%; padding:0%;width:30%;border:1px solid black;alignment:top;}
    #register{margin:2%; padding:0%;width:25%;border:1px solid black}
    .inner-container{margin:2%; padding:2%;text-align:left;}
    input[type="email"],input[type="password"]{width:160px;}

    form input[type="text"],
    form input[type="password"],
    form input[type="email"] {width:160px;}
    form .line{padding:1%}
    form .line.submit{tet-align:right;}
    .heading{font-size:16px;font-weight: bold;border: 1px solid #000000;background-color: #5cb85c;width: auto;height:6%;}
    .right {
        float: right;
        }

    .userDiv{margin:2% 0% 0% 2%; padding:0%;width:35%;height:auto;border:1px solid black;}

    img{
        margin-right: 1%;
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
    <script>
        $(document).ready(function(){
           $(".sendInvitationMail").click(function(){
                $("#sendInvitationMailModal").modal();
            });
            $(".createTopicModalDiv").click(function(){
                $("#createTopicModal").modal();
            });
            $(".shareLinkModalDiv").click(function(){
                $("#shareLinkModal").modal();
            })
            $(".shareDocumentModalDiv").click(function(){
                $("#shareDocumentModal").modal();
            })
        });
    </script>
   %{-- <script type="text/javascript">
  function sendInvitationPopup(){window.open("/dashboard/sendInvitationPopup","_blank","width=600,height=600"); }
    </script>--}%
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
                        <li><g:link>Users</g:link></li>
                        <li><g:link controller="topic" action="showTopic">Topics</g:link></li>
                        <li><g:link controller="resource" action="viewPost">Posts</g:link></li>
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
                       <a data-toggle="modal" title="Create Topic" class="createTopicModalDiv" href="javascript:void(0)">
                           <img src="${resource(dir:'images',file:'topic.png')}"/>
                       </a>
                   </li>
                   <li>
                       <a data-toggle="modal" title="Send Invitation" class="sendInvitationMail" href="javascript:">
                           <img src="${resource(dir:'images',file:'email-letter-icon.jpg')}"/>
                       </a>
                   </li>
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
<div id="inbox" class="right">
    <div class="heading">Inbox</div>
    <g:render template="inbox" model="${unreadResources}"></g:render>
    %{--<g:render template='recentShares' collection="${top2}" var="top"/>--}%
</div>
<div class="userDiv">
        <g:render template="userInfo" model="${user},${userSubscription},${userTopic}"></g:render>
</div>
<div id="subscriptions">
    <div class="heading">Subscriptions<g:link class="navbar-form navbar-right" controller="resource" action="viewPost">View All</g:link></div>
       %{--<g:render template="subscriptions" collection="${totalSubscriptionUser}" var="totalSubscription"></g:render>--}%
       <g:render template="subscriptions" model="${totalSubscriptionUser}"></g:render>
</div>
   %{--  <div id="trending-topics">
        <div class="heading">Trending Topics</div>
        <div>
            <div>
                <img src="${resource(dir:'images', file: 'businessman.jpg')}"/>
            </div>
            <div>
                <ul>Grails</ul>
                <ul>@uday</ul>
                <ul>
                    <li>Subscriptions</li>
                    <li>Post</li>
                </ul>
                <ul>
                    <li>50</li>
                    <li>30</li>
                </ul>
            </div>
        </div>
         <div>
             <img src="${resource(dir:'images', file: 'businessman.jpg')}"/>
         </div>
            <div>
                <ul>Grails</ul>
                <ul>@uday</ul>
                <ul>
                    <li>Subscriptions</li>
                    <li>Post</li>
                </ul>
                <ul>
                    <li>50</li>
                    <li>30</li>
                </ul>
                <ul>
                    <li><select>
                        <option value="Very Serious">Very Serious</option>
                        <option value="Serious" >Serious</option>
                        <option value="Casual" >Casual</option>
                    </select>
                    </li>
                    <li><select>
                        <option value="Public">Public</option>
                        <option value="Private">Private</option>
                    </select>
                    </li>
                    <li><img src="${resource(dir:'images',file:'mail.png')}"/></li>
                    <li><img src="${resource(dir:'images',file:'file_download.jpg')}"/></li>
                    <li><img src="${resource(dir:'images',file:'delete.png')}"/></li>
                </ul>
            </div>
         </div>
    </div>--}%
   <g:render template="createTopic"></g:render>
   <g:render template="sendInvitationMail"></g:render>
   <g:render template="shareLink" ></g:render>
   <g:render template="shareDocument"></g:render>

</body>
</html>
