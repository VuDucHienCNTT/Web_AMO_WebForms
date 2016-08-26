<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TinMoi.ascx.cs" Inherits="Web_AMO.Presentation.UCcontrol.TinMoi" %>
<style>
    #idtinmoi {
        float: right;
        border-left: 0.5px solid #BBBBBB;
        border-bottom: 0.5px solid #BBBBBB;
        width: 249px;
        height: auto;
        overflow: auto;
        clear: right;
    }

    .tinmoi {
        width: 38%;
        height: 28px;
        font-size: 13px;
        font-weight: bold;
        line-height: 32px;
        background-image: url(Image/bg-title-h-left.png);
        float: left;
        color: black;
    }

    .classtinmoi {
        width: 225px;
        float: left;
        margin-right: 4px;
        margin-left: 4px;
        text-align: left;
        font-size: 14px;
    }

    .a a {
        color: #09489f;
        font-weight: normal;
        font-size: 12px;
    }

        .a a:hover {
            color: #ff0000;
        }

    .duongke {
        border-bottom: 1px dashed #808080;
    }

        .duongke:last-child {
            border-bottom: none;
        }
</style>
<div id="idtinmoi">
    <div>
        <div class="tinmoi" style="padding-left: 20px;">Tin mới nhất</div>
        <img style="float: left;height:28px; width:130px" src="Image/bg-title-h-right.png" />
    </div>
    <br />
    <div class="classtinmoi">
        <asp:Repeater runat="server" ID="rptTinMoi1">
            <ItemTemplate>
                <div class="a">
                    <div style="clear: both"></div>
                    <h4 style="color: #ff0000; margin: 5px 0;">&diams;
                <a style="line-height: 1.1;" title="<%# Eval("TIEUDE") %>" href='DetailTinTuc.aspx?id=<%# Eval("IDTINTUC") %>'><%# Eval("TIEUDE") %>
                    <span style="background-image: url(../Image/New.gif); background-repeat: no-repeat; text-decoration: none; clear: both; display: inline-block; height: 15px; width: 33px; line-height: 15px;"></span>
                </a>
                    </h4>
                </div>
                <div class="duongke"></div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    </div>
</div>
