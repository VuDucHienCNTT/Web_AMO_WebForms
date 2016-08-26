<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebLienKet.ascx.cs" Inherits="Web_AMO.Presentation.UCcontrol.WebLienKet" %>
<style>
    #idweblket {
        float: right;
        border-left: 1px solid #BBBBBB;
        border-bottom: 1px solid #BBBBBB;
        width: 249px;
        height: auto;
        float: right;
        margin-top: 5px;
        clear: right;
    }

    .classweblket {
        height: 28px;
        width: 27%;
        background-image: url(Image/bg-title-h-left.png);
        float:left;
        line-height: 32px;
        font-size: 13px;
        font-weight:bold;
        color: black;
    }

    .optweblk {
        width: 200px;
        margin-left: 25px;
        margin-top: 10px;
    }

    .lienket {
        width: 200px;
        margin-bottom: 10px;
        height:21px;
    }
</style>

<div id="idweblket">
    <div style="margin-bottom:10px;">
        <div class="classweblket" style="padding-left: 20px;">Liên kết</div>
        <img style="float: left;" src="Image/bg-title-h-right.png" />
    </div>
    <br />

    <div class="optweblk">
        <select onchange="window.open(this.value, '_blank')" class="lienket">
            <option value="#">--Liên kết trong nước--</option>
            <option value="http://kttvdb.net/index.asp">Đài khí tượng thủy văn khu vực Đông Bắc</option>
            <option value="http://kttvtaynguyen.org.vn/">Đài khí tượng thủy văn khu vực TN</option>
            <option value="http://www.dmhcc.gov.vn/">Lãnh đạo cục khí tượng thủy văn và BĐ KH</option>
            <option value="http://kttvvietbac.org/">Đài khí tượng thủy văn khu vực việt Bắc</option>
            <option value="http://www.kttv-nb.org.vn/">Đài khí tượng thủy văn khu vực Nam Bộ</option>
        </select>
        <select onchange="window.open(this.value, '_blank')" class="lienket">
            <option value="#">--Liên kết nước ngoài--</option>
            <option value="http://www.jma.go.jp/en/typh/">Trang dự báo của cơ quan khí tượng NB</option>
            <option value="http://www.hko.gov.hk/informtc/tcMain.htm">Trang dự báo của cơ quan khí tượng HK</option>
            <option value="http://www.nrlmry.navy.mil/tc_pages/tc_home.html">Trang dự báo của Hải Quân Mỹ</option>
            <option value="http://www.wmo.int/pages/index_en.html">Tổ chức khí tượng Thế giới</option>
            <option value="http://www.ipcc.ch/">Ban liên chính phủ về Biến đổi khí hậu</option>
        </select>
    </div>
</div>
