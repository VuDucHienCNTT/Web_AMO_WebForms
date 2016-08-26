<%@ Page Title="Đăng nhập người dùng" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="Web_AMO.Presentation.DangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Default.css" rel="stylesheet" />
    <style>
        table {
            border-bottom: 1px solid #808080;
            border-right: 1px solid #808080;
            width: 360px;
            margin:auto;
        }

        td {
            border-top: 1px solid #808080;
            border-left: 1px solid #808080;
            font-size: 13px;
        }

        .txtdangnhap {
            height: 20px;
            width: 210px;
            margin-bottom: 3px;
            min-height: 20px;
        }

        .btndangnhap {
            width: 80px;
            height: 23px;
            margin-bottom: 3px;
            color: white;
            border: none;
            background-color: #0094ff;
        }

        .selectquyen {
            width: 100px;
            height: 22px;
        }
    </style>
    <%-- Enter thì sẽ DangNhap --%>
    <script type="text/javascript">
        function doClick(buttonName, e) {
            var key;
            if (window.event)
                key = window.event.keyCode; //IE
            else
                key = e.which;//firefox
            if (key == 13) {
                var btn = document.getElementById(buttonName);
                if (btn != null) {
                    btn.click();
                    event.keyCode = 0
                }
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="2" align="center" style="background: #66b3ff;padding: 6px;"><b>Đăng nhập người dùng</b></td>
        </tr>
        <tr>
           <td style="padding:6px;">Tên đăng nhập:</td>
            <td style="padding:6px;">
                <asp:TextBox runat="server" CssClass="txtdangnhap" ID="txttendn"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txttendn" Display="Dynamic" ErrorMessage="Vui lòng điền tên đăng nhập!" ForeColor="Red" SetFocusOnError="True" Font-Size="13px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="padding:6px;">Mật khẩu:</td>
            <td style="padding:6px;">
                <asp:TextBox runat="server" CssClass="txtdangnhap" TextMode="Password" ID="txtmatkhau"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmatkhau" Display="Dynamic" ErrorMessage="Vui lòng điền mật khẩu!" ForeColor="Red" SetFocusOnError="True" Font-Size="13px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="padding:6px;">Quyền hạn:</td>
            <td style="padding:6px;">
                <asp:DropDownList ID="ddlquyen" runat="server" Width="65px" Height="22px">
                    <asp:ListItem>User</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2"  style="padding:6px;" align="center">
                <asp:CheckBox ID="ckbghinho" Height="22px" runat="server" Text="  Ghi nhớ đăng nhập" />
                <br />
                <asp:Button Text="Đăng nhập" runat="server" CssClass="btndangnhap" ID="btnDangNhap" OnClick="btnDangNhap_Click" />
            </td>
        </tr>
    </table>
    <label style="margin-left: 290px; font-size: 13px;">Bạn chưa có tài khoản? <a href="/Dangky.aspx" style="color: #0094ff; font-size: 12px;">Đăng ký</a></label>
    <br />
    <br />
</asp:Content>
