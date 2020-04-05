<#import "parts/common.ftl" as c>

<title> Main page</title>
<@c.page></@c.page>
<style type="text/css"></style>

<style>
    body {
        background: url(https://clipart-db.ru/file_content/rastr/background_065.jpg) repeat-x 0 100% fixed,
        linear-gradient(to top, #5080b1, #004e8c) fixed;
        animation: city 30s linear infinite;
        -webkit-animation: city 30s linear infinite;
    }
    @keyframes city {
        from { background-position: -1000px 100%, 0 0;}
        to { background-position: 0 100%, 0 0; }
    }
    @-webkit-keyframes city {
        from { background-position: -1000px 100%, 0 0;}
        to { background-position: 0 100%, 0 0; }
    }
    main {
        width: 80%;
        min-height: 800px;
        display: block;
        margin: auto;
        background: rgba(255,255,255,0.6);
        padding: 20px;
    }
</style>
