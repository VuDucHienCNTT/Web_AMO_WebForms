<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="BanDo.aspx.cs" Inherits="Web_AMO.Presentation.BanDo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .tieude {
            height: 28px;
            font-size: 13px;
            font-weight: bold;
            line-height: 32px;
            background-image: url(Image/bg-title-h-left.png);
            float: left;
            width: 42%;
            color: black;
            padding-left: 20px;
        }
    </style>
    <div style="margin-bottom:5px">
    <div class="tieude">Bản đồ đường đi đến Đài Khí tượng Cao không</div>
        <img style="float: left;" src="Image/bg-title-h-right.png" />
        </div>
    <br />
    <p style="font-size:13px; margin:15px 0 15px 15px;">Đài Khí Tượng Cao Không, số 23 Ngõ 62, Nguyễn Chí Thanh	- Phường Láng Thượng - Quận Đống Đa - Hà Nội</p>
    <div style="margin-left:5px;" >
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.290458102596!2d105.80567611493247!3d21.02106098600254!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab67b04cf7cf%3A0x3d72266eef89042f!2zxJDDoGkgS2jDrSBUxrDhu6NuZyBDYW8gS2jDtG5n!5e0!3m2!1svi!2s!4v1449758904951" frameborder="0" style="border:1px solid #808080; border-radius:4px; width:732px; height:600px;" allowfullscreen></iframe>
    </div>
</asp:Content>
