<#import "parts/common.ftl" as c>

<@c.page>
    <link href="css/portfolio.css" rel="stylesheet" />

    <section class="banner" id="sec">
        <header>
            <a href="/" class="logo">Logo </a>
            <div id="toggle" onclick=" toggle()"  > </div>
        </header>

        <div class="content">
            <h2> Hello World <br> <span> I'm Dalhapolau Aliaksei </span> </h2>
            <p>I like to study different programming such as Java, HTML, CSS in and various related frameworks and technologies.</p>
            <a href="#">Know More </a>
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

