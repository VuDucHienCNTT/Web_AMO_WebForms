<%@ Page Title="Chi tiết lịch làm việc" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="DetailLichLV.aspx.cs" Inherits="Web_AMO.DetailLichLV" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .tieude {
            width: 20%;
            height: 28px;
            line-height: 32px;
            font-weight: bold;
            background-image: url(Image/bg-title-h-left.png);
            float: left;
            font-size: 13px;
            color: black;
            padding-left: 20px;
        }
    </style>
    <div style="margin-bottom:10px;">
        <div class="tieude">
            Chi tiết lịch làm việc
        </div>
        <img style="float: left;" src="Image/bg-title-h-right.png" />

    </div>
    <br />
    <asp:Repeater ID="rptDetailLichLV" runat="server">
        <ItemTemplate>
            <p style="margin-left: 15px; margin-top: 6px; font-family: 'Segoe UI'; font-weight: bold; color: #0026ff; margin-bottom: 5px; font-size: 14px">
                <%#Eval("TIEUDE") %>
            </p>
            <p style="font-size: 13px; margin-left: 15px; margin-bottom: 10px;">Ngày đăng: <b><%#DateTime.Parse(Eval("NGAYDANG").ToString()).ToString("dd/MM/yyyy") %></b>, Lượt xem: <b><%#Eval("LUOTXEM") %></b>, Trạng thái: <b><%#Eval("TRANGTHAI") %></b></p>
            <div style="text-align: center;">
                <iframe src="<%#Eval("LINK") %>" width="720" height="630"></iframe>
            </div>
            <div style="margin: 15px 10px 0 30px;">
                <p style="font-family: 'Segoe UI'; color: #191212; font-size: 14px; font-weight: bold; padding-bottom: 7px;">Lời nhắc lịch:</p>
                <span style="font-size: 14px; color: #191212; font-family: Tahoma; line-height: 1.6;"><%#Eval("NHACLICH") %></span>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
