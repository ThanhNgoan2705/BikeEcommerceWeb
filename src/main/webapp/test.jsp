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

<form>
    <input type="text" name="productId">
    <input type="text" name="colorId">

    <button id="uploadButton" class="btn btn-secondary w-25" type="button">Add Product</button>
</form>
<form id="myDropzone" class="dropzone" enctype="multipart/form-data" action="/UploadProductImage" method="post">
<%--    <input type="text" name="productId" hidden="" value="${}">--%>
    <input type="text" name="colorId" hidden="">
</form>

<script src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.9.2/min/dropzone.min.js"
        integrity="sha512-Vu7eB5W0sz+V2rhQan7P2uW9LCJolvnqGgoBf9Y7yUXG0ZU1M/f8Sb+KkrPwSrpPy7K2hvvIpZ+8c7H8Q3Ri/Q=="
        crossorigin="anonymous"></script>
<script src="https://unpkg.com/dropzone@5/dist/min/dropzone.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/dropzone@5/dist/min/dropzone.min.css" type="text/css"/>
<script>

    // Initialize Dropzone without any options
    var myDropzone = new Dropzone("#myDropzone", {
        autoProcessQueue: false,
        parallelUploads: 10,
        uploadMultiple: true,
        acceptedFiles: ".jpeg,.jpg,.png,.gif",
        addRemoveLinks: true,
        init: function () {
            var submitButton = document.querySelector("#uploadButton");
            myDropzone = this; // closure

            submitButton.addEventListener("click", function () {
                myDropzone.processQueue(); // Tell Dropzone to process all queued files.
            });

            // You might want to show the submit button only when
            // files are dropped here:
            this.on("addedfile", function () {
                // Show submit button here and/or inform user to click it.
            });

        }
    });


    // Custom button to initiate the upload
    document.getElementById('uploadButton').addEventListener('click', function () {
        myDropzone.processQueue(); // Bắt đầu quá trình tải lên khi nhấn nút
    });
</script>

</body>
</html>
