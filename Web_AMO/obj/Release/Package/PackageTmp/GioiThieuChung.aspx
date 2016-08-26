<%@ Page Title="Giới thiệu chung" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="GioiThieuChung.aspx.cs" Inherits="Web_AMO.Presentation.GioiThieuChung" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .tieude {
            width: 16%;
            height: 28px;
            line-height: 32px;
            font-weight: bold;
            background-image: url(Image/bg-title-h-left.png);
            float:left;
            font-size: 13px;
            color: black;
            padding-left: 20px;
        }

        .grdview {
            font-size: 13px;
            border-left: 1px solid #808080;
            margin-left: 5px;
            margin-right: 5px;
        }
        .img1 {
            height: auto;
            width: 740px;
        }
    </style>
    <div>
        <div class="tieude">Giới thiệu chung</div> 
        <img style="float:left;" src="Image/bg-title-h-right.png" />           
    </div>
    <br />
    <br />
    <img class="img1" src="Image/TheHTML-page-001.jpg" />
</asp:Content>


