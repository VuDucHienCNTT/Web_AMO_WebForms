<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ThongKeTruyCap.ascx.cs" Inherits="Web_AMO.UCcontrol.ThongKeTruyCap" %>
<style>
    #idthongke {
        float: right;
        border-left: 1px solid #BBBBBB;
        border-bottom: 1px solid #BBBBBB;
        width: 249px;
        height: auto;
        float: right;
        margin-top: 5px;
        clear: right;
    }

    .classthongke {
        width: 48%;
        height: 28px;
        font-size: 13px;
        font-weight: bold;
        line-height: 32px;
        background-image: url(Image/bg-title-h-left.png);
        float: left;
        color: black;
    }
</style>
<div id="idthongke">
    <div style="margin-bottom:10px;">
        <div class="classthongke" style="padding-left: 15px;">
            Thống kê truy cập
        </div>
        <img style="float: left; width:110px; height:28px;" src="Image/bg-title-h-right.png" />

    </div>
    <br />
    <div>
        <p style="margin-left: 30px; margin-top: 12px; font-size: 13px; color: #000000;">
            <img src="../Image/khach.png" />&nbsp;
            Đang online:
            <asp:Label ID="lblUsersOnline" Text="ol" runat="server"></asp:Label>
        </p>
        <p style="margin-left: 30px; margin-top: 8px; margin-bottom: 12px; font-size: 13px; color: #000000;">
            <img src="../Image/tongcong.png" />&nbsp;
            Tổng lượt truy cập:
            <asp:Label ID="lblUsersCount" Text="tc" runat="server"></asp:Label>
        </p>
    </div>
</div>
