<%--
  Created by IntelliJ IDEA.
  User: lexua
  Date: 8/22/2025
  Time: 10:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="/admin/home" style="text-decoration: none">
                        Trang chủ
                    </a>
                </li>
                <li class="active">Danh sách tòa nhà</li>
            </ul>
        </div>

        <div class="page-content">
            <div class="col-xs-12">
                <div class="widget-box ui-sortable-handle">
                    <div class="widget-header">
                        <h5 class="widget-title">Tìm kiếm</h5>
                        <div class="widget-toolbar">
                            <a href="#" data-action="collapse">
                                <i class="ace-icon fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>

                    <div class="widget-body" style="display: block;">
                        <div class="widget-main">
                            <form id="listForm" method="GET">
                                <div class="building-search-text">
                                    <div class="input-container">
                                        <label>Tên tòa nhà</label><br>
                                        <input type="text" name="name">
                                    </div>
                                </div>

                                <div class="building-search-text">
                                    <div class="input-container">
                                        <div class="select-container">
                                            <label>Quận</label><br>
                                            <select name="district">
                                                <option value="">---Chọn Quận---</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="input-container">
                                        <label>Phường</label><br>
                                        <input type="text" name="ward">
                                    </div>

                                    <div class="input-container">
                                        <label>Đường</label><br>
                                        <input type="text" name="street">
                                    </div>
                                </div>

                                <div class="building-search-number">
                                    <div class="input-container">
                                        <label>Diện tích sàn</label><br>
                                        <input type="number" name="floorArea">
                                    </div>
                                    <div class="input-container">
                                        <label>Diện tích thuê từ</label><br>
                                        <input type="number" name="areaFrom">
                                    </div>
                                    <div class="input-container">
                                        <label>Diện tích thuê đến</label><br>
                                        <input type="number" name="areaTo">
                                    </div>
                                    <div class="input-container">
                                        <label>Giá thuê từ</label><br>
                                        <input type="number" name="rentPriceFrom">
                                    </div>
                                    <div class="input-container">
                                        <label>Giá thuê đến</label><br>
                                        <input type="number" name="rentPriceTo">
                                    </div>
                                </div>

                                <div class="building-search-text">
                                    <div class="input-container">
                                        <label>Hạng</label><br>
                                        <input type="number" name="level">
                                    </div>
                                    <div class="input-container">
                                        <label>Tên quản lý</label><br>
                                        <input type="text" name="managerName">
                                    </div>
                                    <div class="input-container">
                                        <label>Số điện thoại quản lý</label><br>
                                        <input type="text" name="managerPhone">
                                    </div>
                                </div>

                                <div class="building-search-select">
                                    <div class="select-container">
                                        <select name="staffId">
                                            <option value="">---Chọn nhân viên---</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="building-search-check">
                                    <label>Loại tòa nhà</label><br>
                                    <input type="checkbox" name="typeCode" value="OFFICE"> Văn phòng
                                    <input type="checkbox" name="typeCode" value="SHOP"> Cửa hàng
                                </div>

                                <div style="width: fit-content; margin: 0 auto">
                                    <button class="submit-btn no-select" type="button" id="btnSearchBuilding">
                                        <i class="fa-solid fa-magnifying-glass" style="color: #fff;"></i>
                                        Tìm Kiếm
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="pull-left" style="margin-top: 2rem; margin-bottom: 1rem;">
                        <button class="btn btn-danger" title="xóa tòa nhà" id="deleteBuildingsBtn" disabled>
                            Xóa
                        </button>
                        <a href="/admin/building-edit">
                            <button class="btn btn-info" title="thêm tòa nhà">
                                Thêm
                            </button>
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-xs-12">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover" id="tableList"
                           style="text-align: center;">
                        <thead>
                        <tr>
                            <th><input type="checkbox" id="checkAll"></th>
                            <th>Tên tòa nhà</th>
                            <th>Địa chỉ</th>
                            <th>Số tầng hầm</th>
                            <th>Tên quản lý</th>
                            <th>SĐT quản lý</th>
                            <th>Diện tích sàn</th>
                            <th>Diện tích thuê</th>
                            <th>Giá thuê</th>
                            <th>Phí môi giới</th>
                            <th>Thao tác</th>
                        </tr>
                        </thead>
                        <tbody>
                        <!-- dữ liệu sẽ load bằng JS -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div><!-- /.page-content -->
    </div>
</div><!-- /.main-content -->

<!-- Modal giao tòa nhà -->
<div class="modal fade" role="dialog" id="assignmentBuildingModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Danh Sách Nhân Viên</h4>
            </div>

            <div class="modal-body">
                <table class="table table-striped table-bordered table-hover" id="staffList">
                    <thead>
                    <tr>
                        <th style="text-align: center;">Chọn</th>
                        <th>Tên nhân viên</th>
                    </tr>
                    </thead>
                    <tbody></tbody>
                </table>
                <input type="hidden" id="buildingId" value="">
            </div>

            <div class="modal-footer">
                <button type="button" class="my-button-apply" id="btnAssignmentBuilding">Giao Tòa Nhà</button>
                <button type="button" class="my-button-cancel" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal xác nhận xóa -->
<div class="modal fade" role="dialog" id="deleteConfirmModal">
    <div class="modal-dialog">
        <div class="modal-content" style="padding: 15px">
            <h1>Bạn có chắc chắn muốn xóa tòa nhà</h1>
            <div class="modal-footer">
                <button type="button" class="my-button-apply" id="deleteBtn">Xóa</button>
                <button type="button" class="my-button-cancel" data-dismiss="modal">Hủy</button>
            </div>
        </div>
    </div>
</div>

<!-- Alert -->
<div id="customAlertBackdrop" class="custom-alert-backdrop"></div>
<div id="customAlert" class="custom-alert">
    <span id="customAlertMessage" class="custom-alert-message"></span>
    <button id="customAlertButton" class="custom-alert-button">OK</button>
</div>
</body>
</html>
