﻿$(document).ready(function () {
    $("#menu ul li").hover(function () {
        $(this).find('ul:first').css({ visibility: "visible", display: "none" }).show(250);
    }, function () {
        $(this).find('ul:first').css({ visibility: "hidden" });
    });
});