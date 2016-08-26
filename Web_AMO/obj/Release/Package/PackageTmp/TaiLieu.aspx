<%@ Page Title="Công văn - tài liệu" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="TaiLieu.aspx.cs" Inherits="Web_AMO.Presentation.TaiLieu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .tieude {
            width: 21%;
            height: 28px;
            line-height: 32px;
            font-weight: bold;
            background-image: url(Image/bg-title-h-left.png);
            float: left;
            font-size: 13px;
            color: black;
            padding-left: 20px;
        }

        .lblTimKiemTL {
            font-family: Tahoma;
            margin-left: 20px;
            color: #414955;
            font-size: 15px;
        }

        .grdview {
            font-size: 13px;
            border-left: 1px solid #808080;
            margin-right: 5px;
            width: 100%;
        }

        .linkXem {
            color: #054b98;
        }

            .linkXem:hover {
                color: #808080;
                text-decoration: underline;
            }

        .tenfile {
            padding: 5px;
        }
    </style>
    <div style="margin-bottom: 10px;">
        <div class="tieude">Công văn và tài liệu</div>
        <img style="float:left;" src="Image/bg-title-h-right.png" />           
    </div>
    <br />
    <asp:TextBox Style="height: 20px; width: 200px; margin-top: 10px;" Placeholder="Tìm kiếm tài liệu..." ID="txtSearch" title="Nhập tên tài liệu cần tìm" runat="server"></asp:TextBox>
    <asp:Button Style="height: 22px; width: 70px; border: none; background-color: #0094ff; color: white; margin-bottom: 10px;" ID="btnSearch" runat="server" title="Tìm kiếm" Text="Tìm kiếm" OnClick="btnSearch_Click" />
    <asp:Label ID="lblTimKiemTL" CssClass="lblTimKiemTL" runat="server"></asp:Label>

    <asp:GridView CssClass="grdview" ID="GridViewTaiLieu" runat="server" AutoGenerateColumns="False" BorderColor="#3366CC" OnPageIndexChanging="GridViewTaiLieu_PageIndexChanging" AllowPaging="True" PageSize="20" ShowHeaderWhenEmpty="True" OnRowDataBound="GridViewTaiLieu_RowDataBound">
        <Columns>
            <%-- Làm thêm cột thứ tự --%>
            <asp:TemplateField HeaderText="Stt">
                <ItemTemplate>
                    <asp:Label ID="lblSTT" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                </ItemTemplate>
                <HeaderStyle ForeColor="White" Height="25px" />
                <ItemStyle Width="50px" CssClass="item" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
            </asp:TemplateField>

            <asp:BoundField DataField="IDFILE" HeaderText="Id File" Visible="False">
                <HeaderStyle Font-Size="13px" ForeColor="White" Height="25px" />
                <ItemStyle HorizontalAlign="Center" Width="60px" />
            </asp:BoundField>
            <asp:BoundField DataField="TENFILE" HeaderText="Tên công văn - tài liệu">
                <HeaderStyle ForeColor="White" Height="25px" />
                <ItemStyle CssClass="tenfile" Width="450px" />
            </asp:BoundField>
            <asp:BoundField DataField="NGAYDANG" HeaderText="Ngày đăng" DataFormatString="{0:dd/MM/yyyy}">
                <HeaderStyle ForeColor="White" />
                <ItemStyle HorizontalAlign="Center" CssClass="item" Width="100" />
            </asp:BoundField>
            <asp:BoundField DataField="PATH" HeaderText="Đường dẫn" Visible="False">
                <HeaderStyle ForeColor="White" CssClass="item" Height="25px" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Chi tiết">
                <ItemTemplate>
                    <asp:LinkButton runat="server" Font-Size="10" CssClass="linkXem" target="_blank" ID="linkXem" Text="Xem chi tiết" href='<%#Eval("LINK") %>'></asp:LinkButton>
                </ItemTemplate>
                <HeaderStyle ForeColor="White" Height="25px" />
                <ItemStyle HorizontalAlign="Center" CssClass="item" Width="70px" />
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle Font-Size="13px" BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerSettings Position="TopAndBottom" />
        <PagerStyle BackColor="#99CCCC" Font-Size="17px" Font-Underline="true" ForeColor="#003399" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:Label Style="font-style: italic; font-size: 15px; margin-top: 10px; margin-left: 200px;" ID="lblRecordRow" runat="server" Text="."></asp:Label>
</asp:Content>
