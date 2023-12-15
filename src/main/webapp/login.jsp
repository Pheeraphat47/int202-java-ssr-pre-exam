<%--
  Created by IntelliJ IDEA.
  User: FIRST-ACER-Desktop
  Date: 12/15/2023
  Time: 3:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="dist/output.css">
</head>
<body>
<div class="hero min-h-screen bg-base-200">
    <div class="hero-content flex-col w-full max-w-lg">
        <div class="text-center lg:text-left">
            <h1 class="text-5xl font-bold">Login</h1>
        </div>
        <div class="card shrink-0 w-full shadow-2xl bg-base-100">
            <form class="card-body" method="post" action="057/login">
                <div class="form-control">
                    <label class="label" for="email">
                        <span class="label-text" id="email">Email</span>
                    </label>
                    <input type="email" placeholder="email" class="input input-bordered" name="email" required>
                </div>
                <div class="form-control">
                    <label class="label" for="password">
                        <span class="label-text" id="password">Password</span>
                    </label>
                    <input type="password" placeholder="password" class="input input-bordered" name="password" required/>

                </div>
                <div class="form-control mt-6">
                    <button class="btn btn-primary">Login</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
