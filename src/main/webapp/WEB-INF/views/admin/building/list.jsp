<%--
  Created by IntelliJ IDEA.
  User: lexua
  Date: 8/20/2025
  Time: 2:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%--khai báo thư viện--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var="buildingListURL" value="/admin/building-edit"></c:url>
<c:url var="buildingAPI" value="/api/building"/>


<html>
<head>
    <title>Danh sách toà nhà</title>
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

            <div class="page-content">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 widget-container-col ui-sortable" bis_skin_checked="1">
                        <!-- <div class="col-xs-12"></div> -->
                        <div class="widget-box ui-sortable-handle" bis_skin_checked="1">
                            <div class="widget-header" bis_skin_checked="1">
                                <h5 class="widget-title">Tìm kiếm tòa nhà</h5>

                                <div class="widget-toolbar" bis_skin_checked="1">
                                    <a href="#" data-action="collapse">
                                        <i class="ace-icon fa fa-chevron-up"></i>
                                    </a>
                                </div>
                            </div>

                            <div class="widget-body" bis_skin_checked="1"
                                 style="font-family:'Times New Roman', Times, serif">
                                <!-- text field phần tìm kiếm tòa nhà -->

                                <div class="widget-main">
                                    <form:form id="listForm" action="/admin/building-list" method="GET"
                                               modelAttribute="buildingSearchRequest">
                                        <div class="row">

                                            <div class="col-md-6">
                                                <label>Tên tòa nhà</label>
                                                    <%--                                                <input type="text" class="form-control" name="buildingName"--%>
                                                    <%--                                                       id="buildingName">--%>
                                                <form:input class="form-control" path="buildingName"/>
                                            </div>
                                            <div class="col-md-6">
                                                <label>Diện tích sàn</label>
                                                    <%--                                                <input type="number" class="form-control" name="floorArea"--%>
                                                    <%--                                                       id="floorArea">--%>
                                                <form:input class="form-control" path="floorArea"/>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-3">
                                                <label>Quận</label>
                                                <form:select path="district" class="form-control" name="district"
                                                             id="district">
                                                    <form:option value="">Chọn Quận</form:option>
                                                    <form:options items="${districts}"/>
                                                    <%--                                                    <option value="Quan_2">Quận 2</option>--%>
                                                    <%--                                                    <option value="Quan_3">Quận 3</option>--%>
                                                    <%--                                                    <option value="Quan_4">Quận 10</option>--%>
                                                </form:select>
                                            </div>
                                            <div class="col-md-4">
                                                <label>Phường</label>
                                                    <%-- <input type="text" class="form-control" name="ward" id="ward">--%>
                                                <form:input class="form-control" path="ward"/>
                                            </div>
                                            <div class="col-md-5">
                                                <label>Đường</label>
                                                    <%--  = <input type="text" class="form-control" name="street" id="street">--%>
                                                <form:input class="form-control" path="street"/>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-4">
                                                <label>Số tầng hầm</label>
                                                    <%--                                                <input type="number" class="form-control" name="numberOfBasement"--%>
                                                    <%--                                                       id="numberOfBasement">--%>
                                                <form:input class="form-control" path="numberOfBasement"/>
                                            </div>
                                            <div class="col-md-4">
                                                <label>Hướng</label>
                                                    <%--                                                <input type="text" class="form-control" name="direction" id="direction"--%>
                                                    <%--                                                       value="${buildingSearchRequest.direction}">--%>
                                                <form:input class="form-control" path="direction"/>
                                            </div>
                                            <div class="col-md-4">
                                                <label>Hạng</label>
                                                    <%--                                                <input type="text" class="form-control" name="level" id="level">--%>
                                                <form:input class="form-control" path="level"/>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-3">
                                                <label>Diện tích từ</label>
                                                    <%--                                                <input type="number" class="form-control" name="areaFrom" id="areaFrom">--%>
                                                <form:input class="form-control" path="areaFrom"/>
                                            </div>
                                            <div class="col-md-3">
                                                <label>Diện tích đến</label>
                                                    <%--   <input type="number" class="form-control" name="areaTo" id="areaTo">--%>
                                                <form:input class="form-control" path="areaTo"/>
                                            </div>
                                            <div class="col-md-3">
                                                <label>Giá thuê từ</label>
                                                    <%--                                                <input type="number" class="form-control" name="rentPriceFrom"--%>
                                                    <%--                                                       id="rentPriceFrom">--%>
                                                <form:input class="form-control" path="rentPriceFrom"/>
                                            </div>
                                            <div class="col-md-3">
                                                <label>Giá thuê đến</label>
                                                    <%--                                                <input type="number" class="form-control" name="rentPriceTo"--%>
                                                    <%--                                                       id="rentPriceTo">--%>
                                                <form:input class="form-control" path="rentPriceTo"/>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-5">
                                                <label>Tên quản lý</label>
                                                    <%--                                                <input type="text" class="form-control" name="managerName"--%>
                                                    <%--                                                       id="managerName">--%>
                                                <form:input class="form-control" path="managerName"/>

                                            </div>
                                            <div class="col-md-5">
                                                <label>Số điện thoại quản lý</label>
                                                    <%--                                                <input type="text" class="form-control" name="managerPhone"--%>
                                                    <%--                                                       id="managerPhone">--%>
                                                <form:input class="form-control" path="managerPhone"/>

                                            </div>
                                            <div class="col-md-2">
                                                <label>Nhân viên</label>
                                                <form:select class="form-control" name="staffId" id="staffId"
                                                             path="staffId">
                                                    <form:option value="">Chọn nhân viên</form:option>
                                                    <form:options items="${staffs}"/>
                                                    <%--                                                    <form:option value="2">Nguyễn Văn B</form:option>--%>
                                                </form:select>
                                            </div>
                                        </div>

                                        <div class="row" style="margin-top:10px;">
                                            <div class="col-md-12">
                                                <form:checkboxes items="${buildingTypeCodes}" path="typeCode"/>
                                                    <%--                                                <label class="checkbox-inline">--%>
                                                    <%--                                                    <input type="checkbox" name="typeCode"--%>
                                                    <%--                                                           value="NOI_THAT">--%>
                                                    <%--                                                    Nội thất--%>
                                                    <%--                                                </label>--%>
                                                    <%--                                                <label class="checkbox-inline"><input type="checkbox" name="typeCode"--%>
                                                    <%--                                                                                      value="NGUYEN_CĂN"> Nguyên--%>
                                                    <%--                                                    căn</label>--%>
                                                    <%--                                                <label class="checkbox-inline"><input type="checkbox" name="typeCode"--%>
                                                    <%--                                                                                      value="TANG_TRET"> Tầng--%>
                                                    <%--                                                    trệt</label>--%>
                                            </div>
                                        </div>

                                        <div class="row" style="margin-top:15px;">
                                            <div class="col-md-12">
                                                <button type="button" class="btn btn-xs btn-success"
                                                        id="btnSearchBuilding">
                                                    <i class="fa fa-search"></i> Tìm kiếm
                                                </button>
                                            </div>
                                        </div>
                                    </form:form>
                                    <%--                                    <form class="form-horizontal" role="form" id="searchBuildingForm">--%>
                                    <%--                                    </form>--%>
                                </div>
                            </div>

                            <div class="pull-right">
                                <a href="/admin/building-edit">
                                    <button type="button" class="btn btn-xs btn-primary">
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
                                        Thêm tòa nhà
                                    </button>
                                </a>


                                <button type="button" class="btn btn-xs btn-outline-danger" id="btnDeleteBuildings">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                         fill="currentColor" class="bi bi-building-fill-dash" viewBox="0 0 16 16">
                                        <path
                                                d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7M11 12h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1 0-1">
                                        </path>
                                        <path
                                                d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v7.256A4.5 4.5 0 0 0 12.5 8a4.5 4.5 0 0 0-3.59 1.787A.5.5 0 0 0 9 9.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .39-.187A4.5 4.5 0 0 0 8.027 12H6.5a.5.5 0 0 0-.5.5V16H3a1 1 0 0 1-1-1zm2 1.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3 0v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zM4 5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M7.5 5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm2.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M4.5 8a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z">
                                        </path>
                                    </svg>
                                    Xóa tòa nhà
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- bảng danh sách -->

                <div class="row">
                    <div class="col-xs-12">
                        <table id="tableList" class="table table-striped table-bordered table-hover">
                            <thead>
                            <tr>
                                <th class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace">
                                        <span class="lbl"></span>
                                    </label>
                                </th>
                                <!-- gán chưa đổ data từ server -->
                                <th>Tên tòa nhà</th>
                                <th>Địa chỉ</th>
                                <th>Số tầng hầm</th>
                                <th>Tên quản lý</th>
                                <th>Số điện thoại quản lý</th>
                                <th>Diện tích sàn</th>
                                <th>Diện tích trống</th>
                                <th>Diện tích thuê</th>
                                <th>Phí môi giới</th>
                                <th>Thao tác</th>

                                <th></th>
                            </tr>
                            </thead>

                            <tbody>
                            <c:forEach var="buildingItem" items="${buildingList}">
                                <tr>
                                    <td class="center">
                                        <label class="pos-rel">
                                            <input type="checkbox" name="buildingIds" value="${buildingItem.id}">
                                            <input type="hidden" name="buildingIds" value="${buildingItem.id}">


                                                <%--                                            <input type="checkbox" class="ace" value="${buildingItem.id}">--%>
                                            <span class="lbl"></span>

                                        </label>
                                    </td>

                                    <td>${buildingItem.buildingName}</td>
                                    <td>${buildingItem.address}</td>
                                    <td>${buildingItem.numberOfBasement}</td>
                                    <td>${buildingItem.managerName}</td>
                                    <td>${buildingItem.managerPhone}</td>
                                    <td>${buildingItem.floorArea}</td>
                                    <td>${buildingItem.emptyArea}</td>
                                    <td>${buildingItem.rentArea}</td>


                                    <td class="hidden-480">
                                        <span class="label label-sm label-warning">${buildingItem.brokerageFee}</span>
                                    </td>

                                    <td>
                                        <div class="hidden-sm hidden-xs btn-group" bis_skin_checked="1">
                                            <button class="btn btn-xs btn-success" title="Giao Tòa Nhà"
                                                    onclick="assignmentBuilding(${buildingItem.id})">
                                                <i class="ace-icon fa fa-check bigger-120"></i>
                                            </button>

                                            <a class="btn btn-xs btn-info" title="Chỉnh sửa tòa nhà"
                                               href="/admin/building-edit-${buildingItem.id}">
                                                <i class="ace-icon fa fa-pencil bigger-120"></i>
                                            </a>

                                            <button class="btn btn-xs btn-danger"
                                                    onclick="deleteBuilding(${buildingItem.id})">
                                                <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                            </button>

                                        </div>

                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
</div><!-- /.main-container -->

<!-- Modal -->
<div class="modal fade" id="assignmentBuildingModal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Danh Sách Nhân Viên</h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped table-bordered table-hover" id="staffList">
                    <thead>
                    <tr>
                        <th>Chọn</th>
                        <th>Tên Nhân Viên</th>
                    </tr>
                    </thead>

                    <tbody>

                    </tbody>
                </table>
                <!-- <p>Some text in the modal.</p> -->
                <input type="hidden" id="buildingId" value="10" name="buildingId">
            </div>
            <div class="modal-footer">
                <button type="button" id="btnAssignmentBuilding" class="btn btn-default" data-dismiss="modal">Giao
                    tòa nhà
                </button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
            </div>
        </div>

    </div>
</div>
<script>
    function assignmentBuilding(buildingId) {
        $('#assignmentBuildingModal').modal();
        $('#buildingId').val();
    }

    function loadStaff(buildingId) {
        $.ajax({
            type: "GET", // định nghĩa phương thức http
            // url: "http://localhost:8081/admin/building", // url api để gọi api
            url: "${buildingAPI}/" + buildingId + "/staffs", // url api để gọi api
            data: JSON.stringify(this.data),     // định dạng file dữ liệu gửi đến server
            contentType: "application/json",
            dataType: "JSON", // định dạng của respond
            success: function (result) {
                var row = '';
                $.each(result.data, function (index, item) {
                    row += '<tr>';
                    row += `<td class="center"> <input type="checkbox" value="${item.staffId}" ${item.checked}></td>`;
                    row += '<td>${item.fullName}</td>'
                    row += '</tr>'
                });
                $('#staffList tbody').html(row);
                console.info("Succes");
            },
            error: function (respond) {
                console.log("Đã thất bại!");
                window.location.href = "/admin/building-list?message=error";
                console.log(respond);
            }
        });
    }

    $('#btnAssignmentBuilding').click(function (e) {
        e.preventDefault();
        var data = {};
        data['buildingId'] = $('#buildingId').val(); // nhớ có thẻ input hidden id=buildingId
        var staffs = $('#staffList').find('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();

        data['staffs'] = staffs;
        console.log(data);
    });
    $('#btnSearchBuilding').click(function (e) {
        e.preventDefault();
        $(('#listForm')).submit();
    });

    function deleteBuilding(buildingId) {
        var id = [buildingId];
        $('#buildingId').val();
        deleteBuildings(id)
    }

    $('#btnDeleteBuildings').click(function (e) {
        e.preventDefault();
        var buildingIds = $('#tableList').find('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
        deleteBuildings(buildingIds);
    });

    function deleteBuildings(data) {
        $.ajax({
            type: "Delete", // định nghĩa phương thức http
            // url: "http://localhost:8081/admin/building", // url api để gọi api
            url: "${buildingAPI}/" + data, // url api để gọi api
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

</script>


</body>
</html>
<%--<tr>--%>
<%--    <td class="center">--%>
<%--        <input type="checkbox" name="checkbox_1" id="checkbox_1" value="1" checked>--%>
<%--    </td>--%>
<%--    <td>--%>
<%--        Nguyễn Văn A--%>
<%--    </td>--%>
<%--</tr>--%>

<%--<tr>--%>
<%--    <td class="center">--%>
<%--        <input type="checkbox" name="checkbox_2" id="checkbox_2" value="2">--%>
<%--    </td>--%>
<%--    <td>--%>
<%--        Nguyễn Văn B--%>
<%--    </td>--%>
<%--</tr>--%>