<%@ Page Title="Quản lý cán bộ" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="QLCanBo.aspx.cs" Inherits="Web_AMO.Presentation.Admin.QLCanBo" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="tieude">QUẢN LÝ CÁN BỘ</div>
    <a href="#" id="hidden">Hide</a>
    <div id="div">

        <table cellpadding="0" cellspacing="0" style="width: 1000px">
            <%--nút ấn--%>
            <tr>
                <td class="btn" colspan="4">
                    <asp:Button ID="btnThem" Style="background-color: #0094ff !important; color: white; border: none;" runat="server" Height="22px" Text="Thêm mới" Width="80px" OnClick="btnThem_Click" />

                    <asp:Button ID="btnSua" Style="background-color: #0094ff !important; color: white; border: none;" runat="server" Height="22px" Text="Sửa" Width="70px" OnClick="btnSua_Click" />

                    <asp:Button ID="btnXoa" Style="background-color: #0094ff !important; color: white; border: none;" runat="server" Height="22px" Text="Xóa" OnClientClick="return confirm('Bạn có muốn xóa không?')" Width="70px" OnClick="btnXoa_Click" />
                    <asp:Label ID="lblthongbao" runat="server" Font-Size="13px"></asp:Label>

                    <asp:Button runat="server" Style="background-color: #0094ff !important; color: white; border: none;" Height="22px" ID="btnlammoi" OnClick="btnlammoi_Click" Text="Load lại" Width="67px" />
                </td>
            </tr>


            <%--điền thông tin textbox--%>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="ID cán bộ:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtidcb" runat="server" Placeholder="Tự động tăng" ReadOnly="true" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Họ tên cán bộ:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txthotencb" CssClass="txt" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="txt" runat="server" ControlToValidate="txthotencb" Display="Dynamic" ErrorMessage="Vui lòng điền họ tên!" ForeColor="Red" SetFocusOnError="True" Font-Size="13px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label8" runat="server" Text="Ảnh đại diện:"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload CssClass="txt" runat="server" ID="UploadAnh" />
                    <br />
                </td>

                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Chức vụ:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtchucvu" CssClass="txt" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="txt" runat="server" ControlToValidate="txtchucvu" Display="Dynamic" ErrorMessage="Vui lòng điền chức vụ!" ForeColor="Red" SetFocusOnError="True" Font-Size="13px"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label7" runat="server" Text="Trình độ:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbangcap" CssClass="txt" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="txt" runat="server" ControlToValidate="txtbangcap" Display="Dynamic" ErrorMessage="Vui lòng điền bằng cấp!" ForeColor="Red" SetFocusOnError="True" Font-Size="13px"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtemail" CssClass="txt" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="txt" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Vui lòng điền email!" Font-Size="13px" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="txt" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Không đúng định dạng email!" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="13px"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>

                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Quê quán:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtquequan" CssClass="txt" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator CssClass="txt" ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtquequan" Display="Dynamic" ErrorMessage="Vui lòng điền quê quán!" ForeColor="Red" SetFocusOnError="True" Font-Size="13px"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label17" runat="server" Text="Ngày sinh:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtngaysinh" CssClass="txt" TextMode="Date" Style="width: 200px; margin-right: 0px;" runat="server"></asp:TextBox>
                    <asp:Label runat="server" ID="lblngaysinh" Style="font-size: 13px; color: #808080;"></asp:Label>
                    <br />
                    <%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="txt" runat="server" ControlToValidate="txtngaysinh" Display="Dynamic" ErrorMessage="Vui lòng điền ngày sinh!" ForeColor="Red" SetFocusOnError="True" Font-Size="13px"></asp:RequiredFieldValidator>--%>

                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Số điện thoại:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtsodienthoai" TextMode="Number" CssClass="txt" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator CssClass="txt" ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtsodienthoai" Display="Dynamic" ErrorMessage="Vui lòng điền số điện thoại!" ForeColor="Red" SetFocusOnError="True" Font-Size="13px"></asp:RequiredFieldValidator>
                    <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator2" CssClass="txt" runat="server" ControlToValidate="txtsodienthoai" Display="Dynamic" ErrorMessage="Sđt gồm 9 -&gt; 11 ký tự số!" ForeColor="Red" ValidationExpression=".{9,11}" SetFocusOnError="True" Font-Size="13px"></asp:RegularExpressionValidator>--%>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <p style="font-size: 13px; margin-top: 5px; margin-left: 20px; margin-bottom: 5px;">Thông tin chi tiết cán bộ:</p>
                    <CKEditor:CKEditorControl ID="CkThongtinchitiet" runat="server"></CKEditor:CKEditorControl>
                </td>
            </tr>
        </table>
    </div>

    <%--datagridview--%>
    <div>
        <asp:GridView class="grdview" ID="dgvDSCB" runat="server" BorderColor="#3366CC" AutoGenerateColumns="False" CellPadding="2" BackColor="White" OnSelectedIndexChanged="dgvDSCB_SelectedIndexChanged" ShowHeaderWhenEmpty="True" AllowPaging="True" PageSize="15" OnPageIndexChanging="dgvDSCB_PageIndexChanging1" OnRowDataBound="dgvDSCB_RowDataBound">
            <Columns>
                <asp:BoundField DataField="IDCB" HeaderText="IDCB">
                    <ControlStyle Height="20px" />
                    <HeaderStyle ForeColor="White" Font-Size="13px" />
                    <ItemStyle Height="20px" Width="60px" HorizontalAlign="Center" Font-Size="13px" CssClass="item" />
                </asp:BoundField>
                <asp:BoundField DataField="HOTEN" HeaderText="Họ tên cán bộ">
                    <HeaderStyle ForeColor="White" Font-Size="13px" Height="23px" />
                    <ItemStyle Font-Size="13px" HorizontalAlign="Center" CssClass="item" />
                </asp:BoundField>
                <asp:BoundField DataField="CHUCVU" HeaderText="Chức vụ">
                    <HeaderStyle ForeColor="White" Font-Size="13px" />
                    <ItemStyle Font-Size="13px" HorizontalAlign="Center" CssClass="item" />
                </asp:BoundField>
                <asp:BoundField DataField="BANGCAP" HeaderText="Bằng cấp">
                    <HeaderStyle ForeColor="White" />
                    <ItemStyle HorizontalAlign="Center" CssClass="item" />
                </asp:BoundField>
                <asp:BoundField DataField="EMAIL" HeaderText="Email">
                    <HeaderStyle ForeColor="White" Font-Size="13px" />
                    <ItemStyle Font-Size="13px" HorizontalAlign="Center" CssClass="item" />
                </asp:BoundField>
                <asp:BoundField DataField="QUEQUAN" HeaderText="Quê quán">
                    <HeaderStyle ForeColor="White" Font-Size="13px" />
                    <ItemStyle Font-Size="13px" HorizontalAlign="Center" CssClass="item" />
                </asp:BoundField>
                <asp:BoundField DataField="NGAYSINH" HeaderText="Ngày sinh">
                    <HeaderStyle ForeColor="White" Font-Size="13px" />
                    <ItemStyle Font-Size="13px" HorizontalAlign="Center" Width="90px" />
                </asp:BoundField>
                <asp:BoundField DataField="SODT" HeaderText="Số điện thoại">
                    <HeaderStyle ForeColor="White" />
                    <ItemStyle HorizontalAlign="Center" CssClass="item" />
                </asp:BoundField>

                <asp:BoundField DataField="DETAILCB" HeaderText="Chi tiết">
                    <HeaderStyle ForeColor="White" />
                    <ItemStyle HorizontalAlign="Center" CssClass="item" />
                </asp:BoundField>

                <asp:TemplateField HeaderText="Hình ảnh">
                    <ItemTemplate>
                        <asp:Image ID="img" CssClass="image" runat="server" ImageUrl='<%# Eval("ANHMOTA") %>' />
                    </ItemTemplate>
                    <HeaderStyle Font-Size="13px" ForeColor="White" />
                    <ItemStyle Font-Size="13px" CssClass="item" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:CommandField HeaderText="Chức năng" ShowSelectButton="True" ButtonType="Link" SelectText="Select">
                    <ControlStyle Font-Size="13px" />
                    <HeaderStyle ForeColor="White" Width="90px" Font-Size="13px" />
                    <ItemStyle Font-Strikeout="False" Font-Underline="False" CssClass="item" HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#0033CC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerSettings Position="TopAndBottom" />
            <PagerStyle BackColor="#FBFBEF" Font-Underline="true" Font-Size="13" ForeColor="#003399" HorizontalAlign="Center" Wrap="True" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#58ACFA" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:Label Style="color: #ff0000; font-size: 15px; margin-left: 450px;" ID="lblRecordRow" runat="server" Text="."></asp:Label>
    </div>
    <style>
        .tieude {
            text-align: center;
            font-weight: bold;
            font-size: 34px;
            font-family: 'Times New Roman';
            color: #065fb5;
            margin-top: 12px;
        }

        /*côt label bên trái*/
        .auto-style1 {
            width: 90px;
            font-size: 13px;
            padding-left: 20px;
        }

        .grdview {
            font-size: 13px;
            width: 100%;
            margin: auto;
            margin-top: 10px;
        }

        .txt {
            margin: 8px;
            width: 350px;
            height: 22px;
        }

        .btn {
            text-align: center;
            padding-bottom: 5px;
            padding-top: 5px;
        }

        .image {
            height: 50px;
            width: 55px;
            padding: 3px 0 0 0;
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
</asp:Content>
