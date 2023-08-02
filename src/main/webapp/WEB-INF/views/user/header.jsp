<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!doctype html>
<html lang="en">
<head>
    <base href="${pageContext.servletContext.contextPath}/" />
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1">
    <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" type="text/css" href="assets/css/main.css">
</head>
<body class="loaded">
    <div class="load-icon"></div>
    <div class="page-container">
        <!-- BEGIN HEADER -->
        <header class="header">
            <div class="header__main">
                <div class="header__cols">
                    <div class="header__left">
                        <div class="header__cols">
                            <div class="header__col">
                                <button class="mob-button js-mob-open">
                                    <span class="mob-button__icon"></span>
                                </button>
                            </div>
                            <div class="header__col">
                                <a class="logo" href="index">
                                    <img class="logo__image" src="assets/img/svg/logo.svg">
                                </a>
                            </div>
                            <div class="header__col header__col_hide-mob">
                                <nav class="header-nav">
                                    <ul class="header-nav__list">
                                        <li class="header-nav__item">
                                            <a class="header-nav__link" href="/shop">
                                                <s:message code="user.shop" />
                                            </a>
                                        </li>
                                        <li class="header-nav__item">
                                            <a class="header-nav__link">
                                                <s:message code="user.collections" />
                                            </a>
                                        </li>
                                        <li class="header-nav__item">
                                            <a class="header-nav__link">
                                                <s:message code="user.catalog" />
                                            </a>
                                        </li>
                                        <li class="header-nav__item">
                                            <a class="header-nav__link" href="/about">
                                                <s:message code="user.aboutus" />
                                            </a>
                                        </li>
                                        <li class="header-nav__item">
                                            <a class="header-nav__link" href="/contact">
                                                <s:message code="user.contact" />
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <div class="header__right">
                        <ul class="user-nav">
                            <li class="user-nav__item">
                                <a class="user-nav__link">
                                    <span class="user-nav__icon user-nav__icon_1"></span>
                                </a>
                            </li>
                            <li class="header-nav__item js-nav-item">
                                <a class="header-nav__link js-nav-button">
                                    <span class="user-nav__icon user-nav__icon_5"></span>
                                </a>
                                <div class="hide-nav js-nav-hide">
                                    <ul class="hide-nav__list">
                                        <c:if test="${empty isLogin}">
                                            <li class="hide-nav__item">
                                                <a class="hide-nav__link" href="/login">
                                                    <s:message code="user.login" />
                                                </a>
                                            </li>
                                            <li class="hide-nav__item">
                                                <a class="hide-nav__link" href="/register">
                                                    <s:message code="user.register" />
                                                </a>
                                            </li>
                                        </c:if>
                                        <c:if test="${not empty isAdmin}">
                                            <li class="hide-nav__item">
                                                <a class="hide-nav__link" href="/admin">
                                                    <s:message code="user.adminpanel" />
                                                </a>
                                            </li>
                                        </c:if>
                                        <c:if test="${not empty isLogin}">
                                            <li class="hide-nav__item">
                                                <a class="hide-nav__link" href="/profile">
                                                    <s:message code="user.profile" />
                                                </a>
                                            </li>
                                            <li class="hide-nav__item">
                                                <a class="hide-nav__link" href="/logout">
                                                    <s:message code="user.logout" />
                                                </a>
                                            </li>
                                        </c:if>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
        <!-- END HEADER -->
    </div>
    <script type="text/javascript" src="assets/js/main.js"></script>
</body>
</html>
