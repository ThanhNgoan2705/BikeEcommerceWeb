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
                    <p class="mb-0 float-md-start">Category Lists</p>
                    <button type="button" class="btn float-md-end" data-mdb-toggle="modal"
                            data-mdb-target="#addCategoryForm">
                        <i class="fa-solid fa-plus"> Add Category</i>
                    </button>
                </div>
                <div class="card-body">
                    <!-- Button trigger modal -->
                    <div class="table-responsive">
                        <table id="categoryTable" class="table table-hover flex-nowrap " style="width: 100%"></table>
                    </div>
                </div>
            </div>
        </section>

    </div>
    <!--section pagination-->
    <!--    add Category form-->
    <div class="modal fade" id="addCategoryForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="container-sm modal-dialog">
            <div class="h-100 gradient-custom">
                <div class="container py-5 h-100">
                    <form class="row g-3 needs-validation" accept-charset="UTF-8" novalidate action="/api/category"
                          method="post">
                        <div class="modal-title">
                            <h2 class="text-start text-black w-50">Add Category</h2>
                        </div>
                        <div class="col-md-12">
                            <label for="addNameCategory" class="form-label">Category Name</label>
                            <input type="text" class="form-control" id="addNameCategory" name="name" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="addShortId" class="form-label">Short Id</label>
                            <input type="text" class="form-control" id="addShortId" name="shortId" required>
                        </div>
                        <div class="col-md-6">
                            <label for="addLevel" class="form-label">Danh mục cấp</label>
                            <select class="form-select" id="addLevel" name="level" required>
                                <option selected disabled value="">Choose...</option>
                                <option>1</option>
                                <option>2</option>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid state.
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="addParentName" class="form-label">Danh Mục Cha</label>
                            <select class="form-select" id="addParentName" required>
                                <option selected disabled value="">Choose...</option>
                                <c:forEach items="${parentList}" var="category">
                                    <option name="${category.categoryId}">${category.categoryId}.${category.name}</option>
                                </c:forEach>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid state.
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-outline">
                                <textarea class="form-control border-2" name="description" id="addDescription" rows="4"
                                          style="background: white"></textarea>
                                <label class="form-label" for="addDescription">Description</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <!--Image-->
                            <div>
                                <div class="mb-4 d-flex justify-content-center">
                                    <img src="https://mdbootstrap.com/img/Photos/Others/placeholder.jpg"
                                         alt="example placeholder" style="width: 250px;"/>
                                </div>
                                <div class="d-flex justify-content-center">
                                    <div class="btn btn-primary btn-rounded">
                                        <label class="form-label text-white m-1" for="addImage">Choose file</label>
                                        <input type="file" class="form-control d-none" id="addImage"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <button class="btn btn-primary w-50 h-25 m-lg-auto " type="submit">Add Category
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--   see and edit Category form-->
    <div class="modal fade" id="editCategoryForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="container-sm modal-dialog">
            <div class="h-100 gradient-custom">
                <div class="container py-5 h-100">
                    <form class="row g-3 needs-validation" accept-charset="UTF-8" novalidate action="/api/category"
                          method="post">
                        <div class="modal-title">
                            <h2 class="text-start text-black w-50">Edit Category</h2>
                            <label class="text-bg-info w-50" for="categoryId">ID: </label>
                            <input type="text" class="text-bg-info" id="categoryId" name="categoryId">
                        </div>
                        <div class="col-md-12">
                            <label for="addNameCategory" class="form-label">Category Name</label>
                            <input type="text" class="form-control" id="editNameCategory" name="name" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="addShortId" class="form-label">Short Id</label>
                            <input type="text" class="form-control" id="editShortId" name="shortId" required>
                        </div>
                        <div class="col-md-6">
                            <label for="addLevel" class="form-label">Danh mục cấp</label>
                            <select class="form-select" id="editLevel" name="level" required>
                                <option selected disabled value="">Choose...</option>
                                <option>1</option>
                                <option>2</option>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid state.
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="addParentName" class="form-label">Danh Mục Cha</label>
                            <select class="form-select" id="editParentName" required>
                                <option selected disabled value="">Choose...</option>
                                <c:forEach items="${parentList}" var="category">
                                    <option name="${category.categoryId}">${category.categoryId}.${category.name}</option>
                                </c:forEach>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid state.
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-outline">
                                <textarea class="form-control border-2" name="description" id="editDescription" rows="4"
                                          style="background: white"></textarea>
                                <label class="form-label" for="addDescription">Description</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <!--Image-->
                            <div>
                                <div class="mb-4 d-flex justify-content-center">
                                    <img src="https://mdbootstrap.com/img/Photos/Others/placeholder.jpg"
                                         alt="example placeholder" style="width: 250px;"/>
                                </div>
                                <div class="d-flex justify-content-center">
                                    <div class="btn btn-primary btn-rounded">
                                        <label class="form-label text-white m-1" for="addImage">Choose file</label>
                                        <input type="file" class="form-control d-none" id="editImage"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <button class="btn btn-primary w-50 h-25 m-lg-auto " type="submit">Add Category
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>
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
    // datatable category
    $(document).ready(function () {
        let table = $('#categoryTable').DataTable({
            info: false,
            scrollX: true,
            "language": {
                "url": "//cdn.datatables.net/plug-ins/1.11.3/i18n/vi.json"
            },
            "ajax": {
                "url": "/api/category",
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
                    data: "categoryId"
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
                    title: 'Active',
                    data: "active",
                    render: function (data) {
                        if (data === true) {
                            return '<span class="badge bg-success">Active</span>'
                        } else {
                            return '<span class="badge bg-danger">Inactive</span>'
                        }
                    }
                },
                {
                    title: "level",
                    data: "level"
                },
                {
                    title: "Action",
                    data: 'id',
                    render: function (data) {
                        return '<button type="button" class="btn btn-primary btn-sm m-2 editButton" data-mdb-toggle="modal" data-mdb-target="#editCategoryForm"><i class="fa-solid fa-edit"></i></button>' +
                            '<button type="button" class="btn btn-danger btn-sm m-2 removeBtn" " ><i class="fa-solid fa-trash"></i></button>'
                    }
                }
            ]
        });
        $('#categoryTable tbody').on('click', 'tr', function () {
            let id = $(this).closest('tr').find('td:eq(0)').text();
            console.log(id);
        });

    });
    // remove category
    $(document).on('click', '.removeBtn', function () {
        var result = confirm("Bạn có chắc chắn muốn xóa không?");
        if (result === false) {
            return;
        }
        let id = $(this).closest('tr').find('td:eq(0)').text();
        console.log(id);
        $.ajax({
            url: '/api/category/' + id,
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
    // update category
    $(document).on('click','.editCategory',function () {
        // enable input to edit
        $('#editNameCategory').prop('disabled', false);
        $('#editLevel').prop('disabled', false);
        $('#editParentName').prop('disabled', false);
        $('#editDescription').prop('disabled', false);
        $('#editImage').prop('disabled', false);
        $('#editShortId').prop('disabled', false);
        $('.submit').prop('disabled', false);
    })
    // see category
    $(document).on('click','.editButton', function (){
        let id = $(this).closest('tr').find('td:eq(0)').text();
        console.log(id);
        $.ajax({
            url: '/api/category/' + id,
            type: 'GET',
            success: function (result) {
                console.log(result);
                $('#editCategoryForm').modal('show');

                $('#editNameCategory').text(result.name);
                $('#editLevel').text(result.level);
                $('#editParentName').text(result.parentId);
                $('#editDescription').text(result.description);
                $('#editImage').attr('src', result.image);
                $('#editShortId').text(result.shortId);
            }
        })
    })
</script>
</body>
</html>