<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="DetailTinTuc.aspx.cs" Inherits="Web_AMO.DetailTinTuc" %>

<%@ Register Src="~/UCcontrol/TinDocNhieuNhat.ascx" TagPrefix="uc1" TagName="TinDocNhieuNhat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="rptDetailTinTuc" runat="server">
        <ItemTemplate>
            <p style="margin-left: 10px; margin-top: 6px; font-family: 'Times New Roman'; font-weight: bold; color: #09489f; margin-bottom: 10px; font-size: 24px">
                <%#Eval("TIEUDE") %>
            </p>
            <span style="font-size: 13px; margin-left: 15px; color: #414955">Đăng bởi:</span>
            <span style="font-size: 13px; font-weight: bold; font-family:'Segoe UI'; color: #000000"><%#Eval("NGUOIDANG") %></span> | 
            <span style="font-size: 13px; color: #414955">Ngày đăng bài:</span>
            <span style="font-size: 13px; font-family: 'Segoe UI'; color: #000000"><%#DateTime.Parse(Eval("NGAYDANG").ToString()).ToString("dd/MM/yyyy") %></span> |
            <span style="font-size: 13px; color: #414955">Lượt xem: </span>
            <span style="font-size: 13px;  font-family: 'Segoe UI'; color: #000000"><%#Eval("LUOTXEM") %></span><br />

            <hr />

            <p style="margin: 10px 10px 10px 10px; font-family:Tahoma; color: #414955; float:left; font-weight: bold; line-height:1.5; font-size: 15px;">
               <span style="background-color:#66b3ff; padding:0 2px;">AMO</span> - <%#Eval("TOMTAT") %>
            </p>
            <p style="clear:both;">
                <h5 style="margin-left: 10px; margin-right:10px; font-size: 13px; line-height: 1.8; font-weight: normal; max-width: 720px;"><%#Eval("NOIDUNG") %></h5>
            </p>
            <br />
            <p style="text-align: right; margin-right: 15px; font-size: 16px; font-family: 'Times New Roman'; clear:both; font-weight: bold; color: #000000">
                <span style="color: #414955; font-weight: normal;">Nguồn:
                </span>
                <span>
                    <%#Eval("TACGIA")%>
                </span>
            </p>
            <img src="Image/the_end.png" style="margin-left: 225px; height: 14px; width: 280px; margin-bottom: 10px; margin-top: 5px;" />
        </ItemTemplate>
    </asp:Repeater>
    <uc1:TinDocNhieuNhat runat="server" id="TinDocNhieuNhat" />
</asp:Content>
