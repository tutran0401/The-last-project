<%--
  Created by IntelliJ IDEA.
  User: Tutran
  Date: 4/15/2025
  Time: 7:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:url var="buildingAPI" value="/api/building"/>
<html>
<head>
    <title>Thêm Tòa Nhà</title>
</head>
<body>
<div class="main-content" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try {
                        ace.settings.check('breadcrumbs', 'fixed')
                    } catch (e) {
                    }
                </script>

                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">Home</a>
                    </li>
                    <li class="active">Dashboard</li>
                </ul><!-- /.breadcrumb -->
            </div>

            <div class="page-content">
                <div class="page-header">
                    <h1>
                        Dashboard
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            Overview &amp; Stats
                        </small>
                    </h1>
                </div>

                <div class="row">
                    <div class="col-xs-12">
                        <!-- Nội dung có thể thêm tại đây -->
                    </div>
                </div>

                <!-- Bảng danh sách -->
                <div class="row" style="font-family: 'Times New Roman', Times, serif;">
                    <form:form modelAttribute="buildingEdit" id="listForm" method="GET">
                        <div class="col-xs-12">
                            <form class="form-horizontal" role="form" id="form-edit" >
                                <div class="form-group">
                                    <label class="col-xs-3 ">Tên tòa nhà</label>
                                    <div class="col-xs-9">
                                        <form:input class="form-control" path="name"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Tên quận</label>
                                    <div class="col-xs-9">
                                        <form:select class="form-control" path="district" name="district"
                                                     id="districtid">
                                            <form:option value="">---Chọn quận---</form:option>
                                            <form:options items="${districts}"></form:options>
                                        </form:select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Phường</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="ward" name="ward" value="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 "> Đường </label>
                                    <div class="col-xs-9">
<%--                                        <input class="form-control" type="text" id="street" name="street" value="">--%>
                                            <form:input class="form-control" path="street"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Kết cấu</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="structure" name="structure"value="">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3 ">Số tầng hầm</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="number" id="numberofbasement"
                                               name="numberofbasement" value="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Diện tích sàn</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="number" id="floorarea" name="floorarea" value="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Hướng</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="direction" name="direction" value="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Hạng</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="level" name="level" value="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Diện tích thuê</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="rentarea" name="rentarea" value="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Giá thuê </label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="rentprice" name="rentprice" value="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Mô tả giá</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="rentpricedescription"
                                               name="rentpricedescription" value="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Phí dịch vụ</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="servicefee" name="servicefee" value="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Phí oto</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="carfee" name="carfee" value="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Phí moto</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="motorbikefee" name="motorbikefee" value="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Phí ngoài giờ</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="overtimefee" name="overtimefee" value="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Tiền điện</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="electricityfee" name="electricityfee" value="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Loại tòa nhà</label>
                                    <div class="col-xs-9">
                                            <form:checkboxes items="${typeCodes}" path="typeCode"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3"> </label>
                                    <div class="col-xs-9">
                                        <c:if test="${not empty buildingEdit.id}">
                                            <button type="button" class="btn btn-primary" id="btnAddOrUpdateBuilding">
                                                Cập nhật toàn nhà
                                            </button>
                                            <button type="button" class="btn btn-primary" id="btnCancel">Hủy thao tác</button>
                                        </c:if>
                                        <c:if test="${empty buildingEdit.id}">
                                            <button type="button" class="btn btn-primary" id="btnAddOrUpdateBuilding">
                                                Thêm mới
                                            </button>
                                            <button type="button" class="btn btn-primary" id="btnCancel">Hủy thao tác </button>
                                        </c:if>
                                    </div>
                                </div>
                                <form:hidden path="id" id="buildingId"></form:hidden>
                            </form>
                        </div>
                    </form:form>

                </div>
            </div>
            <!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
</div><!-- /.main-container -->

<script>
    $('#btnAddOrUpdateBuilding').click(function () {
        var data = {};
        var typeCode = [];
        var formData = $('#listForm').serializeArray();
        console.log("OK");
        $.each(formData, function (i, v) {
            if (v.name != 'typeCode') {
                data["" + v.name + ""] = v.value;
            } else {
                typeCode.push(v.value);
            }
        })
        data['typeCode'] = typeCode;
        console.log("OK");
        // call api
        if(typeCode!=''){
            addOrUpdateBuilding(data);
        }else {
            window.location.href="/admin/building-edit?typeCode=require";
        }
    });
    function addOrUpdateBuilding(data){
        $.ajax({
            type: "POST",
            url: "${buildingAPI}",
            data: JSON.stringify(data),
            contentType: "application/json",
            dataType: "JSON",
            success: function (respond) {
                console.log("success");
            },
            error: function (respond) {
                console.log("fail");
                console.log(respond);
            }
        })
    }

    $('#btnCancel').click(function () {
        window.location.href="/admin/builiding-list";
    });

</script>

</body>
</html>
