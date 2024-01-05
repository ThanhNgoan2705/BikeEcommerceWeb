<%--
  Created by IntelliJ IDEA.
  User: Chan Chan
  Date: 11/27/2023
  Time: 11:28 PM
  To change this template use File | Settings | File Templates.
--%>
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
<%@include file="default/header.jsp" %>
<!--Main layout-->
<main class="mb-5">
    <!-- Container for demo purpose -->

    <!--Section: Content-->
    <div class="container px-4">
        <section class="">
            <div class="card shadow-0 text-center">
                <div class="card-header py-3 justify-content-center ">
                    <p class="mb-0 float-md-start">Sub Product Lists</p>
                    <button type="button" class="btn float-md-end" data-mdb-toggle="modal"
                            data-mdb-target="#addProductForm">
                        <i class="fa-solid fa-plus"> Add Sub Product</i>
                    </button>
                </div>
                <div class="card-body">

                    <!-- Button trigger modal -->

                    <div class="table-responsive">
                        <table class="table text-nowrap table-borderless table-striped table-hover align-middle mb-0 bg-white">
                            <thead>
                            <tr>
                                <th>Color</th>
                                <th>Price</th>
                                <th>inventory</th>
                                <th>Image</th>
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
                                    <p class="fw-normal mb-0">$62,456.24</p>
                                </td>
                                <td>
                    <span class="text-success"><i class="fas fa-caret-up fa-sm"></i>
                      <span> 150</span></span>
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
                                    <button type="button" class="btn alert-primary" data-mdb-toggle="modal">
                                        <i class="fa-solid fa-eye"></i>
                                    </button>
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
                                    <p class="fw-normal mb-0">$3,346.45</p>
                                </td>
                                <td>
                    <span class="text-danger"><i class="fas fa-caret-down fa-sm"></i>
                      <span> 150</span></span>
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
                                    <button type="button" class="btn alert-primary" data-mdb-toggle="modal">
                                        <i class="fa-solid fa-eye"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <img src="https://mdbootstrap.com/img/Photos/dashboard/crypto/fantom.png"
                                             class="rounded-circle"
                                             alt="" style="width: 45px; height: 45px"/>
                                        <div class="ms-3">
                                            <p class="fw-bold mb-1">productName</p>
                                            <p class="text-muted mb-0">Brand</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <p class="fw-normal mb-0">$1.24</p>
                                </td>
                                <td>

                    <span class="text-success"><i class="fas fa-caret-up fa-sm"></i>
                      <span> 150</span></span>
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
                                    <button type="button" class="btn alert-primary" data-mdb-toggle="modal">
                                        <i class="fa-solid fa-eye"></i>
                                    </button>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <img src="https://mdbootstrap.com/img/Photos/dashboard/crypto/avalanche.png"
                                             class="rounded-circle" alt="" style="width: 45px; height: 45px"/>
                                        <div class="ms-3">
                                            <p class="fw-bold mb-1">productName</p>
                                            <p class="text-muted mb-0">Brand</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <p class="fw-normal mb-0">$54.45</p>
                                </td>
                                <td>

                    <span class="text-success"><i class="fas fa-caret-up fa-sm"></i>
                      <span> 120</span></span>
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
                                    <button type="button" class="btn alert-primary" data-mdb-toggle="modal">
                                        <i class="fa-solid fa-eye"></i>
                                    </button>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <img src="https://mdbootstrap.com/img/Photos/dashboard/crypto/solana.png"
                                             class="rounded-circle"
                                             alt="" style="width: 45px; height: 45px"/>
                                        <div class="ms-3">
                                            <p class="fw-bold mb-1">productName</p>
                                            <p class="text-muted mb-0">Brand</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <p class="fw-normal mb-0">$52.429</p>
                                </td>
                                <td>

                    <span class="text-danger"><i class="fas fa-caret-down fa-sm"></i>
                      <span> 124</span></span>
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
                                    <button type="button" class="btn alert-primary" data-mdb-toggle="modal">
                                        <i class="fa-solid fa-eye"></i>
                                    </button>
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
    <!--    edit sub product form-->
    <div class="modal fade" id="editProductForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="container-lg modal-dialog">
            <div class="h-100 gradient-custom">
                <div class="container py-5 h-100">
                    <form class="row g-3 needs-validation" novalidate>
                        <div class="modal-title">
                            <h2 class="text-start text-black w-50">Edit Sub Product</h2>
                        </div>
                        <div class="col-md-12">
                            <label for="nameDisableEdit" class="form-label">Product Name</label>
                            <input  type="text" class="form-control" id="nameDisableEdit" value="Pega" placeholder="Disable input" disabled>
                        </div>
                        <!--list color-->
                        <div class="col-md-6">
                            <label for="editCategoryname" class="form-label">Color</label>
                            <select class="form-select" id="editCategoryname" required>
                                <option selected disabled value="">Black</option>
                                <option>Red</option>
                                <option>Blue</option>
                                <option>Green</option>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid state.
                            </div>
                        </div>
<%--                        edit price--%>
                        <div class="col-md-6">
                            <label for="moneyInput" class="form-label">Price</label>
                            <input type="text" class="form-control" id="moneyInput">
                        </div>
<%--                        edit inventory--%>
                        <div class="col-md-6">
                            <label for="editInventory" class="form-label">Inventory</label>
                            <input type="number" class="form-control" id="editInventory">
                        </div>
                        <!--Image-->
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
                        <button class="btn btn-secondary w-25" type="submit">Edit Product</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
    <!--    end edit sub product form-->
    <!--    add sub product form-->
    <div class="modal fade" id="addProductForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="container-lg modal-dialog">
            <div class="h-100 gradient-custom">
                <div class="container py-5 h-100">
                    <form class="row g-3 needs-validation" novalidate enctype="multipart/form-data">
                        <div class="modal-title">
                            <h2 class="text-start text-black w-50">Add Product</h2>
                        </div>
                        <div class="col-md-12">
                            <label for="nameDisableAdd" class="form-label">Product Name</label>
                            <input  type="text" class="form-control" id="nameDisableAdd" value="Pega" placeholder="Disable input" disabled>
                        </div>
                        <!--list color-->
                        <div class="col-md-6">
                            <label for="addCategoryname" class="form-label">Color</label>
                            <select class="form-select" id="addCategoryname" required>
                                <option selected disabled value="">Black</option>
                                <option>Red</option>
                                <option>Blue</option>
                                <option>Green</option>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid state.
                            </div>
                        </div>
                        <%--                        add price--%>
                        <div class="col-md-6">
                            <label for="addPrice" class="form-label">Price</label>
                            <input type="text" class="form-control" id="addPrice">
                        </div>
                        <%--                        add inventory--%>
                        <div class="col-md-6">
                            <label for="addInventory" class="form-label">Inventory</label>
                            <input type="text" class="form-control" id="addInventory">
                        </div>
                        <!--Image-->
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
                        <button class="btn btn-secondary w-25" type="submit">Add Product</button>
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
            "language":{
                "url": "//cdn.datatables.net/plug-ins/1.11.3/i18n/vi.json"
            },
            "ajax": {
                "url": "/api/category",
                "type": "GET",
                "dataType": "json",
                "contentType": "application/json",
                "data": function (d) {
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
                    title : "level",
                    data : "level"
                },
                {
                    title: "Action",
                    data: 'id',
                    render: function (data) {
                        return '<button type="button" class="btn btn-primary" data-mdb-toggle="modal" data-mdb-target="#seeDetailProduct"><i class="fa-solid fa-eye"></i></button>'
                    }
                }
            ]
        });
        $('#categoryTable tbody').on('click', 'tr', function () {
            let row = table.row($(this).closest('tr'));
            let data = row.data();
            console.log(data);
        });

    });
</script>
<script src="/admin/assert/js/jquery.maskMoney.min.js"></script>
<script>
    $(document).ready(function () {
        $('#moneyInput').maskMoney({prefix: 'VND ', allowNegative: true, thousands: '.', decimal: ',', affixesStay: false});
    });
</script>

</body>
</html>
