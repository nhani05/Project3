<%--
  Created by IntelliJ IDEA.
  User: lexua
  Date: 8/22/2025
  Time: 9:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var="buildingAPI" value="/api/building"/>
<html>
<head>
    <title>Thêm tòa nhà</title>
</head>
<body>
<div class="main-content">
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
                        <a href="#">Trang chủ</a>
                    </li>
                    <li class="active">Quản lý</li>
                </ul><!-- /.breadcrumb -->
            </div>

            <div class="page-content" style="font-family: 'Times New Roman', Times, serif;">
                <%--                <div class="page-header">--%>
                <%--                    <h1>--%>
                <%--                        Chỉnh sửa tòa nhà--%>
                <%--                    </h1>--%>
                <%--                </div><!-- /.page-header -->--%>

                <div class="row">
                    <div class="col-xs-12 col-sm-12 widget-container-col ui-sortable" bis_skin_checked="1">
                        <%--                        <h3 class="widget-title" style="color:#0a58ca">Chỉnh sửa tòa nhà</h3>--%>
                        <!-- <div class="col-xs-12"></div> -->
                        <%--                        <form class="form-horizontal" role="form" id="form-edit">--%>
                        <form:form modelAttribute="buildingEdit" id="listForm" method="GET">
                            <div class="form-group">
                                <label for="" class="col-xs-3">Tên tòa nhà</label>
                                <div class="col-xs-9">
                                    <form:input path="buildingName" class="form-control" type="text" name="name"
                                                id="name"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-xs-3">Quận</label>
                                <div class="col-xs-9">
                                    <form:select path="district" class="form-control" name="districtId"
                                                 id="dicstrictId">
                                        <form:option value="">Chọn Quận</form:option>
                                        <form:options items="${districts}"/>
                                        <%--                                        <option value="2">Quận 2</option>--%>
                                        <%--                                        <option value="3">Quận 3</option>--%>
                                        <%--                                        <option value="4">Quận 4</option>--%>
                                    </form:select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-xs-3">Phường</label>
                                <div class="col-xs-9">
                                    <form:input path="buildingName" class="form-control" type="text" name="ward"
                                                id="ward"/>
                                </div>
                            </div>


                            <div class="form-group">
                                <label for="" class="col-xs-3">Đường</label>
                                <div class="col-xs-9">
                                    <form:input path="street" class="form-control" type="text" name="street"
                                                id="street"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-xs-3">Kết cấu</label>
                                <div class="col-xs-9">
                                    <form:input path="structure" class="form-control" type="text" name="structure"
                                                id="structure"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-xs-3">Số tầng hầm</label>
                                <div class="col-xs-9">
                                    <form:input path="numberOfBasement" class="form-control" type="text"
                                                name="numberOfBasement"
                                                id="numberOfBasement"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-xs-3">Diện tích sàn</label>
                                <div class="col-xs-9">
                                    <form:input path="floorArea" class="form-control" type="text" name="floorArea"
                                                id="floorArea"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-xs-3">Hướng</label>
                                <div class="col-xs-9">
                                    <form:input path="direction" class="form-control" type="text" name="direction"
                                                id="direction"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-xs-3">Hạng</label>
                                <div class="col-xs-9">
                                    <form:input path="level" class="form-control" type="text" name="level" id="level"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-xs-3">Diện tích thuê</label>
                                <div class="col-xs-9">
                                    <form:input path="rentPrice" class="form-control" type="number" name="rentArea"
                                                id="rentArea"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-xs-3">Giá thuê</label>
                                <div class="col-xs-9">
                                    <form:input path="rentPrice" class="form-control" type="number" name="rentPrice"
                                                id="rentPrice"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-xs-3">Mô tả giá</label>
                                <div class="col-xs-9">
                                    <form:input path="rentPriceDescription" class="form-control" type="text"
                                                name="rentPriceDescription"
                                                id="rentPriceDescription"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-xs-3">Phí dịch vụ</label>
                                <div class="col-xs-9">
                                    <form:input path="serviceFee" class="form-control" type="number" name="serviceFee"
                                                id="serviceFee"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-xs-3">Phí ô tô</label>
                                <div class="col-xs-9">
                                    <form:input path="carFee" class="form-control" type="number" name="carFee"
                                                id="carFee"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-xs-3">Phí mô tô</label>
                                <div class="col-xs-9">
                                    <form:input path="motoFee" class="form-control" type="number" name="motoFee"
                                                id="motoFee"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-xs-3">Phí ngoài giờ</label>
                                <div class="col-xs-9">
                                    <form:input path="overtimeFee" class="form-control" type="number" name="overtimeFee"
                                                id="overtimeFee"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-xs-3">Tiền điện</label>
                                <div class="col-xs-9">
                                    <form:input path="electricityFee" class="form-control" type="number"
                                                name="electricityFee"
                                                id="electricityFee"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-xs-3">Đặt cọc</label>
                                <div class="col-xs-9">
                                    <form:input path="deposit" class="form-control" type="number" name="deposit"
                                                id="deposit"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-xs-3">Thanh toán</label>
                                <div class="col-xs-9">
                                    <form:input path="payment" class="form-control" type="number" name="payment"
                                                id="payment"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-xs-3">Thời hạn thuê</label>
                                <div class="col-xs-9">
                                    <form:input path="rentTime" class="form-control" type="number" name="rentTime"
                                                id="rentTime"/>
                                </div>
                            </div>


                            <div class="form-group">
                                <label for="" class="col-xs-3">Thời gian trang trí</label>
                                <div class="col-xs-9">
                                    <form:input path="decorationTime" class="form-control" type="text"
                                                name="decorationTime"
                                                id="decorationTime"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-xs-3">Tên quản lý</label>
                                <div class="col-xs-9">
                                    <form:input path="managerName" class="form-control" type="text" name="managerName"
                                                id="managerName"/>
                                </div>
                            </div>


                            <div class="form-group">
                                <label for="" class="col-xs-3">Số điện thoại quản lý</label>
                                <div class="col-xs-9">
                                    <form:input path="managerPhone" class="form-control" type="text"
                                                name="mangagerPhone"
                                                id="mangagerPhone"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-xs-3">Phí môi giới</label>
                                <div class="col-xs-9">
                                    <form:input path="brokerageFee" class="form-control" type="number"
                                                name="brokerageFee" id="brokerageFee"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-xs-3">Loại tòa nhà</label>
                                <div class="col-xs-9">
                                    <form:checkboxes path="typeCode" items="${buildingTypeCodes}"/>
                                        <%--                                    <label for="" class="checkbox-inline">--%>
                                        <%--                                        <input type="checkbox" name="typeCode" value="NOI_THAT">Nội thất--%>
                                        <%--                                    </label>--%>
                                        <%--                                    <label for="" class="checkbox-inline">--%>
                                        <%--                                        <input type="checkbox" name="typeCode" value="NGUYEN_CAN">Nguyên căn--%>
                                        <%--                                    </label>--%>
                                        <%--                                    <label for="" class="checkbox-inline">--%>
                                        <%--                                        <input type="checkbox" name="typeCode" value="TANG_TRET">Tầng trệt--%>
                                        <%--                                    </label>--%>
                                </div>
                            </div>
                            <form:hidden path="id" id="buildingId"/>


                            <%--                            <div class="form-group">--%>
                            <%--                                <label for="" class="col-xs-3">Ghi chú</label>--%>
                            <%--                                <div class="col-xs-9">--%>
                            <%--                                    <input class="form-control" type="text" name="note" id="note">--%>
                            <%--                                </div>--%>
                            <%--                            </div>--%>

                            <%--                            <div class="form-group">--%>
                            <%--                                <label for="" class="col-xs-3">Hình đại diện</label>--%>
                            <%--                                <div class="col-xs-9">--%>
                            <%--                                    <input class="form-control" type="text" name="avatar" id="avatar">--%>
                            <%--                                </div>--%>
                            <%--                            </div>--%>
                        </form:form>

                        <div class="col-xs-12">
                            <div class="col-xs-9">
                                <button type="button" class="btn btn-primary" id="btnAddOrUpdateBuilding">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                         fill="currentColor" class="bi bi-building-add" viewBox="0 0 16 16">
                                        <path
                                                d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0">
                                        </path>
                                        <path
                                                d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z">
                                        </path>
                                        <path
                                                d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z">
                                        </path>
                                    </svg>
                                    Xác nhận thêm/xóa tòa nhà
                                </button>


                                <button type="button" class="btn btn-primary" id="btnCancelAction">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                         fill="currentColor" class="bi bi-building-fill-dash" viewBox="0 0 16 16">
                                        <path
                                                d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7M11 12h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1 0-1">
                                        </path>
                                        <path
                                                d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v7.256A4.5 4.5 0 0 0 12.5 8a4.5 4.5 0 0 0-3.59 1.787A.5.5 0 0 0 9 9.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .39-.187A4.5 4.5 0 0 0 8.027 12H6.5a.5.5 0 0 0-.5.5V16H3a1 1 0 0 1-1-1zm2 1.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3 0v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zM4 5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M7.5 5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm2.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M4.5 8a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z">
                                        </path>
                                    </svg>
                                    Hủy thao tác
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
</div><!-- /.main-container -->

<script>
    $('#btnAddOrUpdateBuilding').click(function () {
        // sử dụng js để lấy data và chuẩn hóa về dạng json
        var data = {};
        var typeCode = [];
        var formData = $('#listForm').serializeArray();
        // console.log('OK');
        $.each(formData, function (i, v) {
            if (v.name != 'typeCode') {
                data["" + v.name + ""] = v.value;
            } else {
                typeCode.push(v.value);
            }
        })
        data['typeCode'] = typeCode;
        // if (typeCode.length == 0) {
        //     alert("Vui long nhap kieu toa nha!");
        //     return;
        // }

        addBuilding(data);

        // if (data['id'] == '') {
        //     addBuilding(data);
        // } else {
        //     updateBuilding(data);
        // }
        // console.log('OK');
    });

    function addBuilding(data) {
        // call api : sử dụng ajax jquery
        $.ajax({
            type: "POST", // định nghĩa phương thức http
            url: "${buildingAPI}", // url api để gọi api http://localhost:8081/api/building
            data: JSON.stringify(data),     // định dạng file dữ liệu gửi đến server
            contentType: "application/json",
            dataType: "JSON", // định dạng của respond
            success: function (result) {
                console.log("Đã thành công!");
            },
            error: function (respond) {
                console.log("Đã thất bại!");
                console.log(respond);
            }
        });
    }

    function updateBuilding(data) {
        // call api : sử dụng ajax jquery
        $.ajax({
            type: "PUT", // định nghĩa phương thức http
            // url: "http://localhost:8081/admin/building", // url api để gọi api
            url: "${buildingAPI}/{id}", // url api để gọi api
            data: JSON.stringify(data),     // định dạng file dữ liệu gửi đến server
            contentType: "application/json",
            dataType: "JSON", // định dạng của respond
            success: function (result) {
                console.log("Đã thành công!");
            },
            error: function (respond) {
                console.log("Đã thất bại!");
                console.log(respond);
            }
        });
    }

    $('#btnCancelAction').click(function () {
        window.location.href = "/admin/building-list";
    });

</script>

</body>
</html>
