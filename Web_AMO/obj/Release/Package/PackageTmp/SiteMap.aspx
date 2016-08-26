<%@ Page Title="Sơ đồ trang" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="SiteMap.aspx.cs" Inherits="Web_AMO.SiteMap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .tieude {
            width: 12%;
            height: 28px;
            line-height: 32px;
            font-weight: bold;
            background-image: url(Image/bg-title-h-left.png);
            float: left;
            font-size: 13px;
            color: black;
            padding-left: 20px;
        }

        .sitemap {
            padding-left: 30px;
            border-bottom: 1px solid #808080;
            font-family: Tahoma;
            line-height: 0.7;
            padding-bottom: 30px;
        }
    </style>
    <div>
        <div class="tieude">Sơ đồ trang</div>
        <img style="float:left;" src="Image/bg-title-h-right.png" /> 
    </div>
    <br />
    <div class="sitemap">
        <asp:TreeView ID="TreeView" runat="server" ShowLines="True" Width="400px">
            <Nodes>
                <asp:TreeNode NavigateUrl="#" Text="Home">
                    <asp:TreeNode Text="Trang chủ" NavigateUrl="Default.aspx" ImageUrl="~/Image/folder.gif" />
                    <asp:TreeNode Text="Giới thiệu" NavigateUrl="#">
                        <asp:TreeNode Text="Giới thiệu chung" NavigateUrl="GioiThieuChung.aspx" Target="_blank" ImageUrl="~/Image/folder.gif" />
                        <asp:TreeNode Text="Sơ đồ tổ chức" NavigateUrl="CanBo.aspx" Target="_blank" ImageUrl="~/Image/folder.gif" />
                        <asp:TreeNode Text="Sơ đồ trang" NavigateUrl="SiteMap.aspx" Target="_blank" ImageUrl="~/Image/folder.gif" />
                    </asp:TreeNode>
                    <asp:TreeNode Text="Công văn - Tài liệu" NavigateUrl="TaiLieu.aspx" Target="_blank" ImageUrl="~/Image/folder.gif" />
                    <asp:TreeNode Text="Lịch làm việc" NavigateUrl="LichLV.aspx" Target="_blank" ImageUrl="~/Image/folder.gif"></asp:TreeNode>
                    <asp:TreeNode Text="Tin tức - Sự kiện" NavigateUrl="TinTuc.aspx" Target="_blank" ImageUrl="~/Image/folder.gif"></asp:TreeNode>
                    <asp:TreeNode Text="Thư viện ảnh" NavigateUrl="Album.aspx" Target="_blank" ImageUrl="~/Image/folder.gif"></asp:TreeNode>
                    <asp:TreeNode Text="Liên hệ" NavigateUrl="LienHe.aspx" Target="_blank" ImageUrl="~/Image/folder.gif"></asp:TreeNode>
                    <asp:TreeNode Text="Đăng nhập" NavigateUrl="DangNhap.aspx" Target="_blank" ImageUrl="~/Image/folder.gif"></asp:TreeNode>
                    <asp:TreeNode Text="Đăng ký" NavigateUrl="DangKy.aspx" Target="_blank" ImageUrl="~/Image/folder.gif"></asp:TreeNode>
                    <asp:TreeNode Text="Bản đồ" NavigateUrl="BanDo.aspx" Target="_blank" ImageUrl="~/Image/folder.gif"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
    </div>
</asp:Content>
