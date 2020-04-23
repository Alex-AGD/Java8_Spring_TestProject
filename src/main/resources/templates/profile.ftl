<#import "parts/common.ftl" as common>
<@common.page>

    <form method="post">
    <div class="text-center">
        <a class="user-avatar user-avatar-xl"><img src="img/logo.png" alt=""></a>
        <h2 class="h4 mt-2 mb-0"> ${fistName! ''} ${lastName! ''} </h2>
        <div class="my-1">
            <i class="fa fa-star has-text-black"></i>
            <i class="fa fa-star text-yellow"></i>
            <i class="fa fa-star text-yellow"></i>
            <i class="fa fa-star text-yellow"></i>
            <i class="fa fa-star text-yellow"></i>
        </div>
        <p class="text-muted"> Info about user </p>
        <p> Skills user </p>
    </div>

    <div class="col-lg-8-fluid">
        <div class="card card-fluid">
            <h6 class="card-header"> Account </h6>
            <div class="card-body">
                <form method="post">
                    <div class="form-row">
                        <div class="col-md-6 mb-3">
                            <label for="input01">First Name</label>
                            <input type="text" name="fistName" class="form-control" id="input01" value="${fistName! ''}" required="">
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="input02">Last Name</label>
                            <input type="text" name="lastName" class="form-control" id="input02" value="${lastName! ''}" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="input03">Email</label>
                        <input type="email" name="email" class="form-control" id="input03" placeholder="Enter your email" value="${email! ''}">
                    </div>
                    <div class="form-group">
                        <label for="input04">New Password</label>
                        <input type="password" name="password" placeholder="Password" class="form-control" id="input04">
                    </div>
                    <div class="form-group">
                        <label for="input05">Username</label>
                        <input type="text" class="form-control" id="input05" value="${username}" required="">
                    </div>
                    <hr>
                    <div class="form-actions mb-3">
                        <input type="hidden" name="_csrf" value="${_csrf.token}" />
                        <input type="password" class="form-control mr-3" id="input06" placeholder="Enter Current Password" required="">
                    </div>
                    <button type="submit" class="btn btn-primary text-nowrap ml-auto">Update Account</button>
                </form>
            </div>
        </div>
    </div>
</@common.page>