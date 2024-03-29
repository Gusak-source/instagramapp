<#include "security.ftl">
<#import "login-registration-logout.ftl" as p>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="/cool">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/cool">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/main">Messages</a>
                </li>
                <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link" href="/user">User List</a>
                </li>
                </#if>
                <#if user??>
                    <li class="nav-item">
                        <a class="nav-link" href="/user/profile">Profile</a>
                    </li>
                </#if>
                </ul>
            <div class="navbar-text m-3">${name}</div>
            <#if isAdmin>
            <@p.logout/>
            <#else>
            </#if>
        </div>
        </nav>