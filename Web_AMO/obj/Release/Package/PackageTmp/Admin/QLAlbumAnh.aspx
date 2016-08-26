<%@ Page Title="Quản lý album ảnh" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="QLAlbumAnh.aspx.cs" Inherits="Web_AMO.Admin.QLAlbumAnh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="tieude">QUẢN LÝ THƯ VIỆN ẢNH</div>
    <a href="#" id="hidden">Hide</a>
    <div id="div">
    <asp:Label runat="server" ID="Lable11" Style=" margin-left:400px;"></asp:Label>
    <asp:Button CssClass="btnUpload" Style="background-color: #0094ff !important; color: white; border: none;" Height="23" Width="80" ID="btnUploadAnh" runat="server" Text="Upload ảnh" OnClick="btnUploadAnh_Click" />
    <asp:Button ID="btnLoadLai" Style="background-color: #0094ff !important; color: white; border: none;" CssClass="btnLoadlai" runat="server" Height="23" Width="80" Text="Reload" OnClick="btnLoadLai_Click" />
    
        <table cellpadding="0" cellspacing="0">
            <tr>
                <td class="cotlable">Chọn ảnh </td>
                <td>
                    <asp:FileUpload ID="upTailieu" CssClass="txt" runat="server" /><br />
                </td>
            </tr>
            <tr>
                <td class="cotlable">Ảnh</td>
                <td>
                    <asp:DropDownList CssClass="txt" Style="height: 24px;" runat="server" ID="ddlAlbumanh">
                        <asp:ListItem>Cơ Quan</asp:ListItem>
                        <asp:ListItem>Khác</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="cotlable">Ngày upload</td>
                <td>
                    <asp:TextBox ID="txtngaydanganh" TextMode="Date" CssClass="txt" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>

    <asp:GridView ID="gridviewAlbumAnh" CssClass="gridview" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="0" OnRowDeleting="gridviewAlbumAnh_RowDeleting" ShowHeaderWhenEmpty="True" AllowPaging="True" OnPageIndexChanging="gridviewAlbumAnh_PageIndexChanging" PageSize="15" OnRowDataBound="gridviewAlbumAnh_RowDataBound">
        <Columns>
            <%-- Làm thêm cột thứ tự        --%>
            <asp:TemplateField HeaderText="Stt">
                <ItemTemplate>
                    <asp:Label ID="lblSTT" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                </ItemTemplate>
                <HeaderStyle ForeColor="White" Height="25px" Font-Size="10" />
                <ItemStyle Width="50px" HorizontalAlign="Center" Font-Size="11" VerticalAlign="Middle"></ItemStyle>
            </asp:TemplateField>

            <asp:BoundField DataField="IDANH" HeaderText="ID ảnh">
                <HeaderStyle Height="25" ForeColor="White" Font-Size="13px" />
                <ItemStyle Font-Size="13px" HorizontalAlign="Center" />
            </asp:BoundField>

            <asp:TemplateField HeaderText="Hình ảnh">
                <ItemTemplate>
                    <asp:Image ID="img" runat="server" ImageUrl='<%#"../"+Eval("HINHANH") %>' Style="padding: 5px 0" Height="60px" Width="75px" />
                </ItemTemplate>
                <HeaderStyle Height="25" Font-Size="13px" ForeColor="White" />
                <ItemStyle Font-Size="13px" HorizontalAlign="Center" />
            </asp:TemplateField>

            <asp:BoundField DataField="THUOC" HeaderText="Thuộc">
                <HeaderStyle ForeColor="White" Font-Size="13px" />
                <ItemStyle Font-Size="13px" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="NGAYDANG" HeaderText="Ngày upload"  DataFormatString="{0:dd/MM/yyyy}">
                <HeaderStyle ForeColor="White" Font-Size="13px" />
                <ItemStyle Font-Size="13px" HorizontalAlign="Center" />
            </asp:BoundField>

            <asp:TemplateField HeaderText="Xóa">
                <ItemTemplate>
                    <asp:LinkButton runat="server" ForeColor="#003399" ID="LinkbtnXoa" CommandName="Delete" OnClientClick="return confirm('Bạn có chắc chắn muốn xóa không?');" Text="Xóa" />
                </ItemTemplate>
                <HeaderStyle ForeColor="White" Font-Size="13px" />
                <ItemStyle HorizontalAlign="Center" Width="50px" Font-Size="13px" />
            </asp:TemplateField>

        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
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

        table {
            /*width: 400px;*/
            margin: auto;
        }

        .gridview {
            width: 1000px;
            margin-top: 10px;
        }
        .cotlable {
            padding: 6px;
            font-size: 13px;
            height: 25px;
        }

        .txt {
            height: 21px;
            width: 240px;
            margin-left:20px;
        }
    </style>
</asp:Content>
