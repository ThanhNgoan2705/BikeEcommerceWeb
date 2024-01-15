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
                    <p class="mb-0 float-md-start">User Lists</p>
                    <button type="button" class="btn float-md-end" data-mdb-toggle="modal"
                            data-mdb-target="#editUserForm">
                        <i class="fa-solid fa-plus"> Add User</i>
                    </button>
                </div>
                <div class="card-body">
                    <!-- Button trigger modal -->
                    <div class="table-responsive">
                        <table id="userTable" class="table text-nowrap table-borderless table-striped table-hover align-middle mb-0 bg-white">
                        </table>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!--section pagination-->
    <!-- see detail User -->
    <!--seeDetailProduct-->
    <div class="modal fade " id="seeDetail" tabindex="-1"
         aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="container-lg modal-dialog">
            <div class="h-100 gradient-custom">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-lg-12 col-xl-10">
                            <div class="card" style="border-radius: 10px;">
                                <div class="card-header px-4 py-5">
                                    <h5 class="text-muted mb-0" style="color: #a8729a;">Name Product
                                    </h5>
                                </div>
                                <div class="card-body p-4">
                                    <div class="d-flex justify-content-sm-between ">
                                        <ul>
                                            <h2><span><b>Mô Tả Cơ Bản</b></span></h2>
                                            <li><span> <b>Tên Thương Hiệu:</b> </span> <span>Catani</span></li>
                                            <li><span> <b>Nơi Sản Xuất:</b> </span> <span>Viêt Nam</span></li>
                                            <li><span> <b>Địa Chỉ:</b> </span> <span>hưng yên, Việt Nam</span></li>
                                            <li><span> <b>HotLine liên hệ:</b> </span> <span>03612649151</span></li>
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
                                            Thành lập vào năm 1970 bởi Antonio Catani tại thành phố Cesena, Ý. Xuất phát
                                            điểm của thương hiệu xe đạp nổi tiếng này là một hãng xe sản xuất những
                                            chiếc xe đạp đua chuyên nghiệp cho các tay đua và người người chơi xe lâu
                                            năm.

                                            Dần dần với sự phát triển của xã hội và nhu cầu ngày càng cao của người tiêu
                                            dùng, hãng đã quyết định làm đa dạng hơn các sản phẩm của mình. Có thể kể
                                            đến một dòng xe nổi tiếng khác của thương hiệu này như Xe Đạp Touring Catani
                                            CA-2.1 700c. Ngoài ra hãng cũng đồng thời sản xuất thêm các dòng xe đạp địa
                                            hình, và cả xe đạp điện,….

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
    <!-- see detail User -->
    <!--    add User form-->
    <div class="modal fade" id="addUserForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    </div>
    <!--    edit User form-->
    <div class="modal fade" id="editUserForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="container-sm modal-dialog">
            <div class="h-100 gradient-custom">
                <div class="container py-5 h-100">
                    <form class="row g-3 needs-validation" novalidate>
                        <div class="modal-title">
                            <h2 class="text-start text-black w-50">Add User</h2>
                        </div>
                        <div class="col-md-12">
                            <label for="addNameUser" class="form-label">User Name</label>
                            <input type="text" class="form-control" id="addNameUser" value="Mark" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="addSupplier" class="form-label">Supplier</label>
                            <!--                            // get list supplier to show option-->
                            <select class="form-select" id="addSupplier" required>
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
                            <label for="addHotline" class="form-label">Hotline </label>
                            <input type="text" class="form-control" id="addHotline">
                            <div class="invalid-feedback">
                                Please select a valid state.
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-outline">
                                <textarea class="form-control border-2" id="addDescription" rows="4"
                                          style="background: white"></textarea>
                                <label class="form-label" for="addDescription">Description</label>
                            </div>

                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Address</label>
                            <select class="form-select  mb-2 " id="city" aria-label=".form-select-sm">
                                <option value="" selected>Chọn tỉnh thành</option>
                            </select>
                            <select class="form-select mt-3 mb-3 " id="district" aria-label=".form-select-sm">
                                <option value="" selected>Chọn quận huyện</option>
                            </select>
                            <select class="form-select mt-3 mb-3" id="ward" aria-label=".form-select-sm">
                                <option value="" selected>Chọn phường xã</option>
                            </select>
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
                            <button class="btn btn-primary w-50 h-25 m-lg-auto" type="submit">Add User
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
<script>
    var citis = document.getElementById("city");
    var districts = document.getElementById("district");
    var wards = document.getElementById("ward");
    var Parameter = {
        url: "data/vietnam.json",
        method: "GET",
        responseType: "application/json",
    };
    var promise = axios(Parameter);
    promise.then(function (result) {
        renderCity(result.data);
    });

    function renderCity(data) {
        for (const x of data) {
            citis.options[citis.options.length] = new Option(x.Name, x.Id);
            console.log(x.Name);
        }
        citis.onchange = function () {
            districts.length = 1;
            wards.length = 1;
            if (this.value !== "") {
                const result = data.filter(n => n.Id === this.value);

                for (const k of result[0].Districts) {
                    districts.options[districts.options.length] = new Option(k.Name, k.Id);
                    console.log(k.Name);
                }
            }
        };
        districts.onchange = function () {
            wards.length = 1;
            const dataCity = data.filter((n) => n.Id === citis.value);
            if (this.value !== "") {
                const dataWards = dataCity[0].Districts.filter(n => n.Id === this.value)[0].Wards;

                for (const w of dataWards) {
                    wards.options[wards.options.length] = new Option(w.Name, w.Id);
                    console.log(w.Name);
                }
            }
        };
    }
</script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.13.7/js/dataTables.bootstrap5.min.js"></script>
<script type="text/javascript"
        src="/admin/assert/js/mdb.min.js"></script>
<script src="/admin/assert/js/all.min.js"></script>
<script src="/admin/assert/js/chart.min.js"></script>
<script>
    // datatable user
    $(document).ready(function () {
        let table = $('#userTable').DataTable({
            info: false,
            scrollX: true,
            "language": {
                "url": "//cdn.datatables.net/plug-ins/1.11.3/i18n/vi.json"
            },
            "ajax": {
                "url": "/user/api",
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
                    data: "userId"
                },
                {
                    title: "Name",
                    data: "userName"
                },
                {
                    title: "Email",
                    data: "email"
                },
                {
                    title: 'Role',
                    data: "role",
                    render: function (data) {
                        if (data === 0) {
                            return '<span class="badge bg-danger">PENDING</span>'
                        } else if (data === 1) {
                            return '<span class="badge bg-primary">USER</span>'
                        } else if (data === 2) {
                            return '<span class="badge bg-success">ADMIN</span>'
                        }
                        return '<span class="badge bg-danger">BLOCKED</span>'
                    }
                },
                {
                    title: "Action",
                    data: 'userId',
                    render: function (data) {
                        return '<button type="button" class="btn btn-primary" data-mdb-toggle="modal"  data-mdb-target="#seeDetailProduct"><i class="fa-solid fa-eye"></i></button>'
                        + '<button type="button" class="btn btn-success" data-mdb-toggle="modal" data-mdb-target="#editUserForm"><i class="fa-solid fa-pencil"></i></button>'
                            + '<button type="button" class="btn btn-danger" data-mdb-toggle="modal"><i class="fa-solid fa-trash"></i></button>'
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
</body>
</html>