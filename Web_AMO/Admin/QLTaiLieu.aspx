<%@ Page Title="Quản lý tài liệu - công văn" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="QLTaiLieu.aspx.cs" Inherits="Web_AMO.Presentation.Admin.QLTaiLieu" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

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
            margin-bottom: 5px;
        }

        table {
            margin-left: 5px;
            margin: auto;
        }

        .auto-style1 {
            padding: 7px;
            font-size: 13px;
            padding-left: 50px;
        }

        .txt {
            margin: 7px 0 8px 20px;
        }

        .grdview {
            margin-top: 10px;
            font-size: 13px;
            border-left: 1px solid #808080;
            width: 100%;
        }
        .item{
            padding:5px;
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

    <div class="tieude">QUẢN LÝ CÔNG VĂN - TÀI LIỆU</div>
    <a href="#" id="hidden">Hide</a>
    <div id="div">
        <asp:Label runat="server" ID="Lable11" Style="margin-left: 400px;"></asp:Label>
        <asp:Button ID="btnAdd" Style="background-color: #0094ff !important; color: white; border: none;" Text="Upload tệp" runat="server" Height="23" Width="80" OnClick="btnAdd_Click" />
        <asp:Button ID="btnLammoi" Style="background-color: #0094ff !important; color: white; border: none;" runat="server" Height="22" Width="80" Text="Làm mới" OnClick="btnLammoi_Click" />

        <table cellpadding="0" cellspacing="0" style="width: 1000px;">
            <tr>
                <td class="auto-style1">
                    <asp:Label runat="server" Font-Size="13px" Text="ID tệp "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtID" CssClass="txt" ReadOnly="true" PlaceHolder="Tự động tăng" runat="server" Height="21px" Width="290px" />
                </td>

                <td class="auto-style1">
                    <asp:Label runat="server" Font-Size="13px" Text="Đường dẫn (Link) "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLink" CssClass="txt" TextMode="MultiLine" runat="server" Height="50px" Width="290px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label runat="server" Font-Size="13px" Text="Nhập tên  "></asp:Label>
                </td>
                <td>
                    <asp:TextBox runat="server" CssClass="txt" ID="txtTenFile" Height="21px" Width="290px"></asp:TextBox>
                </td>

                <td class="auto-style1">
                    <asp:Label runat="server" Font-Size="13px" Text="Ngày đăng  "></asp:Label>
                </td>
                <td>
                    <asp:TextBox runat="server" CssClass="txt" TextMode="Date" ID="txtNgaydang" Height="21px" Width="290px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>

    <asp:GridView CssClass="grdview" ID="grdTapTin" runat="server" AutoGenerateColumns="False" BorderColor="#3366CC" OnRowDeleting="grdTapTin_RowDeleting" AllowPaging="True" PageSize="15" OnPageIndexChanging="grdTapTin_PageIndexChanging" ShowHeaderWhenEmpty="True" OnRowDataBound="grdTapTin_RowDataBound">
        <Columns>
            <asp:TemplateField HeaderText="Stt">
                <ItemTemplate>
                    <asp:Label ID="lblSTT" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                </ItemTemplate>
                <HeaderStyle ForeColor="White" Height="25px" Font-Size="10" />
                <ItemStyle Width="40px" HorizontalAlign="Center" Font-Size="11" VerticalAlign="Middle"></ItemStyle>
            </asp:TemplateField>

            <asp:BoundField DataField="IDFILE" HeaderText="ID File">
                <HeaderStyle Font-Size="12px" Width="50px" ForeColor="White" Height="25px" />
                <ItemStyle HorizontalAlign="Center" CssClass="item" />
            </asp:BoundField>
            <asp:BoundField DataField="TENFILE" HeaderText="Tên tài liệu - công văn">
                <HeaderStyle Font-Size="12px" ForeColor="White" />
                <ItemStyle CssClass="item" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Ngày đăng" DataField="NGAYDANG" DataFormatString="{0:dd/MM/yyyy}">
                <HeaderStyle Width="90px" ForeColor="White" />
                <ItemStyle HorizontalAlign="Center" CssClass="item" />
            </asp:BoundField>
            <asp:BoundField DataField="LINK" HeaderText="Link" Visible="False"></asp:BoundField>
            <asp:TemplateField HeaderText="Xóa" >
                <ItemTemplate>
                    <asp:LinkButton Width="50px" runat="server" ForeColor="#003399" ID="LinkbtnXoa" CommandName="Delete" OnClientClick="return confirm('Bạn có chắc chắn muốn xóa không?');" Text="Xóa" />
                </ItemTemplate>
                <HeaderStyle ForeColor="White" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
        <HeaderStyle Font-Size="13px" BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerSettings Position="TopAndBottom" />
        <PagerStyle BackColor="#FBFBEF" Font-Size="17px" Font-Underline="true" ForeColor="#003399" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:Label Style="color: #ff0000; font-size: 15px; margin-left: 450px;" ID="lblRecordRow" runat="server" Text="."></asp:Label>
</asp:Content>
