<%@ Page Title="Thư viện ảnh" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Album.aspx.cs" Inherits="Web_AMO.Presentation.Album" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="JS/jquery-3.0.0.js"></script>
    <script src="JS/jquery-3.0.0.min.js"></script>
    <%--Hiệu ứng hiển thị ảnh popup--%>
    <script>
        $(function () {
            "use strict";
            $(".popup img").click(function () {
                var $src = $(this).attr("src");
                $(".show").fadeIn();
                $(".img-show img").attr("src", $src);
            });

            $("span, .overlay").click(function () {
                $(".show").fadeOut();
            });

        });
    </script>
    <style>
        .tieude {
            height: 28px;
            line-height: 32px;
            font-weight: bold;
            background-image: url(Image/bg-title-h-left.png);
            float: left;
            font-size: 13px;
            color: black;
            padding-left: 20px;
        }

        .popup {
            width: 740px;
            margin: auto;
            text-align: center;
            margin-left: 5px;
        }

            .popup img {
                width: 88px;
                height: 88px;
                cursor: pointer;
                margin: auto;
                float: left;
                -webkit-transform: scale(0.9); /*kích thước ảnh*/
                -moz-transform: scale(0.9);
                -o-transform: scale(0.9);
                -webkit-transition-duration: 0.5s;
                -moz-transition-duration: 0.5s;
                -o-transition-duration: 0.5s;
                opacity: 0.9; /*độ trong suốt of images*/
                margin: 0 2px 2px 0;
                border: 1px solid gray;
            }

                .popup img:hover {
                    -webkit-transform: scale(1.0);
                    -moz-transform: scale(1.0);
                    -o-transform: scale(1.0);
                    box-shadow: 0px 0px 30px gray;
                    -webkit-box-shadow: 0px 0px 10px gray;
                    -moz-box-shadow: 0px 0px 10px gray;
                    opacity: 1;
                }

        .show {
            display: none;
            z-index: 1000;
        }
            /*nền màu xám*/
            .show .overlay {
                width: 100%;
                height: 100%;
                background: rgba(0,0,0,.55);
                position: fixed;
                top: 0;
                left: 0;
            }

            .show .img-show {
                width: 55%;
                height: 85%;
                background: #FFF;
                position: fixed;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                overflow: hidden;
                border: 1px solid red;
                padding: 2px;
            }

        .img-show span {
            position: absolute;
            z-index: 1000;
            cursor: pointer;
            font-weight: bold;
        }

        .img-show img {
            width: 100%;
            height: 100%;
            position: absolute;
            top: auto;
            left: auto;
        }
    </style>
    <div>
        <div class="tieude" style="width: 230px;">Một số hình ảnh trong cơ quan</div>
        <img style="float: left;" src="Image/bg-title-h-right.png" />
    </div>
    <br />
    <br style="margin-bottom: 5px;" />
    <asp:Repeater ID="rptAlbumCoQuan" runat="server">
        <ItemTemplate>
            <div class="popup">
                <img src="/<%#Eval("HINHANH")%>" />
            </div>
        </ItemTemplate>
        <FooterTemplate>
            <div style="padding-left: 20px;">
                <asp:Label runat="server" Style=" font-size: 14px;" Visible='<%# DataBinder.Eval(Container.Parent, "Items.Count").ToString() == "0" %>'>Hình ảnh đang được cập nhật...
                </asp:Label>
            </div>
        </FooterTemplate>
    </asp:Repeater>

    <div style="padding: 10px 0; clear: both;"></div>
    <div>
        <div class="tieude" style="width: 90px;">Ảnh khác</div>
        <img style="float: left;" src="Image/bg-title-h-right.png" />
    </div>
    <br />
    <br style="margin-bottom: 5px;" />
    <asp:Repeater ID="rptAlbumKhac" runat="server">
        <ItemTemplate>
            <div class="popup">
                <img src="/<%#Eval("HINHANH")%>" />
            </div>
        </ItemTemplate>
        <FooterTemplate>
            <div style=" padding-left: 20px;">
                <asp:Label runat="server" Style=" font-size: 14px;" Visible='<%# DataBinder.Eval(Container.Parent, "Items.Count").ToString() == "0" %>'>Hình ảnh đang được cập nhật...
                </asp:Label>
            </div>
        </FooterTemplate>
    </asp:Repeater>
    <div class="show">
        <div class="overlay"></div>
        <div class="img-show">
            <span style="color: black; bottom: 5px; left: 10px;">X</span>
            <span style="color: white; top: 5px; right: 10px;">X</span>
            <img src="" />
        </div>
    </div>
</asp:Content>
