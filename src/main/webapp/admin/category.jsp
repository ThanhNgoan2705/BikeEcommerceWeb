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
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&amp;display=swap">
    <link rel="stylesheet" href="/admin/assert/css/all.min.css">
    <link rel="stylesheet" href="/admin/assert/css/mdb.min.css">
    <link rel="stylesheet" href="/admin/assert/css/home.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css">
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
                    <!--   table category-->
                       <div class="table-responsive">
                           <table id="categoryTable" class="table table-hover flex-nowrap align-middle mb-0 bg-white "
                                  style="width: 100%"></table>
                       </div>
                   </div>
               </div>
           </section>

       </div>

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
                            <div id="dnd-max-size" class="file-upload-wrapper">
                                <div class="file-upload">
                                    <div class="file-upload-message"><i
                                            class="fas fa-cloud-upload-alt file-upload-cloud-icon"></i>
                                        <p class="file-upload-default-message">Drag and drop a file here or click</p>
                                        <p class="file-upload-main-error"></p></div>
                                    <div class="file-upload-mask"></div>
                                    <ul class="file-upload-errors"></ul>
                                    <input type="file" name="file" class="file-upload-input" data-mdb-max-file-size="2M"
                                           data-mdb-file-upload-init="" accept="">
                                </div>
                                <div class="file-upload-previews"></div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <c:if test='${not haveUser}'>
                                <div class="alert alert-danger" role="alert">
                                    <i class="fa-solid fa-exclamation-circle"></i>
                                    <strong>Warning!</strong> You don't have any user in system. Please add user first
                                </div>
                                <button class="btn btn-primary float-md-end" type="button" disabled>
                                    <i class="fa-solid fa-plus"> Add Category</i>
                                </button>
                            </c:if>
                            <c:if test='${haveUser}'>
                            <button class="btn btn-primary float-md-end" type="submit">
                                <i class="fa-solid fa-plus"> Add Category
                                    </c:if>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--    add Category form-->

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
                                        <label class="form-label text-white m-1" for="editImage">Choose file</label>
                                        <input type="file" class="form-control d-none" id="editImage"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 btnControl">

                            <c:if test='${not haveUser}'>
                                <div class="alert alert-danger" role="alert">
                                    <i class="fa-solid fa-exclamation-circle"></i>
                                    <strong>Warning!</strong> You don't have any user in system. Please add user first
                                </div>
                                <button class="btn btn-primary float-md-end" type="button" disabled>
                                    <i class="fa-solid fa-plus"> Edit Category</i>
                                </button>
                            </c:if>
                            <c:if test='${haveUser}'>
                                <button class="btn btn-primary w-50 h-25 m-lg-auto editCategory" type="button">Edit
                                    Category
                                </button>
                            </c:if>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--   see and edit Category form-->

</main>
<!--Main layout-->

<!--Footer-->
<footer></footer>
<!--Footer-->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js"></script>
<script type="text/javascript" src="/admin/assert/js/mdb.min.js"></script>
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
                        if (data === 1) {
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
    //update category
    $(document).on('click', '.editCategory', function () {
        // enable input to edit
        $('#editNameCategory').prop('disabled', false);
        $('#editLevel').prop('disabled', false);
        $('#editParentName').prop('disabled', false);
        $('#editDescription').prop('disabled', false);
        $('#editImage').prop('disabled', false);
        $('#editShortId').prop('disabled', false);
        $('.btnControl').html('<button class="btn btn-primary w-50 h-25 m-lg-auto submit" type="button">Submit</button>');
        $(document).on('click', '.submit', function () {
            let id = $('#categoryId').val();
            let name = $('#editNameCategory').val();
            let level = $('#editLevel').val();
            let parentId = $('#editParentName').val();
            let description = $('#editDescription').val();
            let image = $('#editImage').val();
            let shortId = $('#editShortId').val();
            let data = {
                "categoryId": id,
                "name": name,
                "level": level,
                "parentId": parentId,
                "description": description,
                "image": image,
                "shortId": shortId
            }
            console.log("post:" + data);
            $.ajax({
                url: '/api/category',
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
    // see category
    $(document).on('click', '.editButton', function () {
        let id = $(this).closest('tr').find('td:eq(0)').text();
        console.log(id);
        $.ajax({
            url: '/api/category/' + id,
            type: 'GET',
            dataType: 'json',
            contentType: 'application/json',
            success: function (data) {
                console.log(data);
                $('#editCategoryForm').modal('show');
                $('#categoryId').val(data.categoryId).prop('disabled', true);
                $('#editNameCategory').val(data.name).prop('disabled', true);
                $('#editLevel').val(data.level).prop('disabled', true);
                $('#editParentName').val(data.parentId).prop('disabled', true);
                $('#editDescription').val(data.description).prop('disabled', true);
                $('#editImage').attr('src', data.image).prop('disabled', true);
                $('#editShortId').val(data.shortId).prop('disabled', true);
            }
        })
    })
</script>

<script>
    document.getElementById('dnd-max-size').addEventListener('change', function (e) {
        if (e.target.files.length > 1) {
            alert('You can only upload a maximum of 1 files');
            return;
        }
        var file = e.target.files[0];
        if (file.size > 2 * 1024 * 1024) {
            alert('The file size must be less than 2 MB');
            return;
        }
        // check file type
        if (file.type !== 'image/jpeg' && file.type !== 'image/png') {
            alert('Invalid file type. Only JPEG and PNG files are allowed.');
            return;
        }

        // Create a new URL for the file
        var url = URL.createObjectURL(file);
        // Create a new img element
        var img = document.createElement('img');
        // Set the src of the img element to the URL
        img.src = url;
        var previewdiv = document.createElement('div');
        img.classList.add('img-fluid', 'img-thumbnail', 'w-50', 'h-50');
        previewdiv.appendChild(img);
        previewdiv.classList.add('col-md-6');
        previewdiv.classList.add('col-sm-12');
        var removeBtn = document.createElement('button');
        removeBtn.classList.add('btn', 'btn-danger', 'btn-sm', 'm-2', 'image-remove-btn');
        removeBtn.innerHTML = '<i class="fa-solid fa-trash"></i>';
        $(document).on('click', '.image-remove-btn', function () {
            $(this).closest('div').remove();
        });
        previewdiv.appendChild(removeBtn);
        // Append the img element to the file-upload-previews div
        document.querySelector('.file-upload-previews').appendChild(previewdiv);
    });
</script>
</body>
</html>