<#include "security.ftl">

    <#macro login path isRegisterForm>

   <form action="${path}" method="post">
                    <div class="card">
                        <div class="card-header">
                            <#if isRegisterForm>
                                <h3>Create account</h3>
                            <#else>
                                <h3>Sing In</h3>
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

                                    <input type="text" name="username" class="form-control ${(passwordError??)?string('is-invalid', '')}" placeholder="username">
                                    <#if usernameError??>
                                        <div class="invalid-feedback">
                                            ${usernameError}
                                        </div>
                                    </#if>
                                </div>

                                <div class="input-group form-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-key"></i></span>
                                    </div>

                                    <input type="password" name="password" class="form-control ${(passwordError??)?string('is-invalid', '')}" placeholder="password">
                                    <#if passwordError??>
                                        <div class="invalid-feedback">
                                            ${passwordError}
                                        </div>
                                    </#if>
                                </div>

                                <#if isRegisterForm>
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                                        </div>
                                        <input type="password" name="password2" class="form-control ${(password2Error??)?string('is-invalid', '')}" placeholder=" Repeat password">
                                        <#if password2Error??>
                                            <div class="invalid-feedback">
                                                ${password2Error}
                                            </div>
                                        </#if>
                                    </div>
                                </#if>

                                <#if isRegisterForm>
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-at"></i></span>
                                        </div>
                                        <input type="email" name="email" class="form-control" placeholder="email">
                                    </div>
                                </#if>

                                <div class="row align-items-center remember">
                                    <#if isRegisterForm>
                                    <#else>
                                        <input type="checkbox">Remember Me
                                    </#if>
                                </div>

                                <#if Session?? && Session.SPRING_SECURITY_LAST_EXCEPTION??>
                                    <div class="alert alert-danger" role="alert">
                                        ${Session.SPRING_SECURITY_LAST_EXCEPTION.message}
                                    </div>
                                </#if>
                                <#if message??>
                                    <div class="alert alert-danger" role="alert">Неверные учетные данные пользователя</div>
                                    <#--<div class="alert alert-${messageType}" role="alert">-->
                                        ${message}
                                    </div>
                                </#if>

                                <#if isRegisterForm>
                                <div class="input-group form-group" >
                                    <div class="g-recaptcha сol-md-12" data-sitekey="6LfqHeoUAAAAAI-ux7Rgg8O6QhbIGQy4bvrzksI3">
                                        <#if captchaError??>
                                            <div class="alert alert-danger" role="alert">
                                                ${captchaError}
                                            </div>
                                        </#if>
                                    </div>
                                    </#if>

                                    <div class="form-group">
                                        <input type="submit" class="btn btn-outline-success  float-right"
                                               <#if isRegisterForm>value="Create"
                                               <#else>value="Login"
                                                </#if>>
                                    </div>

                                </div>
                            </form>

                            <input type="hidden" name="_csrf" value="${_csrf.token}" />
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

</form>




    </#macro>

    <#macro logout>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button class="btn btn-primary" type="submit">

                <#if user??>Sign Out
                    <#else>Login</#if>

        </form>
    </#macro>