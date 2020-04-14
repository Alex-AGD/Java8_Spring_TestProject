<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>


<@c.page>
    <title> Login page</title>

    ${message?ifExists}
    <@l.login "/login" false/>
</@c.page>
