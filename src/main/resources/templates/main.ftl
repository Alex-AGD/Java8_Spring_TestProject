<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">

<title> Main page</title>

<@c.page>

    <#if user??>  <h1 class="display-5"> Hello ${name}  have a good day :) </h1>

        <#else> <h6 class="display-5"> Hello ${name} Please login  </h6>
    </#if>

</@c.page>



