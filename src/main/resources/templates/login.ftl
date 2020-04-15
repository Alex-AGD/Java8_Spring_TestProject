<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>


<@c.page>
    <#if Session?? && Session.SPRING_SECURITY_LAST_EXCEPTION??>
        <div class="invalid-feedback">
            ${Session.SPRING_SECURITY_LAST_EXCEPTION.message}
        </div>
    </#if>
    <#if message??>
        <div class="invalid-feedback">
            ${message}
        </div>
    </#if>

    <@l.login "/login" false/>
</@c.page>
