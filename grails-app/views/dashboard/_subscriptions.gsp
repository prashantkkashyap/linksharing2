<g:each in="${totalSubscriptionUser}" var="totalSubscription ">
    <div class="inner-container" style="border:1px #000000 solid;">
        <div>
            <img src="${resource(dir:'images', file: 'businessman.jpg')}"/>
        </div>
            <div id="subscriptionBorder" >
                <ul><g:link controller="topic" action="showTopic"  id="${totalSubscription.id}"> ${totalSubscription.name}</g:link></ul>
                <ul>${totalSubscription.createdBy.firstName}</ul>
                <ul>
                    <li>Subscriptions</li>
                    <li>Post</li>
                </ul>
                <ul>
                    <li>${totalSubscriptionUser.size()}</li>
                    <li>${totalSubscription.resources.size()}</li>
                </ul>
                <ul>
                    <li>
                        <div>
                            <select>
                            <option value="${com.Seriousness.VERY_SERIOUS}">Very Serious</option>
                            <option value="${com.Seriousness.SERIOUS}" >Serious</option>
                            <option value="${com.Seriousness.CASUAL}" >Casual</option>
                            </select>
                        </div>
                    </li>
                    <li>
                        <div class="line">
                            <select>
                                <option value="${com.Visibility.PUBLIC}">Public</option>
                                <option value="${com.Visibility.PRIVATE}">Private</option>
                                <option>Edit</option>
                                <option>Delete</option>
                            </select>
                            <lable for="visibility"></lable>
                        </div>
                    </li>
                    <li><a data-toggle="modal" class="sendInvitationMail" href="javascript:void(0)">
                        <img  src="${resource(dir:'images',file:'email-letter-icon.jpg')}"/></a>
                    </li>
                    <li>
                        <span data-toggle="modal" data-target="#sendInvitationPopup">
                            <img src="${resource(dir:'images',file:'download.jpg')}"/>
                        </span>
                    </li>
                    <li><img src="${resource(dir:'images',file:'delete.jpg')}"/>
                    </li>
                </ul>
            </div>
    </div>
</g:each>

