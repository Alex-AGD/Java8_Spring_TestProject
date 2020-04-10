<#include "common.ftl">
<#import "login.ftl" as l>
<#include "security.ftl">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="/">Main</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">

                <#if user??>
            <li class="nav-item">
                <a class="nav-link" href="/user/profile">My Profile</a>
                </#if>

        </ul>
      <li class="navbar-text mr-3"><#if user??>${name}<#else>Please, login</#if></li>

        <div class="dropdown  md-2 mr-2 mt-2 mt-lg-0 "  >

            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                User Info
            </button>



            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="/user/profile">Profile</a>
                <a class="dropdown-item" href="/user">User list</a>
            </div>

        </div>
        <@l.logout />
    </div>
</nav>