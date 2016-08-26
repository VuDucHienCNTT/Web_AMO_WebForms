<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TinTrangChu.ascx.cs" Inherits="Web_AMO.UCcontrol.TinTrangChu" %>
<style>
    .tieudetheloaitin {
        float: left;
        width: 740px;
        height: auto;
        overflow: auto;
        clear: right;
        margin-top: 5px;
    }

    .theloaitin {
        height: 28px;
        font-weight: bold;
        line-height: 32px;
        background-image: url(Image/bg-title-h-left.png);
        float: left;
        width: 25%;
    }

        .theloaitin a {
            line-height: 24px;
            font-size: 13px;
            color: black;
            font-weight: bold;
            font-family: Tahoma;
        }

            .theloaitin a:hover {
                color: #ff0000;
                text-decoration: underline;
            }

    .rpttheloaitin {
        width: 720px;
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
            color: #0026ff;
        }

    .duongke {
        border-bottom: 1px dashed #808080;
        margin-top: 5px;
        margin-bottom: 10px;
    }

        .duongke:last-child {
            border-bottom: none;
        }

    .xemthem a {
        font-size: 13px;
        line-height: 32px;
        color: #191212;
        font-family: 'Times New Roman';
        font-style: italic;
        margin-right: 15px;
        font-weight:bold;
        float: right;
    }

        .xemthem a:hover {
            color: #ff0000;
            text-decoration:underline;
        }
</style>

<div class="tieudetheloaitin">
    <div>
        <div class="theloaitin" style="padding-left: 40px;">
            <a href="TLTin.aspx?id=TL1" style="text-align: left;" title="Khí tượng - Thủy văn">KHÍ TƯỢNG - THỦY VĂN</a>
        </div>
        <img style="float: left;" src="Image/bg-title-h-right.png" />
        <div class="xemthem">
            <a href="TLTin.aspx?id=TL1" title="Xem thêm">Xem thêm</a>
        </div>
    </div>
    <div class="rpttheloaitin">
        <asp:Repeater runat="server" ID="rptKTTV">
            <ItemTemplate>
                <div style="clear: both; margin-bottom: 5px;"></div>
                <a href='DetailTinTuc.aspx?id=<%# Eval("IDTINTUC") %>'>
                    <img src='Admin/<%# Eval("ANHDAIDIEN") %>' title="<%# Eval("TIEUDE") %>" style="width: 130px; height: 120px; float: left; margin-right: 8px;" />
                </a>
                <div class="atieude">
                    <a title="<%# Eval("TIEUDE") %>" href='DetailTinTuc.aspx?id=<%# Eval("IDTINTUC") %>'><%# Eval("TIEUDE") %></a>
                </div>
                <p style="font-size: 13px; font-family: Tahoma; margin-bottom: 2px; color: #808080"><%#"Ngày đăng: "+ DateTime.Parse(Eval("NGAYDANG").ToString()).ToString("dd/MM/yyyy") %> | <%#"Lượt xem: "+Eval("LUOTXEM") %></p>
                <h5 style="color: #191212; font-size: 13px; font-weight: normal; line-height: 1.4; font-family: Tahoma;">
                    <%#Eval("TOMTAT") %>

                    <a title="Xem tiếp bài viết" style="font-style: italic; font-weight: bold; color: #48494a; line-height: 0.5; opacity: 0.8; text-decoration: underline; font-family: 'Times New Roman'; font-size: 13px;" href='DetailTinTuc.aspx?id=<%# Eval("IDTINTUC") %>'>xem tiếp</a>
                </h5>
                <div style="clear: both;"></div>
                <div class="duongke"></div>
            </ItemTemplate>
            <FooterTemplate>
                <div style="margin-top: 10px;">
                    <asp:Label runat="server" Style="font-size: 14px;" Visible='<%# DataBinder.Eval(Container.Parent, "Items.Count").ToString() == "0" %>'>Tin tức đang được cập nhật...
                    </asp:Label>
                </div>
            </FooterTemplate>
        </asp:Repeater>
    </div>
</div>


<div class="tieudetheloaitin">
    <div>
        <div class="theloaitin" style="padding-left: 40px;">
            <a href="TLTin.aspx?id=TL2" style="text-align: left;" title="Chính trị">CHÍNH TRỊ</a>
        </div>
        <div class="xemthem">
            <a href="TLTin.aspx?id=TL2" title="Xem thêm">Xem thêm</a>
        </div>
        <img style="float: left;" src="Image/bg-title-h-right.png" />

    </div>
    <div class="rpttheloaitin">
        <asp:Repeater runat="server" ID="rptChinhTri">
            <ItemTemplate>
                <div style="clear: both; margin-bottom: 5px;"></div>
                <a href='DetailTinTuc.aspx?id=<%# Eval("IDTINTUC") %>'>
                    <img src='Admin/<%# Eval("ANHDAIDIEN") %>' title="<%# Eval("TIEUDE") %>" style="width: 130px; height: 120px; float: left; margin-right: 8px;" />
                </a>

                <div class="atieude">
                    <a title="<%# Eval("TIEUDE") %>" href='DetailTinTuc.aspx?id=<%# Eval("IDTINTUC") %>'><%# Eval("TIEUDE") %></a>
                </div>
                <p style="font-size: 13px; margin-bottom: 2px; font-family: Tahoma; color: #808080"><%#"Ngày đăng: "+ DateTime.Parse(Eval("NGAYDANG").ToString()).ToString("dd/MM/yyyy") %> | <%#"Lượt xem: "+Eval("LUOTXEM") %></p>
                <h5 style="color: #191212; font-size: 13px; font-weight: normal; line-height: 1.4; font-family: Tahoma;">
                    <%#Eval("TOMTAT") %>

                    <a title="Xem tiếp bài viết" style="font-style: italic; font-weight: bold; color: #48494a; line-height: 0.5; opacity: 0.8; text-decoration: underline; font-family: 'Times New Roman'; font-size: 13px;" href='DetailTinTuc.aspx?id=<%# Eval("IDTINTUC") %>'>xem tiếp</a>
                </h5>
                <div style="clear: both;"></div>
                <div class="duongke"></div>
            </ItemTemplate>
            <FooterTemplate>
                <div style="margin-top: 10px;">
                    <asp:Label runat="server" Style=" font-size: 14px;" Visible='<%# DataBinder.Eval(Container.Parent, "Items.Count").ToString() == "0" %>'>Tin tức đang được cập nhật...
                    </asp:Label>
                </div>
            </FooterTemplate>
        </asp:Repeater>
    </div>
</div>


<div class="tieudetheloaitin">
    <div>
        <div class="theloaitin" style="padding-left: 40px;">
            <a href="TLTin.aspx?id=TL3" style="text-align: left;" title="Xã hội">XÃ HỘI</a>
        </div>
        <div class="xemthem" >
            <a href="TLTin.aspx?id=TL3" title="Xem thêm">Xem thêm</a>
        </div>
        <img style="float: left;" src="Image/bg-title-h-right.png" />
    </div>
    <div class="rpttheloaitin">
        <asp:Repeater runat="server" ID="rptXaHoi">
            <ItemTemplate>
                <div style="clear: both; margin-bottom: 5px;"></div>
                <a href='DetailTinTuc.aspx?id=<%# Eval("IDTINTUC") %>'>
                    <img src='Admin/<%# Eval("ANHDAIDIEN") %>' title="<%# Eval("TIEUDE") %>" style="width: 130px; height: 120px; float: left; margin-right: 8px;" />
                </a>
                <div class="atieude">
                    <a title="<%# Eval("TIEUDE") %>" href='DetailTinTuc.aspx?id=<%# Eval("IDTINTUC") %>'><%# Eval("TIEUDE") %></a>
                </div>
                <p style="font-size: 13px; font-family: Tahoma; margin-bottom: 2px; color: #808080"><%#"Ngày đăng: "+ DateTime.Parse(Eval("NGAYDANG").ToString()).ToString("dd/MM/yyyy") %> | <%#"Lượt xem: "+Eval("LUOTXEM") %></p>
                <h5 style="color: #191212; font-size: 13px; font-weight: normal; line-height: 1.4; font-family: Tahoma;">
                    <%#Eval("TOMTAT") %>
                    <a title="Xem tiếp bài viết" style="font-style: italic; font-weight: bold; color: #48494a; line-height: 0.5; opacity: 0.8; text-decoration: underline; font-family: 'Times New Roman'; font-size: 13px;" href='DetailTinTuc.aspx?id=<%# Eval("IDTINTUC") %>'>xem tiếp</a>
                </h5>
                <div style="clear: both;"></div>
                <div class="duongke"></div>
            </ItemTemplate>
            <FooterTemplate>
                <div style="margin-top: 10px;">
                    <asp:Label runat="server" Style=" font-size: 14px;" Visible='<%# DataBinder.Eval(Container.Parent, "Items.Count").ToString() == "0" %>'>Tin tức đang được cập nhật...
                    </asp:Label>
                </div>
            </FooterTemplate>
        </asp:Repeater>
    </div>
</div>
