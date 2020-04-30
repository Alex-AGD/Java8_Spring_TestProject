<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">

<@c.page>
    <link href="css/portfolio.css" rel="stylesheet" xmlns="http://www.w3.org/1999/html"/>

    <section class="banner" id="sec">
        <header>
            <a href="/" class="logo">Logo </a>
            <div id="toggle" onclick=" toggle()"  > </div>
        </header>

        <div class="content">
            <h2 id="logName"> Hello ${name}<br></h2>
            <h2> Welcome on my site<br></h2>
            <#if user??>
            <#else><h4 id="glitch"> Please login and you can watch full content! <br></h4>
            </#if>

            <h2><span>I'm Dalhapolau Aliaksei</span></h2>
            <p>I like to study different programming such as Java, HTML, CSS in and various related frameworks and technologies.</p>
            <a href="/">Know More
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            </a>

        </div>
        <ul class="sci">
            <li> <a href="https://www.linkedin.com/in/alex-agd"> <img src="img/linkedin.png"> </a></li>
            <li> <a href="https://vk.com/kageoshi"> <img src="img/vk.png"> </a></li>
        </ul>
    </section>

    <div id="navigation">
        <ul>
            <li><a href="/" > Home </a></li>
            <li><a href="#" > About </a></li>
            <li><a href="#" > Services </a></li>
            <li><a href="https://www.linkedin.com/mwlite/in/alex-agd" > Contact </a></li>
        </ul>
    </div>

    <script type="text/javascript">
        function toggle()
        {
            var sec = document.getElementById('sec');
            var nav = document.getElementById('navigation');
            sec.classList.toggle('active')
            nav.classList.toggle('active')
        }
    </script>

</@c.page>

