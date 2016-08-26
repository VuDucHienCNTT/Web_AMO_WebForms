<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TinDocNhieuNhat.ascx.cs" Inherits="Web_AMO.UCcontrol.TinDocNhieuNhat" %>
<style>
    #idtindocnhieu {
        float: left;
        width: 735px;
        height: auto;
        overflow: auto;
        clear: right;
        margin-top: 10px;
        margin-bottom: 30px;
    }

    .tindocnhieu {
        height: 28px;
        font-size: 13px;
        font-weight: bold;
        line-height: 32px;
        background-image: url(Image/bg-title-h-left.png);
        float:left;
        width: 26%;
        color: black;

    }

    .rpttindocnhieu {
        width: 710px;
        float: left;
        margin-right: 4px;
        margin-left: 25px;
        text-align: left;
    }

    .classa a {
        color: #09489f;
        font-weight: normal;
    }

        .classa a:hover {
            color: #ff0000;
        }
</style>
<div id="idtindocnhieu">
    <div>
        <div class="tindocnhieu" style="padding-left: 20px;">Bài viết xem nhiều nhất</div>
        <img style="float: left;" src="Image/bg-title-h-right.png" />
    </div>
    <br />
    <div class="rpttindocnhieu">
        <asp:Repeater runat="server" ID="rptTinDocNhieu">
            <ItemTemplate>
                <div class="classa">
                    <div style="clear: both"></div>
                    <h4 style="color: #ff6a00; margin: 10px 0;">&diams;
                <a style="line-height: 1.1; font-size: 13px;" title="<%# Eval("TIEUDE") %>" href='DetailTinTuc.aspx?id=<%# Eval("IDTINTUC") %>'><%# Eval("TIEUDE") %> <span style="color: #808080"><%#"("+DateTime.Parse(Eval("NGAYDANG").ToString()).ToString("dd/MM/yyyy")+")" %></span>
                </a>
                    </h4>
                </div>

            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
