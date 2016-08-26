<%@ Page Title="Quản lý thể loại" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="QLTheLoaiTin.aspx.cs" Inherits="Web_AMO.Admin.QLTheLoaiTin" %>

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

        table {
            width: 1000px;
        }

        .grdview {
            font-size: 13px;
            width: 1000px;
        }
    </style>
    <div class="tieude">QUẢN LÝ THỂ LOẠI TIN TỨC</div>

    <asp:GridView ID="gridviewTheloai" CssClass="grdview" runat="server" CellPadding="4" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" ShowFooter="True" OnRowDeleting="gridviewTheloai_RowDeleting" OnRowCancelingEdit="gridviewTheloai_RowCancelingEdit" OnRowEditing="gridviewTheloai_RowEditing" OnRowUpdating="gridviewTheloai_RowUpdating" ShowHeaderWhenEmpty="True">
        <Columns>
            <asp:TemplateField HeaderText="ID thể loại bài viết">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" ReadOnly="true" runat="server" Text='<%# Bind("IDTHELOAITIN") %>' Width="99%" Height="22px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("IDTHELOAITIN") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Height="25px" />
                <ItemStyle HorizontalAlign="Center" />
                <FooterTemplate>
                    <asp:TextBox ID="txtIDTheloai" runat="server" Width="99%" Height="22px" />
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tên thể loại bài viết">
                <EditItemTemplate>
                    <asp:TextBox ID="txtTenTheloai" runat="server" Text='<%# Bind("TENTHELOAITIN") %>' Width="99%" Height="22px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("TENTHELOAITIN") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
                <FooterTemplate>
                    <asp:TextBox ID="txtTenTheloai" runat="server" Width="99%" Height="22px" />
                </FooterTemplate>
            </asp:TemplateField>
            <asp:CommandField EditText="Sửa" HeaderText="Sửa" ShowEditButton="True">
                <HeaderStyle Width="150px" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:CommandField>
            <asp:TemplateField HeaderText="Xóa" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkbtnXoa" runat="server" ForeColor="#003399" CommandName="Delete" OnClientClick="return confirm('Bạn có chắc chắn muốn xóa không?');" Text="Xóa"></asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
                <FooterTemplate>
                    <asp:Button ID="btnThemmoi" runat="server" Text="Thêm mới" OnClick="btnThemmoi_Click" Width="100%" Height="24px" />
                </FooterTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
</asp:Content>
