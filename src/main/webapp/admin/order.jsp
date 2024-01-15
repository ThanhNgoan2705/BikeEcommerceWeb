<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Dashboard-Order</title>
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
                    <p class="mb-0 float-md-start">User Order Lists</p>
                </div>
                <div class="card-body">
                    <!--   table Order-->
                    <div class="table-responsive">
                        <table id="userTable" class="table table-hover flex-nowrap align-middle mb-0 bg-white "
                               style="width: 100%">
                        </table>
                        <table id="orderTable" class="table table-hover flex-nowrap align-middle mb-0 bg-white " disabled="true"
                               style="width: 100%">
                        </table>
                    </div>
                </div>
            </div>
        </section>

    </div>

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
                    data: "userId",
                },
                {
                    title: "Name",
                    data: "userName"
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
                    render: function (data, type, row) {
                        if(row.role === 1){
                            return '<button class="btn btn-primary btn-sm seeListOrders" type="button" href="/user/order/' + data + '">See List Orders</button>'
                        }
                        if (row.role === 2) {
                            return '<button class="btn btn-primary btn-sm editUser" type="button">Edit User</button>'
                        }

                    }
                }
            ]
        });
        $('#userTable tbody').on('click', 'tr', function () {
            let row = table.row($(this).closest('tr'));
            let data = row.data();
            console.log(data);
        });
        $(document).on('click', '.seeListOrders', function () {
           // enable table order
            $('#orderTable').removeAttr('disabled');
            $('#orderTable').show();
            let userId = $(this).attr('href').split('/').pop();
            let table = $('#orderTable').dataTable({
                info: false,
                scrollX: true,
                "ajax": {
                    "url": '/user/order-api-admin/' + userId,
                    "type": "GET",
                    "dataSrc": "",
                    "dataType": "json",
                    "contentType": "application/json",
                },
                "columns": [
                    {title: "Order ID", data: "orderId"},
                    {title: "Full Address", data: "fullAddress"},
                    {title: "Shipping Fee", data: "shippingFee"},
                    {title: "Total Price", data: "total"},
                    {
                        title: "Status", data: "status",
                        render: function (data, type, row) {
                            if (data === 1) {
                                return '<span class="badge badge-pill badge-success">PENDING</span>'
                            } else if (data === 2) {
                                return '<span class="badge badge-pill badge-success">CONFIRMED</span>'
                            } else if (data === 3) {
                                return '<span class="badge badge-pill badge-success">PROCESSING</span>'
                            } else if (data === 4) {
                                return '<span class="badge badge-pill badge-success">SHIPPING</span>'
                            } else if (data === 5) {
                                return '<span class="badge badge-pill badge-success">DELIVERED</span>'
                            } else if (data === 6) {
                                return '<span class="badge badge-pill badge-danger">CANCELLED</span>'
                            } else if (data === 7) {
                                return '<span class="badge badge-pill badge-warning">RETURNED</span>'
                            } else if (data === 8) {
                                return '<span class="badge badge-pill badge-dark">REFUNDED</span>'
                            }
                        }
                    },
                    {
                        title: "Action", data: "orderId",
                        render: function (data, type, row) {
                            return '<button class="btn btn-primary btn-sm editStatus" type="button">Edit Status</button>'
                        }
                    }
                ]
            });
        });

    });
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