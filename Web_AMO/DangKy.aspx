<%@ Page Title="Đăng ký người dùng" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="Web_AMO.Presentation.DangKy" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 300px;
            padding: 6px;
        }

        .txtdangky {
            height: 22px;
            width: 90%;
            margin-bottom: 3px;
            font-size: 13px;
        }

        .btnlammoi {
            height: 22px;
            width: 75px;
            color: white;
            border: none;
            background-color: #0094ff;
        }

        .btndangky {
            width: 75px;
            height: 22px;
            color: white;
            border: none;
            background-color: #0094ff;
        }

        table {
            border-bottom: 1px solid #808080;
            border-right: 1px solid #808080;
            margin-top: 5px;
            margin: auto;
        }

        td {
            border-top: 1px solid #808080;
            border-left: 1px solid #808080;
            font-size: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../CSS/Default.css" rel="stylesheet" />
    <table cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="2" style="text-align: center; background: #66b3ff; padding: 6px;"><b>Đăng ký người dùng</b></td>
        </tr>
        <tr>
            <td style="padding: 6px;">Quyền hạn</td>
            <td class="auto-style1">
                <asp:DropDownList ID="ddlquyen" runat="server" Width="65px" Height="22px">
                    <asp:ListItem>User</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="padding: 6px;">Tên đăng nhập</td>
            <td class="auto-style1">
                <asp:TextBox CssClass="txtdangky" ID="txttendn" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txttendn" Display="Dynamic" ErrorMessage="Vui lòng điền tên đăng nhập!" ForeColor="Red" SetFocusOnError="True" Font-Size="13px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="padding: 6px;">Mật khẩu</td>
            <td class="auto-style1">
                <asp:TextBox CssClass="txtdangky" ID="txtmatkhau" TextMode="Password" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmatkhau" ErrorMessage="Vui lòng điền mật khẩu!" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="13px"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtmatkhau" Display="Dynamic" ErrorMessage="Nhiều hơn 10 ký tự" ForeColor="Red" SetFocusOnError="True" ValidationExpression=".{10,100}" Font-Size="13px"></asp:RegularExpressionValidator>

            </td>
        </tr>
        <tr>
            <td style="padding: 6px;">Nhập lại mật khẩu</td>
            <td class="auto-style1">
                <asp:TextBox CssClass="txtdangky" ID="txtlaimatkhau" TextMode="Password" runat="server"></asp:TextBox><br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtmatkhau" ControlToValidate="txtlaimatkhau" ErrorMessage="Mật khẩu không khớp!" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="13px"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtlaimatkhau" Display="Dynamic" ErrorMessage="Vui lòng điền lại mật khẩu!" ForeColor="Red" SetFocusOnError="True" Font-Size="13px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="padding: 6px;">Email</td>
            <td class="auto-style1">
                <asp:TextBox CssClass="txtdangky" ID="txtemail" runat="server"></asp:TextBox><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Không đúng định dạng email!" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="13px"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Vui lòng điền email!" ForeColor="Red" SetFocusOnError="True" Font-Size="13px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="padding: 6px;">Giới tính</td>
            <td class="auto-style1">
                <asp:DropDownList ID="ddlgioitinh" runat="server" Height="21px">
                    <asp:ListItem>Nam</asp:ListItem>
                    <asp:ListItem>Nữ</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="padding: 6px;">Ngày sinh</td>
            <td class="auto-style1">

                <asp:TextBox CssClass="txtdangky" ID="txtngaysinh" runat="server" Width="176px"></asp:TextBox><br />
                <asp:CalendarExtender TargetControlID="txtngaysinh" ID="cldngaysinh" Format="dd/MM/yyyy" runat="server"></asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtngaysinh" Display="Dynamic" ErrorMessage="Vui lòng điền ngày sinh!" ForeColor="Red" SetFocusOnError="True" Font-Size="13px"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtngaysinh" ErrorMessage="Không đúng định dạng ngày sinh!" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" Font-Size="13px"></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td style="padding: 6px;">Địa Chỉ</td>
            <td class="auto-style1">
                <asp:TextBox CssClass="txtdangky" ID="txtdiachi" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdiachi" Display="Dynamic" ErrorMessage="Vui lòng điền địa chỉ!" ForeColor="Red" SetFocusOnError="True" Font-Size="13px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="padding: 6px;">Số điện thoại</td>
            <td class="auto-style1">
                <asp:TextBox CssClass="txtdangky" TextMode="Number" ID="txtsdt" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Vui lòng điền số điện thoại!" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtsdt" Display="Dynamic" Font-Size="13px"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtsdt" Display="Dynamic" ErrorMessage="Sđt gồm 10 -&gt; 11 ký tự số!" ForeColor="Red" ValidationExpression=".{10,11}" SetFocusOnError="True" Font-Size="13px"></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td colspan="2" style="padding: 6px;" align="center">
                <asp:Button Text="Đăng ký" runat="server" CssClass="btndangky" ID="btnDangKy" OnClick="btnDangKy_Click" />
                <input type="reset" class="btnlammoi" value="Làm mới" />
                <br />
                <asp:Label ID="lblthongbao" runat="server" ForeColor="Red" Font-Size="13px"></asp:Label>
            </td>
        </tr>
    </table>
    <label style="margin-left: 290px; font-size: 13px;">Bạn đã có tài khoản? <a href="/DangNhap.aspx" style="color: #0094ff; font-size: 12px">Đăng nhập ngay</a></label>
    <br />
</asp:Content>
