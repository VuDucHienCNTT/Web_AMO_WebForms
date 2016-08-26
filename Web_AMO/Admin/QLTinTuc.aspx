<%@ Page Title="Quản lý bài viết" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="QLTinTuc.aspx.cs" Inherits="Web_AMO.Presentation.Admin.QLTinTuc" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

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
        }

        .auto-style1 {
            width: 110px;
            font-size: 13px;
            padding: 15px 0;
            padding-left: 20px;
        }

        .grdview {
            font-size: 13px;
            width: 100%;
            margin-top: 10px;
        }

        .txt {
            height: 21px;
            width: 350px;
            max-width: 350px;
        }

        .txtmulti {
            height: 120px;
            max-height: 180px;
            max-width: 350px;
            width: 350px;
            font-size: 14px;
            font-family: Tahoma;
        }

        .image {
            height: 70px;
            width: 80px;
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


    <div class="tieude">QUẢN LÝ BÀI VIẾT</div>
    <a href="#" id="hidden">Hide</a>
    <div id="div">
        <table cellpadding="0" cellspacing="0" style="width: 1000px;">
            <%--nút nhấn--%>
            <tr>
                <td colspan="4" style="text-align: center; color: red; padding: 5px; padding-bottom: 15px;">
                    <asp:Button ID="btnDangbai" Style="background-color: #0094ff !important; color: white; border: none;" runat="server" Height="22px" Text="Đăng bài" Width="75px" OnClick="btnDangbai_Click" />

                    <asp:Button ID="btnSuabai" Style="background-color: #0094ff !important; color: white; border: none;" runat="server" Height="22px" Text="Sửa bài" Width="70px" OnClick="btnSuabai_Click" />

                    <asp:Button ID="btnXoabai" Style="background-color: #0094ff !important; color: white; border: none;" runat="server" Height="22px" Text="Xóa bài" Width="70px" OnClientClick="return confirm('Bạn có muốn xóa không?')" OnClick="btnXoabai_Click" />

                    <asp:Button ID="btnLammoi" Style="background-color: #0094ff !important; color: white; border: none;" runat="server" Height="22px" Text="Load lại" Width="70px" OnClick="btnLammoi_Click" />
                    <br />
                </td>
            </tr>

            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Id bài viết:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtid" runat="server" Placeholder="Tự động tăng" ReadOnly="true" CssClass="txt"></asp:TextBox>
                </td>

                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Thể loại bài viết:"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:DropDownList ID="ddltheloaitin" runat="server" Height="24px" CssClass="txt"></asp:DropDownList>
                </td>
            </tr>


            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Tiêu đề bài viết:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txttieude" runat="server" CssClass="txtmulti" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txttieude" Display="Dynamic" ErrorMessage="Không được để trống!" Font-Size="13px" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Tóm tắt bài viết:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txttomtat" runat="server" CssClass="txtmulti" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txttomtat" Display="Dynamic" ErrorMessage="Không được để trống!" Font-Size="13px" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Ảnh bài viết:"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload runat="server" CssClass="txt" Width="250px" ID="UploadAnh" />
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Ngày đăng bài :"></asp:Label>
                </td>
                <td style="font-size: 14px">
                    <asp:TextBox ID="txtngaydang" TextMode="Date" Style="width: 200px" runat="server" CssClass="txt"></asp:TextBox>
                    <asp:Label runat="server" ID="lblngaydang" Style="font-size: 13px; color: #808080;"></asp:Label>
                </td>

            </tr>

            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label7" runat="server" Text="Người đăng bài:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtnguoidang" CssClass="txt" runat="server">Ban biên tập</asp:TextBox>
                </td>

                <td class="auto-style1">
                    <asp:Label ID="label10" runat="server" Text="Tác giả bài viết:"></asp:Label>

                </td>
                <td style="font-size: 14px">
                    <asp:TextBox ID="txttacgia" runat="server" CssClass="txt"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txttacgia" Display="Dynamic" ErrorMessage="Không được để trống!" Font-Size="13px" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label8" runat="server" Text="Lượt xem:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtluotxem" CssClass="txt" ReadOnly="true" runat="server"></asp:TextBox>
                </td>

                <td></td>
                <td></td>
            </tr>



            <tr>
                <td colspan="4">
                    <p style="font-size: 13px; margin-top: 5px; margin-bottom: 5px; margin-left: 20px">Nội dung của bài viết:</p>
                    <CKEditor:CKEditorControl ID="ckNoidungbaiviet" runat="server"></CKEditor:CKEditorControl>
                </td>
            </tr>
        </table>
    </div>

    <%--datagridview--%>
    <div>
        <asp:GridView class="grdview" ID="dgvTinTuc" runat="server" BorderColor="#3366CC" AutoGenerateColumns="False" CellPadding="4" OnSelectedIndexChanged="dgvTinTuc_SelectedIndexChanged" ShowHeaderWhenEmpty="True" AllowPaging="True" OnPageIndexChanging="dgvTinTuc_PageIndexChanging" PageSize="15" OnRowDataBound="dgvTinTuc_RowDataBound">
            <Columns>
                <asp:BoundField DataField="IDTINTUC" HeaderText="Id Tt">
                    <HeaderStyle ForeColor="White" Width="40px" />
                    <ItemStyle  CssClass="item" />
                </asp:BoundField>
                <asp:BoundField DataField="IDTHELOAITIN" HeaderText="Id Tl">
                    <HeaderStyle ForeColor="White" Width="50px" />
                    <ItemStyle CssClass="item" />
                </asp:BoundField>
                <asp:BoundField DataField="TIEUDE" HeaderText="Tiêu đề bài viết">
                    <HeaderStyle ForeColor="White" />
                    <ItemStyle Width="200px" CssClass="item" />
                </asp:BoundField>
                <asp:BoundField DataField="TOMTAT" HeaderText="Tóm tắt bài viết">
                    <HeaderStyle ForeColor="White" Height="25px" />
                    <ItemStyle Height="25px" CssClass="item" />
                </asp:BoundField>
                <asp:BoundField DataField="NOIDUNG" HeaderText="Nội Dung">
                    <HeaderStyle ForeColor="White" />
                    <ItemStyle CssClass="item" />
                </asp:BoundField>

                <asp:TemplateField HeaderText="Ảnh bài viết">
                    <ItemTemplate>
                        <asp:Image ID="img" CssClass="image" runat="server" ImageUrl='<%#Eval("ANHDAIDIEN")%>' />
                    </ItemTemplate>
                    <HeaderStyle Font-Size="13px" Width="90px" ForeColor="White" />
                    <ItemStyle Font-Size="13px" HorizontalAlign="Center" />
                </asp:TemplateField>

                <asp:BoundField DataField="NGAYDANG" HeaderText="Ngày đăng">
                    <HeaderStyle ForeColor="White" />
                    <ItemStyle HorizontalAlign="Center" CssClass="item" Width="90px" />
                </asp:BoundField>
                <asp:BoundField DataField="TACGIA" HeaderText="Tác giả">
                    <HeaderStyle ForeColor="White" Width="90px" />
                    <ItemStyle CssClass="item" />
                </asp:BoundField>
                <asp:BoundField DataField="NGUOIDANG" HeaderText="Người đăng">
                    <HeaderStyle ForeColor="White" Width="90px" />
                    <ItemStyle CssClass="item" />
                </asp:BoundField>

                <asp:BoundField DataField="LUOTXEM" HeaderText="View">
                    <HeaderStyle ForeColor="White" Width="50px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

                <asp:CommandField HeaderText="Select" ShowSelectButton="True" SelectText="Select">
                    <ControlStyle Font-Size="13px" />
                    <HeaderStyle ForeColor="White" Width="60px" />
                    <ItemStyle Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#0033CC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerSettings Position="TopAndBottom" />
            <PagerStyle BackColor="#FBFBEF" Font-Size="13" Font-Underline="true" ForeColor="#003399" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#58ACFA" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:Label Style="color: #ff0000; font-size: 15px; margin-left: 450px;" ID="lblRecordRow" runat="server" Text="."></asp:Label>

    </div>
</asp:Content>
