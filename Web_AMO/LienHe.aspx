<%@ Page Title="Liên hệ" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="Web_AMO.LienHe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .tieude {
            width: 9%;
            height: 28px;
            line-height: 32px;
            font-weight: bold;
            background-image: url(Image/bg-title-h-left.png);
            float: left;
            font-size: 13px;
            color: black;
            padding-left: 20px;
        }

        .lbllienhe {
            font-size: 13px;
            margin-left: 40px;
            font-family: Arial;
        }

        .txtlienhe {
            font-size: 13px;
            width: 350px;
            height: 19px;
        }

        table {
            margin: auto;
            width: 680px;
            margin-bottom: 5px;
        }

        td {
            padding: 2px;
        }

        .auto-style1 {
            width: 200px;
        }

        .auto-style2 {
            width: 364px;
            height: 31px;
        }

        .txtcomments {
            height: 80px;
            max-height: 200px;
            width: 480px;
            max-width: 480px;
        }

        .btn {
            margin-top: 10px;
            border: none;
            background-color: #0094ff;
            color:white;
        }
    </style>
    <%--Ẩn hiện--%>
    <script>
        $(document).ready(function () {
            $('#hidden').click(function () {
                var txt = $(this).text();
                $('#div').slideToggle("fast");

                if (txt == 'Email') {
                    $(this).text('Email');
                }
                else {
                    $(this).text('Email');
                }
            });
        });
    </script>
    <div>
        <div class="tieude">Liên hệ</div>
        <img style="float: left;" src="Image/bg-title-h-right.png" />
    </div>
    <br />
    <br />

    <div style="line-height: 1.1">
        <p style="padding: 10px 10px 0px 10px; font-family: 'Arial'; font-size: 14px;">Liên hệ: Văn phòng, Đài Khí tượng cao không</p>
        <p style="padding: 0px 10px 0px 10px; font-family: 'Arial'; font-size: 14px;">Email: <a style="font-size: 14px; color: #0026ff" href="#">vanphongktck@amo.gov.vn</a>, Điện thoại: 043.8343.588 - 043.2595.250, Fax: (84-4) 38358902</p>
        <p style="padding: 0px 10px 0px 10px; font-family: 'Arial'; font-size: 14px;">Địa chỉ: Số 23, Ngõ 62, Nguyễn Chí Thanh, Láng Thượng, Đống Đa, Hà Nội <a style="color: #0026ff; font-size: 14px; text-decoration: underline;" href="BanDo.aspx" runat="server">Bản đồ</a></p>
    </div>
    <a href="#" id="hidden" style="text-decoration: underline; padding-left: 10px;">Email</a>
    <div id="div" style="display: none">
        <table cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="2" style="text-align: center;">
                    <asp:Label ID="lblthongbao" Font-Size="14px" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label class="lbllienhe" runat="server" Text="Họ tên của bạn*: "> </asp:Label>
                </td>
                <td>
                    <asp:TextBox class="txtlienhe" ID="txtNames" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNames" Display="Dynamic" ErrorMessage="Vui lòng điền họ tên!" ForeColor="Red" SetFocusOnError="True" Font-Size="13px"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style1">
                    <asp:Label class="lbllienhe" runat="server" Text="Email của bạn*:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox class="txtlienhe" ID="txtEmail" runat="server"></asp:TextBox><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Không đúng định dạng email!" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="13px"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Vui lòng điền email!" ForeColor="Red" SetFocusOnError="True" Font-Size="13px"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style1">
                    <asp:Label class="lbllienhe" runat="server" Text="Mật khẩu mail của bạn*:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox class="txtlienhe" ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Vui lòng điền mật khẩu!" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="13px"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style1">
                    <asp:Label class="lbllienhe" runat="server" Text="Nội dung của mail*:"></asp:Label>

                </td>
                <td>
                    <asp:TextBox CssClass="txtcomments" runat="server" Font-Size="14px" ID="txtComments" TextMode="MultiLine"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtComments" ErrorMessage="Vui lòng điền nội dung!" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="13px"></asp:RequiredFieldValidator>

                </td>
            </tr>

            <tr>
                <td class="auto-style1">
                    <asp:Label class="lbllienhe" runat="server" Text="Đính kèm: "></asp:Label>

                </td>
                <td>
                    <asp:FileUpload ID="upfile" runat="server" />
                </td>
            </tr>

            <tr>
                <td class="auto-style1"></td>
                <td style="margin-top: 20px;">
                    <asp:Button runat="server" CssClass="btn" Text="Gửi" ID="btnSubmit" OnClick="btnSubmit_Click" Height="21px" Width="55px" />
                    <input type="reset" value="Làm mới" style="height: 21px; width: 70px; border:none; color:white; background-color:#0094ff" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
