<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ThoiTiet.ascx.cs" Inherits="Web_AMO.Presentation.UCcontrol.ThoiTiet" %>
<style>
    #thoitiet {
        height: 120px;
        width: 249px;
        float: right;
        clear: right;
        margin-top: 10px;
        border-radius: 5px 5px 0px 0px;
        border-left: 0.5px solid #BBBBBB;
        border-bottom: 0.5px solid #BBBBBB;
        
    }

    .thoitiet {
        height: 28px;
        width: 100%;
        background: #3197d3;
        font-size: 13px;
        color: black;
        font-weight: bold;
        text-align: center;
        line-height: 28px;
        border-radius: 5px 5px 0px 0px;
    }

    .classthoitiet {
        margin-top: 15px;
        margin-left: 50px;
        height: 25px;
        width: 150px;
    }

    #imgtt {
        margin-top: 5px;
        height: 40px;
        width: 127px;
        margin-left: 62px;
    }
</style>
<div id="thoitiet">
    <div class="thoitiet">Thời tiết trong nước</div>
    <asp:DropDownList runat="server" ID="ddtthoitiet" CssClass="classthoitiet" OnSelectedIndexChanged="ddtthoitiet_SelectedIndexChanged" AutoPostBack="True">
        <asp:ListItem Value="http://banners.wunderground.com/banner/gizmotimetemp_both/language/www/global/stations/48820.gif">Hà Nội</asp:ListItem>
        <asp:ListItem Value="http://banners.wunderground.com/banner/gizmotimetemp_both/language/www/global/stations/48852.gif">Huế</asp:ListItem>
        <asp:ListItem Value="http://banners.wunderground.com/banner/gizmotimetemp_both/language/www/global/stations/48855.gif">Đà Nẵng</asp:ListItem>
        <asp:ListItem Value="http://banners.wunderground.com/weathersticker/gizmotimetemp_both/language/www/global/stations/48877.gif">Nha Trang</asp:ListItem>
        <asp:ListItem Value="http://banners.wunderground.com/banner/gizmotimetemp_both/language/www/global/stations/48900.gif">TP.Hồ Chí Minh</asp:ListItem>
    </asp:DropDownList>
    <div id="imgtt">
        <asp:Image runat="server" ID="ImageThoitiet" />
    </div>
</div>
