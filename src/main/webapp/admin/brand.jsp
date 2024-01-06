<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover">
    <base target="_parent">
    <%--    fontAwesome--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
          integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&amp;display=swap">
    <link rel="stylesheet" href="/admin/assert/css/all.min.css">
    <link rel="stylesheet" href="/admin/assert/css/mdb.min.css">
    <link rel="stylesheet" href="/admin/assert/css/home.css">
</head>
<body>
<!--Main Navigation-->
<%@include file="/admin/default/header.jsp" %>
<!--Main Navigation-->

<!--Main layout-->
<main class="mb-5">
    <!-- Container for demo purpose -->

    <!--Section: Content-->
    <div class="container px-4">
        <section class="">
            <div class="card shadow-0 text-center">
                <div class="card-header py-3 justify-content-center ">
                    <p class="mb-0 float-md-start">Brand Lists</p>
                    <button type="button" class="btn float-md-end" data-mdb-toggle="modal"
                            data-mdb-target="#addBrandForm">
                        <i class="fa-solid fa-plus"> Add Brand</i>
                    </button>
                </div>
                <div class="card-body">
                    <!--   table Brand-->
                    <div class="table-responsive">
                        <table id="brandTable" class="table table-hover flex-nowrap align-middle mb-0 bg-white "
                               style="width: 100%"></table>
                    </div>
                </div>
            </div>
        </section>

    </div>

    <!--    add Brand form-->
    <div class="modal fade" id="addBrandForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="container-sm modal-dialog">
            <div class="h-100 gradient-custom">
                <div class="container py-5 h-100">
                    <form class="row g-3 needs-validation" accept-charset="UTF-8" novalidate action="/api/brand"
                          method="post">
                        <div class="modal-title">
                            <h2 class="text-start text-black w-50">Add Brand</h2>
                        </div>
                        <div class="col-md-12">
                            <label for="addNameBrand" class="form-label">Brand Name</label>
                            <input type="text" class="form-control" id="addNameBrand" name="name" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="addAddress" class="form-label">Address</label>
                            <input type="text" class="form-control" id="addAddress" name="address" required>
                        </div>
                        <div class="col-md-6">
                            <label for="addEmail" class="form-label">Email</label>
                            <input type="text" class="form-control" id="addEmail" name="email" required>
                        </div>
                        <div class="col-md-6">
                            <label for="addPhone" class="form-label">Phone</label>
                            <input type="text" class="form-control" id="addPhone" name="phone" required>
                        </div>
                        <div class="col-md-6">
                            <div class="form-outline">
                                <textarea class="form-control border-2" name="description" id="addDescription" rows="4"
                                          style="background: white"></textarea>
                                <label class="form-label" for="addDescription">Description</label>
                            </div>
                        </div>
                        <div class="col-md-12 ">
                           <c:if test='${not haveUser}'>
                                <div class="alert alert-danger" role="alert">
                                    <i class="fa-solid fa-exclamation-circle"></i>
                                    <strong>Warning!</strong> You don't have any user in system. Please add user first
                                </div>
                           <button class="btn btn-primary float-md-end" type="button" disabled>
                                <i class="fa-solid fa-plus"> Add Brand</i>
                            </button>
                            </c:if>
                            <c:if test='${haveUser}'>
                                <button class="btn btn-primary float-md-end" type="submit">
                                    <i class="fa-solid fa-plus"> Add Brand</i>
                                </button>
                            </c:if>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--    add Brand form-->

    <!--    edit Brand form-->
    <div class="modal fade" id="editBrandForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="container-sm modal-dialog">
            <div class="h-100 gradient-custom">
                <div class="container py-5 h-100">
                    <form class="row g-3 needs-validation" accept-charset="UTF-8" novalidate
                          method="post">
                        <div class="modal-title">
                            <h2 class="text-start text-black w-50">Edit Brand</h2>
                        </div>
                        <div class="col-md-12">
                            <label for="editNameBrand" class="form-label">Brand Name</label>
                            <input type="text" class="form-control" id="editNameBrand" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="editAddress" class="form-label">Address</label>
                            <input type="text" class="form-control" id="editAddress"  required>
                        </div>
                        <div class="col-md-6">
                            <label for="editEmail" class="form-label">Email</label>
                            <input type="text" class="form-control" id="editEmail"  required>
                        </div>
                        <div class="col-md-6">
                            <label for="editPhone" class="form-label">Email</label>
                            <input type="text" class="form-control" id="editPhone" required>
                        </div>
                        <div class="col-md-6">
                            <div class="form-outline">
                                <textarea class="form-control border-2"  id="editDescription" rows="4"
                                          style="background: white"></textarea>
                                <label class="form-label" for="editDescription">Description</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <c:if test='${not haveUser}'>
                                <div class="alert alert-danger" role="alert">
                                    <i class="fa-solid fa-exclamation-circle"></i>
                                    <strong>Warning!</strong> You don't have any user in system. Please add user first
                                </div>
                                <button class="btn btn-primary float-md-end" type="button" disabled>
                                    <i class="fa-solid fa-plus"> Edit Brand</i>
                                </button>
                            </c:if>
                            <c:if test='${haveUser}'>
                                <button class="btn btn-primary float-md-end" type="submit">
                                    <i class="fa-solid fa-plus"> Edit
                            </c:if>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--    add Brand form-->


</main>
<!--Main layout-->

<!--Footer-->
<footer></footer>
<!--Footer-->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.13.7/js/dataTables.bootstrap5.min.js"></script>
<script type="text/javascript"
        src="/admin/assert/js/mdb.min.js"></script>
<script src="/admin/assert/js/all.min.js"></script>
<script src="/admin/assert/js/chart.min.js"></script>
<script>
    // datatable brand
    $(document).ready(function () {
        let table = $('#brandTable').DataTable({
            info: false,
            scrollX: true,
            "language": {
                "url": "//cdn.datatables.net/plug-ins/1.11.3/i18n/vi.json"
            },
            "ajax": {
                "url": "/api/brand",
                "type": "GET",
                "dataType": "json",
                "contentType": "application/json",
                "data": function (d) {
                    console.log(d);
                    var query = $.param(d);
                    return query;
                },
                "dataSrc": ""
            },
            "columns": [
                {
                    title: "ID",
                    data: "brandId"
                },
                {
                    title: "Name",
                    data: "name"
                },
                {
                    title: "Description",
                    data: "description"
                },
                {
                    title: 'Phone',
                    data: "phone",
                },
                {
                    title: "Email",
                    data: "email"
                },
                {
                    title: "Action",
                    data: 'brandId',
                    render: function (data) {
                        return '<button type="button" class="btn btn-primary btn-sm m-2 editButton" data-mdb-toggle="modal" data-mdb-target="#editBrandForm"><i class="fa-solid fa-edit"></i></button>' +
                            '<button type="button" class="btn btn-danger btn-sm m-2 removeBtn" " ><i class="fa-solid fa-trash"></i></button>'
                    }
                }
            ]
        });
        $('#BrandTable tbody').on('click', 'tr', function () {
            let id = $(this).closest('tr').find('td:eq(0)').text();
            console.log(id);
        });

    });
    // remove brand
    $(document).on('click', '.removeBtn', function () {
        var result = confirm("Bạn có chắc chắn muốn xóa không?");
        if (result === false) {
            return;
        }
        let id = $(this).closest('tr').find('td:eq(0)').text();
        console.log(id);
        $.ajax({
            url: '/api/brand/' + id,
            type: 'DELETE',
            success: function (result) {
                if (result === "success") {
                    alert('Xóa thành công');
                    // remove  this row
                    $(this).closest('tr').remove();
                    location.reload();
                } else {
                    alert('Xóa thất bại');
                }
            }
        })
    });
    //update brand
    $(document).on('click', '.editBrand', function () {
        // enable input to edit
        $('#editNameBrand').prop('disabled', false);
        $('#editAddress').prop('disabled', false);
        $('#editEmail').prop('disabled', false);
        $('#editPhone').prop('disabled', false);
        $('#editDescription').prop('disabled', false);
        // change button
        $('.btnControl').html('<button class="btn btn-primary w-50 h-25 m-lg-auto submit" type="button">Submit</button>');
        $(document).on('click', '.submit', function () {
           let id = $(this).closest('tr').find('td:eq(0)').text();
            let name = $('#editNameBrand').val();
            let address = $('#editAddress').val();
            let email = $('#editEmail').val();
            let phone = $('#editPhone').val();
            let description = $('#editDescription').val();
            let data = {
                brandId: id,
                name: name,
                address: address,
                email: email,
                phone: phone,
                description: description
            }
            console.log("post:" + data);
            $.ajax({
                url: '/api/brand',
                type: 'POST',
                data: data,
                success: function (result) {
                    if (result === "update success") {
                        alert('Cập nhật thành công');
                        location.reload();
                    } else {
                        alert('Cập nhật thất bại');
                    }
                }
            })
        })
    })
    // see brand
    $(document).on('click', '.editButton', function () {
        let id = $(this).closest('tr').find('td:eq(0)').text();
        console.log(id);
        $.ajax({
            url: '/api/brand/' + id,
            type: 'GET',
            dataType: 'json',
            contentType: 'application/json',
            success: function (data) {
                console.log(data);
                $('#editNameBrand').val(data.name).prop('disabled', true);
                $('#editAddress').val(data.address).prop('disabled', true);
                $('#editEmail').val(data.email).prop('disabled', true);
                $('#editPhone').val(data.phone).prop('disabled', true);
                $('#editDescription').val(data.description).prop('disabled', true);
            }
        })
    })
</script>
</body>
</html>