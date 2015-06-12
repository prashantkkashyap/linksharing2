${resourcesList.size()}
<g:each in="${resourcesList}" var="resourcesDescriptions">
<div class="inner-container">
        <div>
            <div>
                <img src="${resource(dir:'images', file: 'businessman.jpg')}"/>
            </div>
                <div>${resourcesDescriptions}</div>
                <ul>
                    <li><img src="${resource(dir: 'images',file:'facebook.jpg')}"></li>
                    <li><img src="${resource(dir:'images', file:'twitter.jpg')}"></li>
                    <li><img src="${resource(dir:'images', file:'gplus.png')}"></li>
                    <li class="navbar-form navbar-right"><g:link controller="resource" action="viewPost">View Post</g:link></li>
                    <li class="navbar-form navbar-right"><g:link>Mark as Read</g:link></li>
                    <li class="navbar-form navbar-right"><g:link>View full site</g:link></li>
                    <li class="navbar-form navbar-right"><g:link>Download</g:link></li>
                </ul>
        </div>
</div>
</g:each>

