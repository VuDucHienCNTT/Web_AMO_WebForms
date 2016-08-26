<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TabContainer.ascx.cs" Inherits="Web_AMO.UCcontrol.TabContainer" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<style>
    .Tabcontrol{
        float:right;
    }
</style>
<asp:TabContainer ID="Tab" CssClass="Tabcontrol" runat="server" ActiveTabIndex="1" Width="249px">
    <asp:TabPanel runat="server" HeaderText="Hà Nội" ID="TabPanel1">
    </asp:TabPanel>
    <asp:TabPanel runat="server" HeaderText="Hồ Chí Minh" ID="TabPanel2">
    </asp:TabPanel>
     <asp:TabPanel runat="server" HeaderText="Nha Trang" ID="TabPanel3">
    </asp:TabPanel>
</asp:TabContainer>