<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">


<@c.page>
    <title> Main page</title>

    <div class="intro">
    <div class="video">
        <video class="video_media" src="media/bgvideo.mp4" autoplay muted loop></video>
    </div>

    <div class="intro_content">
        <div class="container">
            <#if user??>  <h2 class="display-5"> Hello ${name} have a good day :) </h2>
            <#else> <h2 class="display-5"> Hello ${name} Please login </h2>
            </#if>

        </div>
    </div>
</div>





</@c.page>