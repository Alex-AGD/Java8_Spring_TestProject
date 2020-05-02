<#include "common.ftl">
<#import "loginV2.ftl" as l>
<#include "security.ftl">

<nav class="navbar navbar-expand-md navbar-dark bg-dark sticky-top">

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="container-fluid " style="width: 700px">
        <a href="/" class="navbar-brand"> <img src="img/logo.png" alt="Home"> </a>
            </div>

    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <ul class="navbar-nav mr-3">
                <li class="navbar-text ">
                    <#if user??>${name}
                    <#else>Please, login</#if>
                </li>

                <li class="nav-item">
                    <a href="#" class="nav-link">Главная</a>
                </li>

                <li class="nav-item">
                    <a href="#" class="nav-link">Контакты</a>

                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">Сервисы</a>
                </li>

                <#if user??>
                <li class="nav-item">
                    <a class="nav-link" href="/user/profile">My Profile</a>
                    </#if>
            </ul>
        </div>


        <div class="dropdown  md-2 mr-2 mt-2 mt-md-0 ">

            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                User Info
            </button>

            <div class="dropdown-menu mr-3" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="/user/profile">Profile</a>
                <a class="dropdown-item" href="/user">User list</a>
            </div>
        </div>


        <@l.logout />
    </div>
</nav>