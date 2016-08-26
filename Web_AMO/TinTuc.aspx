<%@ Page Title="Tin tức - sự kiện" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="TinTuc.aspx.cs" Inherits="Web_AMO.Presentation.TinTuc" %>

<%@ Register Src="~/UCcontrol/TinChinh.ascx" TagPrefix="uc1" TagName="TinChinh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:TinChinh runat="server" ID="TinChinh" />
</asp:Content>
