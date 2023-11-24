<%--
  Created by IntelliJ IDEA.
  User: hoang hai
  Date: 11/23/2023
  Time: 11:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
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
    <!--                        list category-->
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
    <!--                        list suppliers-->
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
    <div class="col-md-6">
        <div class="form-outline">
            <textarea class="form-control" id="description" rows="4"></textarea>
            <label class="form-label" for="description">Description</label>
        </div>

    </div>
    <div class="col-md-6">
        <label for="colorKind" class="form-label">Color</label>
        <input type="text" class="form-control"
               id="colorKind">
    </div>
    <div class="col-md-3 float-end">
        <label for="validationCustom12" class="form-label">Wheel Size</label>
        <input type="text" class="form-control"
               id="validationCustom12" required>
        <div class="invalid-feedback">
            Please provide a valid zip.
        </div>
    </div>
    <div class="col-md-3">
        <label for="material" class="form-label">Material</label>
        <input type="text" class="form-control" id="material">
    </div>
    <div class="col-md-6">
        <label for="Warranty" class="form-label">Warranty</label>
        <input type="text" class="form-control" id="Warranty">
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
                    <label class="form-label text-white m-1" for="customFile1">Choose file</label>
                    <input type="file" class="form-control d-none" id="customFile1" multiple/>
                </div>
            </div>
        </div>

    </div>
    <button class="btn btn-secondary w-25" type="submit">Add Product</button>
</form>
</body>
</html>
