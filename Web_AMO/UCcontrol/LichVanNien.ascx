<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LichVanNien.ascx.cs" Inherits="Web_AMO.UCcontrol.LichVanNien" %>
<style>
    #idlichnam {
        float: right;
        border-left: 1px solid #BBBBBB;
        border-bottom: 1px solid #BBBBBB;
        width: 249px;
        height: auto;
        float: right;
        clear: right;
        margin-bottom: 5px;
        margin-top: 10px;
    }

    .classlichnam {
        height: 28px;
        font-size: 13px;
        font-weight: bold;
        line-height: 32px;
        background-image: url(Image/bg-title-h-left.png);
        float: left;
        width: 28%;
        color: black;
    }
</style>

<div id="idlichnam">
    <div style="margin-bottom:10px;">
        <div class="classlichnam" style="padding-left: 15px;">
            Lịch năm
        </div>
        <img style="float: left;" src="Image/bg-title-h-right.png" />
    </div>
<br />
<div style="margin: 14px; padding: inherit;">
    <asp:Calendar ID="Calendar1" runat="server" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
        <OtherMonthDayStyle ForeColor="#CC9966" Font-Size="12pt" />
        <SelectedDayStyle BackColor="#CCCCFF" Font-Size="12pt" Font-Bold="True" />
        <SelectorStyle BackColor="#FFCC66" />
        <TitleStyle BackColor="#003399" Font-Bold="True" Font-Size="10pt" ForeColor="#FFFFCC" />
        <TodayDayStyle BackColor="#FFCC66" Font-Size="13pt" ForeColor="White" />
    </asp:Calendar>
</div>
</div>
