<div class="inner-container">
    <g:hasErrors bean="${user}">
    <div>
        <g:renderErrors bean="${user}" as="list"/>
    </div>
    </g:hasErrors>
    <g:form controller="user" action="editProfile">
        <fieldset>
            <div class="line">
                <label for="firstName">First Name: </label>
                <g:textField name="firstName" value="${user?.firstName}" />

            </div>
            <div class="line">
                <label for="lastName">Last Name: </label>
                <g:textField name="lastName" value="${user?.lastName}"/>

            </div>
             <div class="line">
                 <label for="userName"> Username*: </label>
                 <input type="text" name="userName" id="${hasErrors(bean:user,field:'userName','errors')}" value="${user?.userName}"/>
             </div>
                <div class="line"><label for="image">Photo</label>
                <input type="file" id="image">
            </div>
            <div class="line">
                <g:submitButton name="submitButton" value="Update" />
            </div>
         </fieldset>
    </g:form>
</div>
