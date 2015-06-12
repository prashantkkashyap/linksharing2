<div class="inner-container" style="border:1px #000000 solid;">
    <div>
        <img src="${resource(dir:'images', file: 'businessman.jpg')}"/>
    </div>
    <div id="subscriptionBorder">
        <form class="form-group">
            <g:textField name="updateTopic"></g:textField>
            <g:submitButton name="saveTopic" value="Save"> </g:submitButton>
        </form>
        <ul><g:link>topicName</g:link></ul>
        <ul>@FirstName</ul>
        <ul>
            <li>Subscriptions</li>
            <li>Post</li>
        </ul>
        <ul>
            <li>50</li>
            <li>30</li>
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
        </ul>
    </div>
</div>
