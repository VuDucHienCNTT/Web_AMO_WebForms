<%@ Page Title="Thể loại tin tức" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="TLTin.aspx.cs" Inherits="Web_AMO.TLTin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .tieudetheloaitin {
            float: left;
            width: 735px;
            height: auto;
            overflow: auto;
            clear: right;
            margin-top: 5px;
        }

        .theloaitin {
            width: 16%;
            color: black;
            height: 28px;
            font-size: 13px;
            font-weight: bold;
            line-height: 32px;
            background-image: url(Image/bg-title-h-left.png);
            float: left;
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
                color: #08088A;
            }

        a:hover {
            color: #0094ff;
        }

        .duongke {
            border-bottom: 1px dashed #808080;
            margin-top: 5px;
            margin-bottom: 10px;
        }
    </style>
    <div class="tieudetheloaitin">
        <div style="margin-bottom:15px;">
            <div class="theloaitin" style="padding-left: 20px;">Thể loại Tin tức</div>
            <img style="float: left;" src="Image/bg-title-h-right.png" />
        </div>
        <br />
        <div class="rpttheloaitin">
            <asp:Repeater runat="server" ID="rptTheloaitin">
                <ItemTemplate>
                    <div style="clear: both; margin-bottom: 5px;"></div>
                    <a href='DetailTinTuc.aspx?id=<%# Eval("IDTINTUC") %>'>
                        <img src='Admin/<%# Eval("ANHDAIDIEN") %>' title="<%# Eval("TIEUDE") %>" style="width: 130px; height: 120px; float: left; margin-right: 8px;" />
                    </a>

                    <div class="atieude">
                        <a title="<%# Eval("TIEUDE") %>" href='DetailTinTuc.aspx?id=<%# Eval("IDTINTUC") %>'><%# Eval("TIEUDE") %></a>
                    </div>
                    <p style="font-size: 13px; font-family: Tahoma; color: #414955"><%#"Ngày đăng: "+ DateTime.Parse(Eval("NGAYDANG").ToString()).ToString("dd/MM/yyyy") %> | <%#"Lượt xem: "+Eval("LUOTXEM") %></p>

                    <h5 style="color: #191212; font-size: 13px; font-weight: normal; line-height: 1.4; font-family: Tahoma;">
                        <%#Eval("TOMTAT") %>
                        <a style="font-style: italic; font-weight: bold; color: #48494a; line-height: 0.5; opacity: 0.8; text-decoration: underline; font-family: 'Times New Roman'; font-size: 13px;" href='DetailTinTuc.aspx?id=<%# Eval("IDTINTUC") %>'>xem tiếp</a>
                    </h5>
                    <div style="clear: both; margin-bottom: 5px;"></div>
                    <div class="duongke"></div>
                </ItemTemplate>
                <FooterTemplate>
                    <div style="margin-top: 10px;">
                        <asp:Label runat="server" Style="font-size: 14px;" Visible='<%# DataBinder.Eval(Container.Parent, "Items.Count").ToString() == "0" %>'>Tin tức đang được cập nhật...
                        </asp:Label>
                    </div>
                </FooterTemplate>
            </asp:Repeater>

            <%--Phân trang--%>
            <div style="overflow: hidden; text-align: center; margin: 20px 0;">
                <asp:Repeater ID="rptPhanTrang" runat="server" OnItemCommand="rptPhanTrang_ItemCommand">
                    <ItemTemplate>
                        <asp:LinkButton ID="btnPage"
                            Style="padding: 3px 4px; margin: 2px; background: #ccc; border: solid 1px #666; font-size: 14px;"
                            CommandName="Page" CommandArgument="<%# Container.DataItem %>" runat="server"><%# Container.DataItem %>
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
