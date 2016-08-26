<%@ Page Title="Quản lý tài khoản" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="QLTaiKhoan.aspx.cs" Inherits="Web_AMO.Presentation.Admin.TrangQuanTri" %>

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
            margin-bottom: 10px;
        }

        table {
            margin: auto;
            /*border-bottom: 1px solid #808080;
            border-right: 1px solid #808080;*/
            width: 700px;
        }

        .thongbao {
            font-size: 13px;
            color: red;
            float: right;
            margin-right: 5px;
        }

        .grdview {
            font-size: 13px;
            margin-top: 5px;
            width: 100%;
            border-left: 1px solid #808080;
        }
    </style>

    <div class="tieude">QUẢN LÝ TÀI KHOẢN</div>
    <%--gridview--%>
    <div>

        <asp:GridView class="grdview" ID="dgvTaiKhoan" runat="server" AutoGenerateColumns="False" CellPadding="4" OnSelectedIndexChanged="dgvTaiKhoan_SelectedIndexChanged" BorderColor="#3366CC" OnRowCancelingEdit="dgvTaiKhoan_RowCancelingEdit" OnRowDeleting="dgvTaiKhoan_RowDeleting" OnRowEditing="dgvTaiKhoan_RowEditing" OnRowUpdating="dgvTaiKhoan_RowUpdating" ShowHeaderWhenEmpty="True">
            <Columns>
                <asp:TemplateField HeaderText="IDTK">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" Height="<%# 20 %>" Text='<%# Bind("IDTAIKHOAN") %>' Width="<%# 25 %>"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("IDTAIKHOAN") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" />
                    <ItemStyle HorizontalAlign="Center" Width="35px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên đăng nhập">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Height="<%# 20 %>" Text='<%# Bind("TENDANGNHAP") %>' Width="<%# 110 %>"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("TENDANGNHAP") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterStyle Height="25px" />
                    <HeaderStyle ForeColor="White" Height="25px" />
                    <ItemStyle Height="25px" HorizontalAlign="Center" Width="120px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mật khẩu">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Height="<%# 20 %>" Text='<%# Bind("PASSWORD") %>' Width="<%# 75 %>"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("PASSWORD") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" />
                    <ItemStyle Height="25px" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quyền">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="<%# 23 %>" Width="<%# 60 %>" SelectedValue='<%# Bind("QUYEN")%>'>
                            <asp:ListItem>User</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("QUYEN") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" />
                    <ItemStyle HorizontalAlign="Center" Height="25px" Width="65px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Height="<%# 20 %>" Text='<%# Bind("EMAIL") %>' Width="<%# 140 %>"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("EMAIL") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" />
                    <ItemStyle HorizontalAlign="Center" Width="150px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Giới tính">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="<%# 23 %>" Width="<%# 54 %>" SelectedValue='<%# Bind("GIOITINH") %>'>
                            <asp:ListItem>Nam</asp:ListItem>
                            <asp:ListItem>Nữ</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("GIOITINH") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" Width="60px" />
                    <ItemStyle HorizontalAlign="Center" Width="55px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ngày sinh">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Height="<%# 20 %>" Text='<%# Bind("NGAYSINH") %>' Width="<%# 80 %>"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("NGAYSINH") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" />
                    <ItemStyle HorizontalAlign="Center" Width="90px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Địa chỉ">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Height="<%# 20 %>" Text='<%# Bind("DIACHI") %>' Width="<%# 100 %>"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("DIACHI") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Số điện thoại">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Height="<%# 20 %>" Text='<%#Bind("SODIENTHOAI") %>' TextMode="Number" Width="<%# 100 %>"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("SODIENTHOAI") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" />
                    <ItemStyle HorizontalAlign="Center" Width="110px" />
                </asp:TemplateField>

                <asp:CommandField ShowEditButton="True" HeaderText="Sửa" EditText="Sửa">
                    <HeaderStyle ForeColor="White" Font-Underline="False" />
                    <ItemStyle Font-Underline="False" HorizontalAlign="Center" />
                </asp:CommandField>

                <asp:TemplateField HeaderText="Xóa">
                    <ItemTemplate>
                        <asp:LinkButton runat="server" ForeColor="#003399" ID="LinkbtnXoa" CommandName="Delete" OnClientClick="return confirm('Bạn có chắc chắn muốn xóa không?');" Text="Xóa" />
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" />
                    <ItemStyle HorizontalAlign="Center" Width="40px" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#0033CC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
    </div>
</asp:Content>
