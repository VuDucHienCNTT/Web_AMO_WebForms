<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PictureLienKet.ascx.cs" Inherits="Web_AMO.Presentation.UCcontrol.PictureLienKet" %>
<style>
    #piclk {
        margin-top: 5px;
        height: auto;
        float: right;
        border-left: 1px solid #BBBBBB;
        border-bottom: 1px solid #BBBBBB;
        width: 249px;
        overflow: auto;
        clear: right;
    }

    .piclk {
        height: auto;
        font: 13px;
        margin-top: 10px;
    }

    .tieudelk {
        width: 44%;
        height: 28px;
        font-size: 13px;
        font-weight: bold;
        line-height: 32px;
        background-image: url(Image/bg-title-h-left.png);
        float: left;
        color: black;
    }

    .img {
        margin-top: 5px;
        margin-bottom: 5px;
        width: 120px;
        height: 120px;
        margin-left: 55px;
    }
</style>

<div id="piclk">
    <div style="margin-bottom:10px;">
        <div class="tieudelk" style="padding-left: 15px;">Đơn vị liên kết </div>
        <img style="float: left;width:120px;height:28px;" src="Image/bg-title-h-right.png" />
    </div>
    <br />
    <div class="piclk">
        <a href="http://www.monre.gov.vn" target="_blank">
            <img class="img" src="../../Image/BoTN_MT.jpeg" title="Bộ Tài Nguyên và Môi Trường" />
        </a>
        <a href="http://www.dmhcc.gov.vn/" target="_blank">
            <img class="img" src="../../Image/CucKTTV-BDKH.png" title="Cục khí tượng thủy văn dự báo trung ương" />
        </a>
        <a href="http://www.imh.ac.vn/" target="_blank">
            <img class="img" src="../../Image/Vienkttvmt.jpg" title="Viện khí tượng thủy văn môi trường" />
        </a>
        <a href="http://vea.gov.vn/" target="_blank">
            <img class="img" src="../../Image/Tongcucmoitruong.png" title="Tổng cục môi trường" />
        </a>
        <%--<a href="http://www.nchmf.gov.vn/" target="_blank">
            <img class="img" src="../../Image/Ttkttv-dbtw.jpg" title="Trung tâm khí tượng thủy văn dự báo trung ương" />
        </a>--%>
    </div>
</div>

