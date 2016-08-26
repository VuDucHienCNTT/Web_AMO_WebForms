<%@ Page Title="Lịch làm việc" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="LichLV.aspx.cs" Inherits="Web_AMO.LichLV" %>

<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .tieude {
            width: 15%;
            height: 28px;
            line-height: 32px;
            font-weight: bold;
            background-image: url(Image/bg-title-h-left.png);
            float: left;
            font-size: 13px;
            color: black;
            padding-left: 20px;
        }

        .lblTimKiemLLV {
            font-family: 'Segoe UI';
            margin-left: 20px;
            color: #414955;
            font-size: 15px;
        }

        .classa {
            margin-left: 10px;
            line-height: 1.4;
        }

            .classa a {
                color: #09489f;
                font-weight: normal;
                line-height: 1.1;
                font-family: 'Segoe UI';
            }

                .classa a:hover {
                    color: #09489f;
                    text-decoration: underline;
                }

        .duongke {
            border-bottom: 1px dashed #808080;
            margin: 6px 0;
        }

            .duongke:last-child {
                border-bottom: none;
            }
    </style>
    <div>
        <div class="tieude">Lịch làm việc</div>
        <img style="float: left;" src="Image/bg-title-h-right.png" />
    </div>
    <br />
    <br style="margin-bottom: 8px;" />
    <asp:TextBox Style="height: 20px; width: 200px;" Placeholder="Tìm kiếm lịch làm việc..." ID="txtSearch" title="Nhập lịch làm việc cần tìm" runat="server"></asp:TextBox>
    <asp:Button Style="height: 22px; width: 70px; border: none; background-color: #0094ff; color: white; margin-bottom: 10px;" ID="btnSearch" runat="server" title="Tìm kiếm" Text="Tìm kiếm" OnClick="btnSearch_Click" />
    <asp:Label ID="lblTimKiemLLV" CssClass="lblTimKiemLLV" runat="server"></asp:Label>
    <hr style="margin-bottom: 6px;" />
    <asp:Repeater runat="server" ID="rptLichLV">
        <ItemTemplate>
            <div class="classa">
                <div style="clear: both"></div>
                <a style="font-family: 'Segoe UI'; font-weight: bold; font-size: 13px;" title="<%# Eval("TIEUDE") %>" href='DetailLichLV.aspx?id=<%# Eval("IDLICHLV") %>'><%# Eval("TIEUDE") %></a>
                <p style="font-size: 13px;">Ngày đăng: <b><%#DateTime.Parse(Eval("NGAYDANG").ToString()).ToString("dd/MM/yyyy") %></b>, Lượt xem: <b><%#Eval("LUOTXEM") %></b>, Trạng thái: <b><%#Eval("TRANGTHAI") %></b></p>
            </div>
            <div class="duongke"></div>
        </ItemTemplate>
        <FooterTemplate>
            <div style="padding-left: 20px; padding-top: 10px">
                <asp:Label runat="server" Style="font-size: 14px;" Visible='<%# DataBinder.Eval(Container.Parent, "Items.Count").ToString() == "0" %>'>Không có kết quả được tìm thấy
                </asp:Label>
            </div>
        </FooterTemplate>
    </asp:Repeater>
    <div style="height: 20px; text-align: center; margin-top: 20px; color: #09489f; font-size: 17px;">
        <cc1:CollectionPager ID="CollectionPager1" runat="server" BackText="&lt;&lt; Trước &amp;nbsp;" LabelText="" NextText="&amp;nbsp; Sau &gt;&gt;" SliderSize="5" PagingMode="QueryString" BackNextLocation="Split" PageNumbersDisplay="Numbers" ResultsLocation="None" BackNextDisplay="HyperLinks" PageSize="30" FirstText="" HideOnSinglePage="True" IgnoreQueryString="False" LastText="" PageNumbersSeparator="-" ResultsFormat="" ShowLabel="False" ShowPageNumbers="True" UseSlider="True">
        </cc1:CollectionPager>
    </div>
</asp:Content>
