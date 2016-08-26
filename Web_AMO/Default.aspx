<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web_AMO.Presentation.TrangChu" %>

<%@ Register Src="~/UCcontrol/Slide.ascx" TagPrefix="uc1" TagName="Slide" %>
<%@ Register Src="~/UCcontrol/TinTrangChu.ascx" TagPrefix="uc1" TagName="TinTrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <uc1:Slide runat="server" ID="Slide" />
    <uc1:TinTrangChu runat="server" ID="TinTrangChu" />
</asp:Content>
