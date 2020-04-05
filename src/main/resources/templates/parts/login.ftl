<#macro login >
        <form action="/login" method="post">
            <div class="form-group row">
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <label class="col-sm-2 col-form-label">User Name :</label>
                <div class="col-sm-2">
                    <input type="text" name="username" class="form-control" placeholder="User name"/>
                </div>
            </div>
            <div class="form-group row">
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <label class="col-sm-2 col-form-label">Password:</label>
                <div class="col-sm-2">
                    <input type="password" name="password" class="form-control" placeholder="Password"/>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button class="btn btn-primary" type="submit">Sign In</button>
        </form>
</#macro>




<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary" type="submit"><#if user??>Sign Out<#else>Login</#if></button>
    </form>
</#macro>