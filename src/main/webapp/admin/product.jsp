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
</head>
<body>
<%@include file="default/header.jsp" %>
<!--Main layout-->
<main class="mb-5">
    <!-- Container for demo purpose -->

    <!--Section: Content-->
    <div class="container px-4">
        <section class="">
            <div class="card shadow-0 text-center">
                <div class="card-header py-3 justify-content-center ">
                    <p class="mb-0 float-md-start">Product Lists</p>
                    <button type="button" class="btn float-md-end" data-mdb-toggle="modal"
                            data-mdb-target="#addProductForm">
                        <i class="fa-solid fa-plus"> Add Product</i>
                    </button>
                </div>
                <div class="card-body">

                    <!-- Button trigger modal -->

                    <div class="table-responsive">
                        <table class="table text-nowrap table-borderless table-striped table-hover align-middle mb-0 bg-white">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Status</th>
                                <th>Sold</th>
                                <th>Actions</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <img src="https://mdbootstrap.com/img/Photos/dashboard/crypto/bitcoin.png"
                                             alt=""
                                             style="width: 45px; height: 45px" class="rounded-circle"/>
                                        <div class="ms-3">
                                            <p class="fw-bold mb-1">productName</p>
                                            <p class="text-muted mb-0">Brand</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <span class="text-success"><span> active</span></span>
                                </td>
                                <td>
                                    <p class="fw-normal mb-1">123</p>
                                </td>

                                <td class="align-content-center">
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn alert-success" data-mdb-toggle="modal"
                                            data-mdb-target="#editProductForm">
                                        <i class="fa-solid fa-pencil"></i>
                                    </button>
                                    <button type="button" class="btn alert-danger" data-mdb-toggle="modal">
                                        <i class="fa-solid fa-trash"></i>
                                    </button>
                                    <a type="button" class="btn alert-primary" data-mdb-toggle="modal" href="listSubProduct.jsp">
                                        <i class="fa-solid fa-eye"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <img src="https://mdbootstrap.com/img/Photos/dashboard/crypto/ethereum.png"
                                             class="rounded-circle" alt="" style="width: 45px; height: 45px"/>
                                        <div class="ms-3">
                                            <p class="fw-bold mb-1">productName</p>
                                            <p class="text-muted mb-0">Brand</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <span class="text-danger"><span> inActive</span></span>
                                </td>
                                <td>
                                    <p class="fw-normal mb-1">123</p>
                                </td>
                                <td class="align-content-center">
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn alert-success" data-mdb-toggle="modal"
                                            data-mdb-target="#editProductForm">
                                        <i class="fa-solid fa-pencil"></i>
                                    </button>
                                    <button type="button" class="btn alert-danger" data-mdb-toggle="modal">
                                        <i class="fa-solid fa-trash"></i>
                                    </button>
                                    <a type="button" class="btn alert-primary" data-mdb-toggle="modal" href="listSubProduct.jsp">
                                        <i class="fa-solid fa-eye"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <img src="https://mdbootstrap.com/img/Photos/dashboard/crypto/bitcoin.png"
                                             alt=""
                                             style="width: 45px; height: 45px" class="rounded-circle"/>
                                        <div class="ms-3">
                                            <p class="fw-bold mb-1">productName</p>
                                            <p class="text-muted mb-0">Brand</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <span class="text-success"><span> active</span></span>
                                </td>
                                <td>
                                    <p class="fw-normal mb-1">123</p>
                                </td>

                                <td class="align-content-center">
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn alert-success" data-mdb-toggle="modal"
                                            data-mdb-target="#editProductForm">
                                        <i class="fa-solid fa-pencil"></i>
                                    </button>
                                    <button type="button" class="btn alert-danger" data-mdb-toggle="modal">
                                        <i class="fa-solid fa-trash"></i>
                                    </button>
                                    <a type="button" class="btn alert-primary" data-mdb-toggle="modal" href="listSubProduct.jsp">
                                        <i class="fa-solid fa-eye"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <img src="https://mdbootstrap.com/img/Photos/dashboard/crypto/ethereum.png"
                                             class="rounded-circle" alt="" style="width: 45px; height: 45px"/>
                                        <div class="ms-3">
                                            <p class="fw-bold mb-1">productName</p>
                                            <p class="text-muted mb-0">Brand</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <span class="text-success"><span>active</span></span>
                                </td>
                                <td>
                                    <p class="fw-normal mb-1">123</p>
                                </td>
                                <td class="align-content-center">
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn alert-success" data-mdb-toggle="modal"
                                            data-mdb-target="#editProductForm">
                                        <i class="fa-solid fa-pencil"></i>
                                    </button>
                                    <button type="button" class="btn alert-danger" data-mdb-toggle="modal">
                                        <i class="fa-solid fa-trash"></i>
                                    </button>
                                    <a type="button" class="btn alert-primary" data-mdb-toggle="modal" href="listSubProduct.jsp">
                                        <i class="fa-solid fa-eye"></i>
                                    </a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="card-footer float-md-end ">
                    <nav aria-label="Page navigation example ">
                        <ul class="pagination justify-content-center">
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </section>

    </div>

    <!--section pagination-->
    <!--    edit product form-->
    <div class="modal fade" id="editProductForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="container-lg modal-dialog">
            <div class="h-100 gradient-custom">
                <div class="container py-5 h-100">
                    <form class="row g-3 needs-validation" novalidate>
                        <div class="modal-title">
                            <h2 class="text-start text-black w-50">Edit Product</h2>
                        </div>
                        <div class="col-md-12">
                            <label for="editNameProduct" class="form-label">Product Name</label>
                            <input type="text" class="form-control" id="editNameProduct" value="Mark" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <!--                        list category-->
                        <div class="col-md-6">
                            <label for="editCategoryname" class="form-label">Category</label>
                            <select class="form-select" id="editCategoryname" required>
                                <option selected disabled value="">Xe Điện</option>
                                <option>Xe Máy Điện</option>
                                <option>Xe Đạp Điện</option>
                                <option>Xe Đạp Thể Thao</option>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid state.
                            </div>
                        </div>
                        <!--                        list suppliers-->
                        <div class="col-md-6">
                            <label for="editSupplierName" class="form-label">Supplier</label>
                            <select class="form-select" id="editSupplierName" required>
                                <option selected disabled value="">Việt Nam</option>
                                <option>Trung Quốc</option>
                                <option>Thái Lan</option>
                                <option>Đài Loan</option>
                                <option>Nhật Bản</option>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid state.
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="editBrandName" class="form-label">Brand</label>
                            <select class="form-select" id="editBrandName" required>
                                <option selected disabled value="">Pega</option>
                                <option>JVC</option>
                                <option>Galaxy</option>
                                <option>Yadea</option>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid state.
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-outline">
                                <textarea class="form-control" id="editDescription" rows="4"></textarea>
                                <label class="form-label" for="editDescription">Description</label>
                            </div>
                        </div>
                        <div class="col-md-3 float-end">
                            <label for="editWheelSize" class="form-label">Wheel Size</label>
                            <input type="text" class="form-control"
                                   id="editWheelSize" required>
                            <div class="invalid-feedback">
                                Please provide a valid zip.
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label for="editMaterial" class="form-label">Material</label>
                            <input type="text" class="form-control" id="editMaterial">
                        </div>
                        <div class="col-md-6">
                            <label for="editWarranty" class="form-label">Warranty</label>
                            <input type="text" class="form-control" id="editWarranty">
                        </div>
                        <button class="btn btn-secondary w-25" type="submit">Edit Product</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
    <!--    end edit product form-->

    <!--    add product form-->
    <div class="modal fade" id="addProductForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="container-lg modal-dialog">
            <div class="h-100 gradient-custom">
                <div class="container py-5 h-100">
                    <form class="row g-3 needs-validation" novalidate enctype="multipart/form-data">
                        <div class="modal-title">
                            <h2 class="text-start text-black w-50">Add Product</h2>
                        </div>
                        <div class="col-md-12">
                            <label for="nameProduct" class="form-label">Product Name</label>
                            <input type="text" class="form-control" id="nameProduct" value="Mark" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <!--list category-->
                        <div class="col-md-6">
                            <label for="categoryName" class="form-label">Category</label>
                            <select class="form-select" id="categoryname" required>
                                <option selected disabled value="">Xe Điện</option>
                                <option>Xe Máy Điện</option>
                                <option>Xe Đạp Điện</option>
                                <option>Xe Đạp Thể Thao</option>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid state.
                            </div>
                        </div>
                        <!--list suppliers-->
                        <div class="col-md-6">
                            <label for="supplierName" class="form-label">Supplier</label>
                            <select class="form-select" id="supplierName" required>
                                <option selected disabled value="">Việt Nam</option>
                                <option>Trung Quốc</option>
                                <option>Thái Lan</option>
                                <option>Đài Loan</option>
                                <option>Nhật Bản</option>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid state.
                            </div>
                        </div>
                        <!--list brand-->
                        <div class="col-md-6">
                            <label for="brandName" class="form-label">Brand</label>
                            <select class="form-select" id="brandName" required>
                                <option selected disabled value="">Pega</option>
                                <option>JVC</option>
                                <option>Galaxy</option>
                                <option>Yadea</option>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid state.
                            </div>
                        </div>
                        <!--description-->
                        <div class="col-md-6">
                            <div class="form-outline">
                                <textarea class="form-control" id="description" rows="4"></textarea>
                                <label class="form-label" for="description">Description</label>
                            </div>

                        </div>
                        <%-- wheel size--%>
                        <div class="col-md-3 float-end">
                            <label for="validationCustom12" class="form-label">Wheel Size</label>
                            <input type="text" class="form-control"
                                   id="validationCustom12" required>
                            <div class="invalid-feedback">
                                Please provide a valid zip.
                            </div>
                        </div>
                        <%--material--%>
                        <div class="col-md-3">
                            <label for="material" class="form-label">Material</label>
                            <input type="text" class="form-control" id="material">
                        </div>
                        <%--warranty--%>
                        <div class="col-md-6">
                            <label for="Warranty" class="form-label">Warranty</label>
                            <input type="text" class="form-control" id="Warranty">
                        </div>
                        <button class="btn btn-secondary w-25" type="submit">Add Product</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--    end add product form-->

</main>
<!--Footer-->
<footer></footer>
<!--Footer-->

<script src="/admin/assert/js/mdb.min.js"></script>
<script src="/admin/assert/js/all.min.js"></script>
<script src="/admin/assert/js/chart.min.js"></script>
</body>
</html>