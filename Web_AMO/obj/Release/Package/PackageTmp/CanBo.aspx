<%@ Page Title="Sơ đồ tổ chức" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="CanBo.aspx.cs" Inherits="Web_AMO.Presentation.SoDoToChuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../CSS/Default.css" rel="stylesheet" />
    <style>
        .tieude {
            width: 30%;
            height: 28px;
            line-height: 32px;
            font-weight: bold;
            background-image: url(Image/bg-title-h-left.png);
            float: left;
            font-size: 13px;
            color: black;
            padding-left: 20px;
        }

        .lblTimKiemCB {
            font-family: 'Segoe UI';
            margin-left: 20px;
            color: #414955;
            font-size: 15px;
        }

        .canbo {
            width: 100%;
            float: left;
            margin: 10px 10px 10px 27px;
        }

        #imgcb {
            height: 135px;
            width: 110px;
            margin-right: 5px;
            float: left;
            border: 1px solid #808080;
            padding: 1px;
        }

        .hoten {
            color: #09489f;
            font-size: 15px;
            font-weight: bold;
            font-family: 'Segoe UI';
        }

            .hoten:hover {
                color: #1a67f2;
            }

        .cv, .email, .quequan, .sdt, .bc, .ngaysinh {
            color: #717268;
            margin-left: 5px;
        }
    </style>
    <div style="margin-bottom: 10px;">
        <div class="tieude">Danh sách Cán bộ Văn phòng</div>
        <img style="float: left" src="Image/bg-title-h-right.png" />
    </div>
    <br />
    <asp:TextBox Style="height: 20px; width: 200px; margin-top: 10px;" Placeholder="Tìm kiếm cán bộ..." ID="txtSearch" title="Nhập cán bộ cần tìm" runat="server"></asp:TextBox>
    <asp:Button Style="height: 22px; width: 70px; border: none; background-color: #0094ff; color: white; margin-bottom: 10px;" ID="btnSearch" runat="server" title="Tìm kiếm" Text="Tìm kiếm" OnClick="btnSearch_Click" />
    <asp:Label ID="lblTimKiemCB" CssClass="lblTimKiemCB" runat="server"></asp:Label>
    <hr />
    <asp:Repeater ID="rptCanBo" runat="server">
        <ItemTemplate>
            <div class="canbo">

                <a href='<%# "DetailCB.aspx?idcb=" + Eval("IDCB") %>'>
                    <img id="imgcb" src="Admin/<%#Eval("ANHMOTA")%>" /></a>
                <div title="<%#Eval("HOTEN") %>">
                    <asp:Label ID="lblSTT" Text='<%# Container.ItemIndex + 1 %>' Style="font-size: 14px; font-family: 'Segoe UI'; font-weight: bold; color: #09489f; margin-left: 5px;" runat="server"></asp:Label>.
                <asp:HyperLink ID="hoten" CssClass="hoten" runat="server" NavigateUrl='<%# "DetailCB.aspx?idcb=" + Eval("IDCB") %>' Text='<%# "Họ tên: "+" "+Eval("HOTEN")+"" %>'></asp:HyperLink><br>
                </div>
                <asp:HyperLink ID="chucvu" CssClass="cv" runat="server" Text='<%# "Chức vụ: "+" "+Eval("CHUCVU")+""%>'></asp:HyperLink><br>
                <asp:HyperLink ID="bangcap" CssClass="bc" runat="server" Text='<%# "Trình độ: "+" "+Eval("BANGCAP")+""%>'></asp:HyperLink><br>
                <asp:HyperLink ID="email" CssClass="email" runat="server" Text='<%# "Email: "+" "+Eval("EMAIL")+"" %>'></asp:HyperLink><br>
                <asp:HyperLink ID="sdt" CssClass="sdt" runat="server" Text='<%# "Tel: "+"0"+Eval("SODT")+""%>'></asp:HyperLink>
            </div>
        </ItemTemplate>
        <FooterTemplate>
            <div style="padding-left: 20px; padding-top: 10px">
                <asp:Label runat="server" Style="font-size: 14px;" Visible='<%# DataBinder.Eval(Container.Parent, "Items.Count").ToString() == "0" %>'>Không có kết quả được tìm thấy...
                </asp:Label>
            </div>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
