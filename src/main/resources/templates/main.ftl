<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">


<@c.page>
    <title> Main page</title>

<#--сладер-->
    <div class="carousel slide data-ride=carousel" id="slides">

        <ul class="carousel-indicators">
            <li data-target="#slides" data-slide-to="0" class="active"></li>
            <li data-target="#slides" data-slide-to="1"></li>
            <li data-target="#slides" data-slide-to="2"></li>
        </ul>

        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="img/slider1.jpg">
            </div>

            <div class="carousel-caption">
                <h1 class="display-5"> Programming is</h1>
                <h3 class="display-5"> interesting</h3>
                <button type="button" class="btn btn-outline-light"> Посмотреть </button>
                <button type="button" class="btn btn-warning"> Демо сайта </button>
            </div>

            <div class="carousel-item">
                <img src="img/slider2.jpg">
            </div>

            <div class="carousel-item">
                <img src="img/slider3.jpg">
            </div>
        </div>
    </div>

<#--основной блок-->
    <div class="container-fluid" >
        <div class="row jumbotron">
            <div class="col-xs-12 col-sm-12 col-md-9 col-lg col-xl-10">
                <p class="lead">ust because the footer physically exists at the bottom of a website, doesn’t mean
                    that it’s useless. In the past, a website footer was a place for keyword stuffing before Google
                    eventually penalized the behavior.
                    Now, your website footer is a place to display important information that would otherwise clutter
                    up the rest of your website, and a place to repeat important information. Optimizing your website
                    footer design can actually lead to increases in conversions and revenue, so don’t neglect it. </p>
            </div>

                <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3 col-xl-2">
                    <a href="#"> <button class="btn btn-success btn-lg" type="button"> Читать далее </button> </a>
                </div>

    </div>
  </div>

<#--блок с хар-ками-->
    <div class="container-fluid">
        <div class="row text-center alert">
            <div class="col-12">
                <h1 class="display-4">Создание сайтов</h1>
            </div>
            <hr>
            <div class="col-12">
                <p class="lead">About the Author
                    Maddy Osman loves WordPress and writing. When she’s not busy helping to organize WordCamp Denver,
                    she shares her best content marketing/SEO tips on her blog, Blogsmith.</p>
            </div>

        </div>
    </div>

<#--блок с опис языков-->
    <div class="container-fluid padding">
        <div class="row text-center padding">
            <div class="col-xs-12 col-som-6 col-md-4">
                <i class="fas fa-code"> </i>
                <h3>HTML5</h3>
                <p>Crucial information shouldn’t be “hidden” in the footer because you think people may</p>
            </div>

            <div class="col-xs-12 col-som-6 col-md-4">
                <i class="fas fa-bold"> </i>
                <h3>Bootstrap</h3>
                <p>Crucial information shouldn’t be “hidden” in the footer because you think people may</p>
            </div>

            <div class="col-xs-12 col-som-6 col-md-4">
                <i class="fas fa-css3"> </i>
                <h3>CSS3</h3>
                <p>Crucial information shouldn’t be “hidden” in the footer because you think people may</p>
            </div>
            <hr class="my-4">
        </div>
    </div>



    <div class="intro_content">
        <div class="container">
            <#if user??>  <h2 class="display-5"> Hello ${name} have a good day :) </h2>
            <#else> <h2 class="display-5"> Hello ${name} Please login </h2>
            </#if>
        </div>
    </div>


</@c.page>