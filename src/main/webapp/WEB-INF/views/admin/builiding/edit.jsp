<%--
  Created by IntelliJ IDEA.
  User: Tutran
  Date: 4/15/2025
  Time: 7:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Thêm Tòa Nhà</title>
</head>
<body>
<div class="main-content" id="main-container">
    <script type="text/javascript">
        try{ace.settings.check('main-container' , 'fixed')}catch(e){}
    </script>

    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
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
                            <form class="form-horizontal" role="form" id="form-edit">
                                <div class="form-group">
                                    <label class="col-xs-3 ">Tên tòa nhà</label>
                                    <div class="col-xs-9">
                                        <form:input path="name" class="form-control"></form:input>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Tên quận</label>
                                    <div class="col-xs-9">
                                        <select class="form-control" id="districtid" name="districtid">
                                            <option value="">---Chọn quận---</option>
                                            <option value="1">Quận 1</option>
                                            <option value="2">Quận 2</option>
                                            <option value="3">Quận 3</option>
                                            <option value="4">Quận 4</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Phường</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="ward" name="ward">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 "> Đường </label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="street" name="street">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Kết cấu</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="structure" name="structure">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3 ">Số tầng hầm</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="number" id="numberofbasement" name="numberofbasement">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Diện tích sàn</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="number" id="floorarea" name="floorarea">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Hướng</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="direction" name="direction">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Hạng</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="level" name="level">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Diện tích thuê</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="rentarea" name="rentarea">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Giá thuê </label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="rentprice" name="rentprice">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Mô tả giá</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="rentpricedescription" name="rentpricedescription">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Phí dịch vụ</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="servicefee" name="servicefee">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Phí oto</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="carfee" name="carfee">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Phí moto</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="motorbikefee" name="motorbikefee">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Phí ngoài giờ</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="overtimefee" name="overtimefee">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Tiền điện</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="electricityfee" name="name">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Loại tòa nhà</label>
                                    <div class="col-xs-9">
                                        <label class="checkbox-inline">
                                            <input type="checkbox" id="typeCode1" name="typeCode" value="noi-that"> Nội thất
                                        </label>
                                        <label class="checkbox-inline">
                                            <input type="checkbox" id="typeCode2" name="typeCode" value="nguyen-can"> Nguyên căn
                                        </label>
                                        <label class="checkbox-inline">
                                            <input type="checkbox" id="typeCode3" name="typeCode" value="tang-tret"> Tầng Trệt
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3"> </label>
                                    <div class="col-xs-9">
                                        <c:if test="${not empty buildingEdit.id}">
                                        <button type="button" class="btn btn-primary" id="btnAddbuiliding">Cap nhat toa nha</button>
                                        <button type="button" class="btn btn-primary">Hủy toàn nhà</button>
                                        </c:if>
                                        <c:if test="${empty buildingEdit.id}">
                                            <button type="button" class="btn btn-primary" id="btnAddbuiliding">Them toa nha</button>
                                            <button type="button" class="btn btn-primary">Hủy toàn nhà</button>
                                        </c:if>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </form:form>

                </div>
            </div>
            <!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
</div><!-- /.main-container -->
</body>
</html>
