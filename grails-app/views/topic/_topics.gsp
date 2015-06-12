
<div class="inner-container">
    <div>
        <img src="${resource(dir:'images', file: 'businessman.jpg')}"/>
    </div>
    <div>
        <ul>
            <li>${subscribeTopic.name}</li>
            <li>(${subscribeTopic.visibility})</li>
            </ul>
        <div>@ ${subscribeTopic.createdBy.firstName} ${subscribeTopic.createdBy.lastName}</div>
        <ul>
            <li>Subscriptions</li>
            <li>Topics</li>
        </ul>
        <ul>
            <li>${totalSubscribeTopic}</li>
            <li>${totalTopic}</li>
        </ul>
        <ul>
            <li>
                <select class="right">
                    <option value="${com.Seriousness.SERIOUS}">Serious</option>
                    <option value="${com.Seriousness.VERY_SERIOUS}" >Very Serious</option>
                    <option value="${com.Seriousness.CASUAL}" >Casual</option>
                </select>
            </li>
            <li><a data-toggle="modal" title="Send Invitation" class="sendInvitationDiv" href="javascript:"><img src="${resource(dir: 'images', file:'mail.png')}" /></a></li>
        </ul>
    </div>
</div>