<#include "security.ftl">

<#macro login path isRegisterForm>

    <form action="${path}" method="post">

        <div class="intro">
            <div class="video">
                <video class="video_media" src="media/bgvideo.mp4" autoplay muted loop></video>
            </div>

            <div class="intro_content">

                <div class="container">
                    <div class="d-flex justify-content-center h-100">
                        <div class="card">
                            <div class="card-header">

                                <#if isRegisterForm> <h3>Create account</h3> <#else> <h3>Sing In</h3>
                                </#if>

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
                                        <input type="password" name="password" class="form-control"
                                               placeholder="password">
                                    </div>


                                    <#if isRegisterForm>
                                        <div class="input-group form-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-at"></i></span>
                                            </div>
                                            <input type="email" name="email" class="form-control" placeholder="email">
                                        </div>
                                    </#if>

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

</#macro>


<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary" type="submit"><#if user??>Sign Out<#else>Login</#if></button>
    </form>
</#macro>