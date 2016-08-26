<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TimKiem.ascx.cs" Inherits="Web_AMO.UCcontrol.TimKiem" %>
<style>
    #idtimkiem {
        float: right;
        border-left: 1px solid #BBBBBB;
        border-bottom: 1px solid #BBBBBB;
        width: 249px;
        height: auto;
        float: right;
        clear: right;
        margin-bottom: 5px;
    }

    .classtimkiem {
        width: 28%;
        height: 28px;
        font-size: 13px;
        font-weight: bold;
        line-height: 32px;
        background-image: url(Image/bg-title-h-left.png);
        float: left;
        color: black;
    }

    .txttimkiem {
        height: 20px;
        width: 186px;
        line-height: 20px;
        margin-bottom: 10px;
        margin-top: 10px;
        margin-left: 8px;
    }

    .btntimkiem {
        height: 23px;
        line-height: 23px;
        width: 40px;
        color: black;
    }

        .btntimkiem:enabled {
            color: white;
            background: #0094ff;
            border: none;
        }
</style>

<%--  >1 ký tự thì mở btnTimkiem --%>
<script>
    function StatusEmpty() {
        var first = document.getElementById('<%=txtSearch.ClientID %>');

        if (first.value.length >= 1)
            document.getElementById('<%=btnTimkiem.ClientID%>').disabled = false;
        else
            document.getElementById('<%=btnTimkiem.ClientID%>').disabled = true;
    }
</script>
<div id="idtimkiem">
    <div>
        <div class="classtimkiem" style="padding-left: 15px;">
            Tìm kiếm
        </div>
        <img style="float: left;" src="Image/bg-title-h-right.png" />
    </div>
    <br />
    <div>
        <asp:TextBox runat="server" onkeyup="StatusEmpty()" Placeholder="Tìm kiếm tin tức..." CssClass="txttimkiem" ID="txtSearch" title="Nhập từ khóa cần tìm"></asp:TextBox>
        <asp:Button runat="server" CssClass="btntimkiem" Enabled="false" ID="btnTimkiem" Text="Tìm" title="Tìm kiếm" OnClick="btnTimkiem_Click" />
    </div>
</div>
