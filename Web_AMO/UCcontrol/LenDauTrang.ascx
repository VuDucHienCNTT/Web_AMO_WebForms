<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LenDauTrang.ascx.cs" Inherits="Web_AMO.Presentation.UCcontrol.LenDauTrang" %>
    <style>
        #div-toTop {
            bottom: 5px;
            right: 5px;
            cursor: pointer;
            position: fixed;
        }

        #img {
            display: block;
            height:37px;
            width:37px;
            margin: 0 5px 10px 0;
        }
    </style>
    <%--  --%>
        <script type="text/javascript" >

            $(function () {
                $(window).scroll(function () {
                    if ($(this).scrollTop() != 0) {
                        $('#div-toTop').fadeIn();
                    } else {
                        $('#div-toTop').fadeOut();
                    }
                });
                $('#div-toTop').click(function () {
                    $('body,html').animate({ scrollTop: 0 }, 500);
                });
            });


    </script>
    <div id="div-toTop" title="Đầu trang" style="display: block;">
       <img src="../../Image/scroll.png" id="img" />
    </div>