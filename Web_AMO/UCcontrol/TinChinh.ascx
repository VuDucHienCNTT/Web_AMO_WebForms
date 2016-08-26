<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TinChinh.ascx.cs" Inherits="Web_AMO.Presentation.UCcontrol.TinChinh" %>
<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>
<style>
    #idtintucsukien {
        width: 740px;
        height: auto;
        float: left;
    }

    .classtintucsukien {
        height: 28px;
        font-size: 13px;
        font-weight: bold;
        line-height: 32px;
        background-image: url(Image/bg-title-h-left.png);
        font-family: Tahoma;
        float: left;
        width:22%;
    }

    .rpttintucsukien {
        width: 725px;
        float: left;
        margin-right: 4px;
        margin-left: 10px;
        text-align: left;
    }

    .atieude a {
        color: #09489f;
        font-family: 'Times New Roman';
        font-weight: bold;
        font-size: 16px;
        text-decoration: none;
        line-height: 1.2;
        margin-bottom: 10px;
    }

        .atieude a:hover {
            color: #08088A;
        }
</style>
<div id="idtintucsukien">
    <div>
        <div class="classtintucsukien" style="padding-left: 40px;">Tin tức - Sự kiện</div>
        <img style="float: left;" src="Image/bg-title-h-right.png" />
    </div>
    <div class="rpttintucsukien">
        <asp:Repeater runat="server" ID="rptTinTuc">
            <ItemTemplate>
                <div style="clear: both; margin-bottom: 5px;"></div>
                <div class="atieude">
                    <a title="<%# Eval("TIEUDE") %>" href='DetailTinTuc.aspx?id=<%# Eval("IDTINTUC") %>'><%# Eval("TIEUDE") %></a>
                </div>
                <a href='DetailTinTuc.aspx?id=<%# Eval("IDTINTUC") %>'>
                    <img src='Admin/<%# Eval("ANHDAIDIEN") %>' title="<%# Eval("TIEUDE") %>" style="width: 130px; height: 110px; float: left; margin-top: 5px; margin-right: 8px;" />
                </a>
                <p style="font-size: 13px; font-family: Tahoma; margin-bottom: 2px; margin-top: 3px; color: #414955"><%#"Ngày đăng: "+ DateTime.Parse(Eval("NGAYDANG").ToString()).ToString("dd/MM/yyyy") %> | <%#"Lượt xem: "+Eval("LUOTXEM") %></p>
                <h5 style="color: #191212; font-size: 13px; font-weight: normal; line-height: 1.4; font-family: Tahoma;">
                    <%#Eval("TOMTAT") %>
                    <a title="Xem tiếp bài viết" style="font-style: italic; font-weight: bold; color: #48494a; line-height: 0.5; opacity: 0.8; text-decoration: underline; font-family: 'Times New Roman'; font-size: 13px;" href='DetailTinTuc.aspx?id=<%# Eval("IDTINTUC") %>'>xem tiếp</a>
                </h5>
                <br />
                <div style="clear: both; margin-bottom: 5px;"></div>
                <div style="border-bottom: 1px dashed #808080; margin-top: 5px;"></div>
            </ItemTemplate>
        </asp:Repeater>
        <div style="height: 20px; text-align: center; margin-top: 20px; color: #09489f; font-size: 17px;">
            <cc1:CollectionPager ID="CollectionPager1" runat="server" BackText="&lt;&lt; Trước &amp;nbsp;" LabelText="" NextText="&amp;nbsp; Sau &gt;&gt;" SliderSize="5" PagingMode="QueryString" BackNextLocation="Split" PageNumbersDisplay="Numbers" ResultsLocation="None" BackNextDisplay="HyperLinks" PageSize="15" FirstText="" HideOnSinglePage="True" IgnoreQueryString="False" LastText="" PageNumbersSeparator="-" ResultsFormat="" ShowLabel="False" ShowPageNumbers="True" UseSlider="True">
            </cc1:CollectionPager>
        </div>
    </div>
</div>
