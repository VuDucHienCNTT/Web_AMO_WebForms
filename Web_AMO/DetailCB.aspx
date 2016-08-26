<%@ Page Title="Chi tiết cán bộ" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="DetailCB.aspx.cs" Inherits="Web_AMO.DetailCB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .tieude {
            width: 16%;
            height: 28px;
            line-height: 32px;
            font-weight: bold;
            font-size: 13px;
            color: black;
            background-image: url(Image/bg-title-h-left.png);
            float: left;
            padding-left: 20px;
        }
    </style>
    <div>
        <div class="tieude">
            Chi tiết Cán bộ
        </div>
        <img style="float:left" src="Image/bg-title-h-right.png" />
    </div>
    <br />
    <asp:Repeater ID="rptDetail1" runat="server">
        <ItemTemplate>
            <div style="clear: both;"></div>
            <img src="Admin/<%#Eval("ANHMOTA")%>" style="width: 145px; height: 180px; float: left; margin: 15px 20px 10px 15px; border: 1px solid #808080; padding: 1px;" />
            <div style="font-size: 22px; padding-left: 22px; font-family:'Segoe UI'; font-weight:bold; color: #09489f; margin-top: 15px;">
                <span><%# "Họ tên: "+" "+Eval("HOTEN") %></span><br />
            </div>
            <div style="line-height: 1.8; color: #191212; font-size: 14px;">
                <span><%#"Chức vụ: "+Eval("CHUCVU")+" "%></span><br />
                <span><%#"Trình độ: "+Eval("BANGCAP")+"" %></span><br />
                <span><%#"Email: "+Eval("EMAIL")+"" %></span><br />
                <span><%#"Quê quán: "+Eval("QUEQUAN")+""%></span><br />
                <span><%#"Ngày sinh: "+ DateTime.Parse(Eval("NGAYSINH").ToString()).ToString("dd/MM/yyyy")%></span><br />
                <span><%#"Tel: "+"0"+Eval("SODT")+"" %></span>
            </div>
            <br />
            <div style="clear: both;"></div>

            <div style="margin-left: 30px; margin-right: 10px;">
                <p style="font-family: 'Segoe UI'; color: #191212; font-size: 14px; font-weight: bold; padding-bottom: 7px;">Phụ trách công tác:</p>
                <span style="font-size: 13.5px; color: #191212; font-family: Tahoma; line-height: 1.8;"><%#Eval("DETAILCB") %></span>
            </div>
            <br />
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
