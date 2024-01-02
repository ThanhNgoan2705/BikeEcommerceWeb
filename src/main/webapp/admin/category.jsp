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

    <!--seeDetailCategory-->
    <div class="modal fade " id="seeDetail" tabindex="-1"
         aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="container-lg modal-dialog">
            <div class="h-100 gradient-custom">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-lg-12 col-xl-10">
                            <div class="card" style="border-radius: 10px;">
                                <div class="card-header px-4 py-5">
                                    <h5 class="text-muted mb-0" style="color: #a8729a;">Name Category
                                    </h5>
                                </div>
                                <div class="card-body p-4">
                                    <div class="d-flex justify-content-sm-between ">
                                        <ul>
                                            <h2><span><b>Mô Tả Cơ Bản</b></span></h2>
                                            <li><span> <b>Tên Loại</b> </span> <span>Xe đạp điện</span></li>
                                        </ul>
                                        <div class="col-md-6">
                                            <img width="200" height="200"
                                                 src="https://catani-bicycle.com/wp-content/uploads/2022/04/Header-Logo-Black-and-White.png"
                                                 class="header_logo header-logo" alt="Catani Bicycle">
                                        </div>

                                    </div>
                                    <h2><span><b>Mô Tả Chi Tiết</b></span></h2>
                                    <div class="d-flex justify-content-center ">
                                        <p class="text-muted mb-0">
                                            Dần dần với sự phát triển của xã hội và nhu cầu ngày càng cao của người tiêu
                                            dùng, hãng đã quyết định làm đa dạng hơn các sản phẩm của mình.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- see detail Category -->

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
    <!--    edit Category form-->
    <div class="modal fade" id="editCategoryForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="container-sm modal-dialog">
            <div class="h-100 gradient-custom">
                <div class="container py-5 h-100">
                    <form class="row g-3 needs-validation" novalidate accept-charset="UTF-8" novalidate>
                        <div class="modal-title">
                            <h2 class="text-start text-black w-50">Add Category</h2>
                        </div>
                        <div class="col-md-12">
                            <label for="addNameCategory" class="form-label">Category Name</label>
                            <input type="text" class="form-control" id="editNameCategory" value="Mark" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="addLevel" class="form-label">Danh mục cấp</label>
                            <select class="form-select" id="editLevel" required>
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
                                <option>xe đạp</option>
                                <option>xe diện</option>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid state.
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-outline">
                                <textarea class="form-control border-2" id="editDescription" rows="4"
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
                            <button class="btn btn-primary w-50 h-25 m-lg-auto editCategory">Add Category
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
                        return '<button type="button" class="btn btn-primary btn-sm " data-mdb-toggle="modal" data-mdb-target="#seeDetail"><i class="fa-solid fa-eye"></i></button>' +
                            '<button type="button" class="btn btn-primary btn-sm" data-mdb-toggle="modal" data-mdb-target="#editCategoryForm"><i class="fa-solid fa-edit"></i></button>' +
                            '<button type="button" class="btn btn-danger btn-sm removeBtn" " ><i class="fa-solid fa-trash"></i></button>'
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
    // add category
    $(document).on('click','.editCategory',function () {
        let id = $(this).closest('tr').find('td:eq(0)').text();
        let name = $('#editNameCategory').val();
        let level = $('#editLevel').val();
        let parentId = $('#editParentName').val().substring(0, 1);
        let description = $('#editDescription').val();
        let image = $('#editImage').val();
        let shortId = $('#editShortId').val();
        console.log(id);
        $.ajax({
            url: '/api/category/' + id,
            type: 'POST',
            data: JSON.stringify({
                name: name,
                level: level,
                parentId: parentId,
                description: description,
                image: image,
                shortId: shortId
            }),
            success: function (result) {
                if (result === "update success") {
                    alert('update thành công');
                    // edit  this row
                    location.reload();
                } else {
                    alert('update thất bại');
                }
            }
        })
    })
</script>
</body>
</html>