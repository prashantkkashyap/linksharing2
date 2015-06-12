${unreadResources.size()}

<g:each in="${unreadResources}" var="unreadResource">

    <div class="inner-container" style="border:1px #000000 solid;">
        <div><img src="${resource(dir:'images', file: 'businessman.jpg')}"/></div>
             <div>${unreadResource.createdBy.userName}<div>
                 <g:link action="">@${unreadResource.createdBy.firstName}</g:link>
             </div>
            <div>${unreadResource.description}</div>

            <ul>
                <li><img src="${resource(dir: 'images',file:'facebook.jpg')}"></li>
                <li><img src="${resource(dir:'images', file:'twitter.jpg')}"></li>
                <li><img src="${resource(dir:'images', file:'gplus.png')}"></li>
                <li class="navbar-form navbar-right"><g:link>View Post</g:link></li>
                <li class="navbar-form navbar-right"><g:link>Mark as Read</g:link></li>
                <li class="navbar-form navbar-right"><g:link>View full site</g:link></li>
                <li class="navbar-form navbar-right"><g:link>Download</g:link></li>
            </ul>
        </div>
    </div>
</g:each>
