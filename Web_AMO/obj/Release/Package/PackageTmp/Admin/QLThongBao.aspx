﻿<%@ Page Title="Quản lý thông báo" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="QLThongBao.aspx.cs" Inherits="Web_AMO.Admin.QLThongBao" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
        .tieude {
            text-align: center;
            font-weight: bold;
            font-size: 34px;
            font-family: 'Times New Roman';
            color: #065fb5;
            margin-top: 12px;
            margin-bottom: 10px;
        }
        /*côt label bên trái*/
        .auto-style2 {
            width: 110px;
            font-size: 13px;
            padding-left: 55px;
        }

        .txt {
            margin: 6px 6px 6px 0;
            height: 22px;
            width: 290px;
        }

        .txtmulti {
            margin: 6px 6px 6px 0;
            height: 50px;
            max-height: 70px;
            width: 290px;
            max-width: 290px;
            font-size: 13px;
            font-family: Tahoma;
        }

        .gridview {
            font-size: 13px;
            width: 1000px;
            margin-top: 10px;
        }
    </style>
    <%--Ẩn hiện--%>
    <script>
        $(document).ready(function () {
            $('#hidden').click(function () {
                var txt = $(this).text();
                $('#div').slideToggle("fast");

                if (txt == 'Hide') {
                    $(this).text('Show');
                }
                else {
                    $(this).text('Hide');
                }
            });
        });
    </script>
    <div class="tieude">QUẢN LÝ THÔNG BÁO</div>
    <a href="#" id="hidden">Hide</a>
    <div id="div">
        <asp:Label runat="server" ID="Lable11" Style="margin-left: 400px;"></asp:Label>
        <asp:Button ID="btnThemmoi" Style="background-color: #0094ff !important; color: white; border: none;" Text="Thêm mới" runat="server" Height="23" Width="80" OnClick="btnThemmoi_Click" />
        <asp:Button ID="btnSua" Style="background-color: #0094ff !important; color: white; border: none;" runat="server" Height="22" Width="80" Text="Sửa" OnClick="btnSua_Click" />
        <asp:Button ID="btnXoa" Style="background-color: #0094ff !important; color: white; border: none;" runat="server" Height="22" Width="80" Text="Xóa" OnClientClick="return confirm('Bạn có muốn xóa không?')" OnClick="btnXoa_Click" />
        <asp:Button ID="btnLammoi" Style="background-color: #0094ff !important; color: white; border: none;" runat="server" Height="22" Width="80" Text="Làm mới" OnClick="btnLammoi_Click" />

        <table cellpadding="0" cellspacing="0" style="margin-top: 5px;">
            <tr>
                <td class="auto-style2">
                    <asp:Label runat="server" Font-Size="13px" Text="ID thông báo "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtID" CssClass="txt" Placeholder="Tự động tăng" ReadOnly="true" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:Label runat="server" Font-Size="13px" Text="Trạng thái"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList runat="server" CssClass="txt" ID="ddlTrangthai" Height="23px" Width="295px">
                        <asp:ListItem Value="Có hiệu lực"></asp:ListItem>
                        <asp:ListItem Value="Không có hiệu lực "></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label runat="server" Font-Size="13px" Text="Tiêu đề thông báo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox runat="server" CssClass="txtmulti" TextMode="MultiLine" ID="txttieude"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:Label runat="server" Font-Size="13px" Text="Ngày thông báo "></asp:Label>
                </td>
                <td>
                    <asp:TextBox runat="server" CssClass="txt" TextMode="Date" ID="txtNgaythongbao" Width="130px"></asp:TextBox>
                    <asp:Label runat="server" ID="lblngaytb" Style="color: #808080; font-size: 13px;" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <p style="font-size: 13px; margin-top: 5px; margin-left: 55px; margin-bottom: 5px;">Nội dung thông báo:</p>
                    <CKEditor:CKEditorControl ID="ckNoiDung" runat="server" Width="998"></CKEditor:CKEditorControl>
                </td>
            </tr>
        </table>
    </div>

    <asp:GridView ID="grdviewThongBao" CssClass="gridview" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ShowHeaderWhenEmpty="True" AllowPaging="True" OnPageIndexChanging="grdviewThongBao_PageIndexChanging" OnSelectedIndexChanged="grdviewThongBao_SelectedIndexChanged" PageSize="20" OnRowDataBound="grdviewThongBao_RowDataBound">
        <Columns>

            <asp:BoundField DataField="IDTB" HeaderText="ID Tb">
                <HeaderStyle ForeColor="White" Height="25px" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="TIEUDETB" HeaderText="Tiêu đề thông báo">
                <HeaderStyle ForeColor="White" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="NOIDUNGTB" HeaderText="Nội dung thông báo">
                <HeaderStyle ForeColor="White" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="NGAYTB" HeaderText="Ngày thông báo">
                <HeaderStyle ForeColor="White" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="TRANGTHAI" HeaderText="Trạng thái">
                <HeaderStyle ForeColor="White" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>

            <asp:CommandField HeaderText="Chọn" ShowSelectButton="True">

                <HeaderStyle ForeColor="White" HorizontalAlign="Center" Width="60px" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:CommandField>

        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerSettings Position="TopAndBottom" />
        <PagerStyle BackColor="#FBFBEF" Font-Size="17px" Font-Underline="true" ForeColor="#003399" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#58ACFA" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:Label Style="color: #ff0000; font-size: 15px; margin-left: 450px;" ID="lblRecordRow" runat="server" Text="."></asp:Label>
</asp:Content>
