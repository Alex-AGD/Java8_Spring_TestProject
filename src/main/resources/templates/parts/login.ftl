<#include "security.ftl">

<#macro login path isRegisterForm>

    <form action="${path}" method="post">


        <div class="container">
            <div class="d-flex justify-content-center h-100">
                <div class="card">
                    <div class="card-header">
                        <h3>Sign In</h3>
                        <div class="d-flex justify-content-end social_icon">
                            <span><i class="fab fa-facebook-square"></i></span>
                            <span><i class="fab fa-google-plus-square"></i></span>
                            <span><i class="fab fa-twitter-square"></i></span>
                        </div>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                </div>
                                <input type="text" name="username" class="form-control" placeholder="username">

                            </div>
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <input type="password" name="password" class="form-control" placeholder="password">
                            </div>
                            <div class="row align-items-center remember">
                                <input type="checkbox">Remember Me
                            </div>
                            <div class="form-group">
                                <input type="submit" class="btn float-right login_btn"
                                       <#if isRegisterForm>value="Create" <#else>value="Login"
                                        </#if>>

                            </div>
                        </form>
                    </div>
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                    <#if !isRegisterForm>
                    <div class="card-footer">
                        <div class="d-flex justify-content-center links">
                            Don't have an account?<a href="/registration">Sign Up</a>
                        </div>
                        </#if>
                        <div class="d-flex justify-content-center">
                            <a href="#">Forgot your password?</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <#--        <div class="form-group row">
                    <label class="col-sm-2 col-form-label">User Name :</label>
                    <div class="col-xs-10">
                        <input type="text" name="username" class="form-control" placeholder="User name"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Password:</label>
                    <div class="col-xs-10">
                        <input type="password" name="password" class="form-control" placeholder="Password"/>
                    </div>
                </div>

                    <div class="form-group">
                        <div class="col-xs-offset-2 col-xs-10">
                            <div class="checkbox">
                                <label><input type="checkbox"> Запомнить</label>
                            </div>
                        </div>
                    </div>

                <div class="form-group">
                    <div class="col-xs-offset-2 col-xs-10">
                    <input type="hidden" name="_csrf" value="${_csrf.token}" />

                        <div class="form-group">
                            <div class="col-xs-offset-2 col-xs-10">
                                <button class="btn btn-primary" type="submit"><#if isRegisterForm>Create<#else>Sign In</#if></button>
                            </div>
                        </div>

                    <#if !isRegisterForm><a href="/registration" class="btn btn-primary">Add new user</a></#if>
                    </div>
                </div>-->

    </form>
</#macro>


<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary" type="submit"><#if user??>Sign Out<#else>Login</#if></button>
    </form>
</#macro>