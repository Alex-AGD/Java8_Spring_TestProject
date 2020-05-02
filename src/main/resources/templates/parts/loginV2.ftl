
<#macro login path isRegisterForm>

<title> Login form</title>
<form action="${path}" method="post">

<section class="loginV2">
<div class="formLogin">
<#if isRegisterForm>
<h2>Create Account</h2>
<#else>
<h2>Login</h2>
</#if>

<div class="d-flex justify-content-end social_icon">
<span><i class="fab fa-facebook-f fa-1x"></i></span>
<span><i class="fab fa-google-plus-square fa-1x"></i></span>
<span><i class="fab fa-twitter-square fa-1x"></i></span>
<span><i class="fab fa-github fa-1x"></i></span>
</div>
<input type="hidden" name="_csrf" value="${_csrf.token}" />

<div class="input">
<div class="inputBox"> <label>UserName</label>
<input type="text" name="username" ${(loginerror??)?string('is-invalid', '')} placeholder="username">
</div>



<div class="inputBox"> <label>Password</label>
<input type="password" name="password" placeholder="password">
</div>


<#if isRegisterForm>
<div class="inputBox"> <label>Password</label>
<input type="password" name="password2" ${(password2Error??)?string('is-invalid', '')} placeholder=" Repeat password">
<#if password2Error??>
<div class="invalid-feedback">
${password2Error}
</div>
</#if>
</#if>


<#if isRegisterForm>
<div class="inputBox"> <label>Email</label>
<input type="email" name="email" placeholder="email">
</#if>
<#--</div>-->

<div class="inputBox">
<#if isRegisterForm>
<input type="submit" name="" value="Create account">
<#else>
<input type="submit" name="" value="Sign In">
</#if>
</div>



<#if !isRegisterForm>
<p class="createAcc">Don't have account? <a href="/registration">Create</a> </p>
</#if>


<p class="forgetPass">Forgot Password? <a href="#">Click Here</a> </p>


<#if isRegisterForm>
<div class="g-recaptcha" data-sitekey="6LfqHeoUAAAAAI-ux7Rgg8O6QhbIGQy4bvrzksI3" data-theme="dark">
<#if captchaError??>
<div class="alert alert-danger" role="alert">
${captchaError}
</#if>
</#if>
</div>
</div>
</div>
</div>
</div>


</div>
</section>
</#macro>


<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-primary" type="submit">
        <#if user??>Sign Out<#else>Login</#if>
        </button>
    </form>
</#macro>