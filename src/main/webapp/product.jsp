<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head><base target="_parent">

    <link rel="stylesheet" href="assets/css/cart.css">
    <link rel="stylesheet" href="assets/css/style-starter.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&amp;display=swap">
    <link rel="stylesheet" href="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/css/mdb.min.css">
    <link rel="stylesheet" href="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/plugins/css/all.min.css">

    <style>
        INPUT:-webkit-autofill,SELECT:-webkit-autofill,TEXTAREA:-webkit-autofill{animation-name:onautofillstart}INPUT:not(:-webkit-autofill),SELECT:not(:-webkit-autofill),TEXTAREA:not(:-webkit-autofill){animation-name:onautofillcancel}@keyframes onautofillstart{}@keyframes onautofillcancel{}
    </style>

</head>
<body>
<!--Main Navigation-->
<jsp:include page="common/header.jsp"/>
<!-- sidebar + content -->
<section class="">
    <div class="container">
        <div class="row">
            <!-- sidebar -->
            <div class="col-lg-3">
                <!-- Toggle button -->
                <button
                        class="btn btn-outline-secondary mb-3 w-100 d-lg-none"
                        type="button"
                        data-mdb-toggle="collapse"
                        data-mdb-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                >
                    <span>Show filter</span>
                </button>
                <!-- Collapsible wrapper -->
                <div class="collapse card d-lg-block mb-5" id="navbarSupportedContent">
                    <div class="accordion" id="accordionPanelsStayOpenExample">
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingOne">
                                <button
                                        class="accordion-button text-dark bg-light"
                                        type="button"
                                        data-mdb-toggle="collapse"
                                        data-mdb-target="#panelsStayOpen-collapseOne"
                                        aria-expanded="true"
                                        aria-controls="panelsStayOpen-collapseOne"
                                >
                                    Related items
                                </button>
                            </h2>
                            <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne">
                                <div class="accordion-body">
                                    <ul class="list-unstyled">
                                        <li><a href="#" class="text-dark">Electronics </a></li>
                                        <li><a href="#" class="text-dark">Home items </a></li>
                                        <li><a href="#" class="text-dark">Books, Magazines </a></li>
                                        <li><a href="#" class="text-dark">Men's clothing </a></li>
                                        <li><a href="#" class="text-dark">Interiors items </a></li>
                                        <li><a href="#" class="text-dark">Underwears </a></li>
                                        <li><a href="#" class="text-dark">Shoes for men </a></li>
                                        <li><a href="#" class="text-dark">Accessories </a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingTwo">
                                <button
                                        class="accordion-button text-dark bg-light"
                                        type="button"
                                        data-mdb-toggle="collapse"
                                        data-mdb-target="#panelsStayOpen-collapseTwo"
                                        aria-expanded="true"
                                        aria-controls="panelsStayOpen-collapseTwo"
                                >
                                    Brands
                                </button>
                            </h2>
                            <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse show" aria-labelledby="headingTwo">
                                <div class="accordion-body">
                                    <div>
                                        <!-- Checked checkbox -->
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked1" checked />
                                            <label class="form-check-label" for="flexCheckChecked1">Mercedes</label>
                                            <span class="badge badge-secondary float-end">120</span>
                                        </div>
                                        <!-- Checked checkbox -->
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked2" checked />
                                            <label class="form-check-label" for="flexCheckChecked2">Toyota</label>
                                            <span class="badge badge-secondary float-end">15</span>
                                        </div>
                                        <!-- Checked checkbox -->
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked3" checked />
                                            <label class="form-check-label" for="flexCheckChecked3">Mitsubishi</label>
                                            <span class="badge badge-secondary float-end">35</span>
                                        </div>
                                        <!-- Checked checkbox -->
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked4" checked />
                                            <label class="form-check-label" for="flexCheckChecked4">Nissan</label>
                                            <span class="badge badge-secondary float-end">89</span>
                                        </div>
                                        <!-- Default checkbox -->
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault5" />
                                            <label class="form-check-label" for="flexCheckDefault5">Honda</label>
                                            <span class="badge badge-secondary float-end">30</span>
                                        </div>
                                        <!-- Default checkbox -->
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault6" />
                                            <label class="form-check-label" for="flexCheckDefault6">Suzuki</label>
                                            <span class="badge badge-secondary float-end">30</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingThree">
                                <button
                                        class="accordion-button text-dark bg-light"
                                        type="button"
                                        data-mdb-toggle="collapse"
                                        data-mdb-target="#panelsStayOpen-collapseThree"
                                        aria-expanded="false"
                                        aria-controls="panelsStayOpen-collapseThree"
                                >
                                    Price
                                </button>
                            </h2>
                            <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse show" aria-labelledby="headingThree">
                                <div class="accordion-body">
                                    <div class="range">
                                        <input type="range" class="form-range" id="customRange1" />
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-6">
                                            <p class="mb-0">
                                                Min
                                            </p>
                                            <div class="form-outline">
                                                <input type="number" id="typeNumber" class="form-control" />
                                                <label class="form-label" for="typeNumber">$0</label>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <p class="mb-0">
                                                Max
                                            </p>
                                            <div class="form-outline">
                                                <input type="number" id="typeNumber" class="form-control" />
                                                <label class="form-label" for="typeNumber">$1,0000</label>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="button" class="btn btn-white w-100 border border-secondary">apply</button>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingThree">
                                <button
                                        class="accordion-button text-dark bg-light"
                                        type="button"
                                        data-mdb-toggle="collapse"
                                        data-mdb-target="#panelsStayOpen-collapseFour"
                                        aria-expanded="false"
                                        aria-controls="panelsStayOpen-collapseFour"
                                >
                                    Size
                                </button>
                            </h2>
                            <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse show" aria-labelledby="headingThree">
                                <div class="accordion-body">
                                    <input type="checkbox" class="btn-check border justify-content-center" id="btn-check1" checked autocomplete="off" />
                                    <label class="btn btn-white mb-1 px-1" style="width: 60px;" for="btn-check1">XS</label>
                                    <input type="checkbox" class="btn-check border justify-content-center" id="btn-check2" checked autocomplete="off" />
                                    <label class="btn btn-white mb-1 px-1" style="width: 60px;" for="btn-check2">SM</label>
                                    <input type="checkbox" class="btn-check border justify-content-center" id="btn-check3" checked autocomplete="off" />
                                    <label class="btn btn-white mb-1 px-1" style="width: 60px;" for="btn-check3">LG</label>
                                    <input type="checkbox" class="btn-check border justify-content-center" id="btn-check4" checked autocomplete="off" />
                                    <label class="btn btn-white mb-1 px-1" style="width: 60px;" for="btn-check4">XXL</label>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingThree">
                                <button
                                        class="accordion-button text-dark bg-light"
                                        type="button"
                                        data-mdb-toggle="collapse"
                                        data-mdb-target="#panelsStayOpen-collapseFive"
                                        aria-expanded="false"
                                        aria-controls="panelsStayOpen-collapseFive"
                                >
                                    Ratings
                                </button>
                            </h2>
                            <div id="panelsStayOpen-collapseFive" class="accordion-collapse collapse show" aria-labelledby="headingThree">
                                <div class="accordion-body">
                                    <!-- Default checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" checked />
                                        <label class="form-check-label" for="flexCheckDefault">
                                            <i class="fas fa-star text-warning"></i><i class="fas fa-star text-warning"></i><i class="fas fa-star text-warning"></i><i class="fas fa-star text-warning"></i>
                                            <i class="fas fa-star text-warning"></i>
                                        </label>
                                    </div>
                                    <!-- Default checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" checked />
                                        <label class="form-check-label" for="flexCheckDefault">
                                            <i class="fas fa-star text-warning"></i><i class="fas fa-star text-warning"></i><i class="fas fa-star text-warning"></i><i class="fas fa-star text-warning"></i>
                                            <i class="fas fa-star text-secondary"></i>
                                        </label>
                                    </div>
                                    <!-- Default checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" checked />
                                        <label class="form-check-label" for="flexCheckDefault">
                                            <i class="fas fa-star text-warning"></i><i class="fas fa-star text-warning"></i><i class="fas fa-star text-warning"></i><i class="fas fa-star text-secondary"></i>
                                            <i class="fas fa-star text-secondary"></i>
                                        </label>
                                    </div>
                                    <!-- Default checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" checked />
                                        <label class="form-check-label" for="flexCheckDefault">
                                            <i class="fas fa-star text-warning"></i><i class="fas fa-star text-warning"></i><i class="fas fa-star text-secondary"></i><i class="fas fa-star text-secondary"></i>
                                            <i class="fas fa-star text-secondary"></i>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- sidebar -->
            <!-- content -->
            <div class="col-lg-9">
                <header class="d-sm-flex align-items-center border-bottom mb-4 pb-3">
                    <strong class="d-block py-2">32 Items found </strong>
                    <div class="ms-auto">
                        <select class="form-select d-inline-block w-auto border pt-1">
                            <option value="0">Best match</option>
                            <option value="1">Recommended</option>
                            <option value="2">High rated</option>
                            <option value="3">Randomly</option>
                        </select>
                        <div class="btn-group shadow-0 border">
                            <a href="#" class="btn btn-light" title="List view">
                                <i class="fa fa-bars fa-lg"></i>
                            </a>
                            <a href="#" class="btn btn-light active" title="Grid view">
                                <i class="fa fa-th fa-lg"></i>
                            </a>
                        </div>
                    </div>
                </header>

                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-6 d-flex">
                        <div class="card w-100 my-2 shadow-2-strong">
                            <img src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/10.webp" class="card-img-top" />
                            <div class="card-body d-flex flex-column">
                                <div class="d-flex flex-row">
                                    <h5 class="mb-1 me-1">$34,50</h5>
                                    <span class="text-danger"><s>$49.99</s></span>
                                </div>
                                <p class="card-text">T-shirts with multiple colors, for men and lady</p>
                                <div class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
                                    <a href="#!" class="btn btn-primary shadow-0 me-1">Add to cart</a>
                                    <a href="#!" class="btn btn-light border icon-hover px-2 pt-2"><i class="fas fa-heart fa-lg text-secondary px-1"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 d-flex">
                        <div class="card w-100 my-2 shadow-2-strong">
                            <img src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/11.webp" class="card-img-top" />
                            <div class="card-body d-flex flex-column">
                                <h5 class="card-title">$120.00</h5>
                                <p class="card-text">Winter Jacket for Men and Women, All sizes</p>
                                <div class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
                                    <a href="#!" class="btn btn-primary shadow-0 me-1">Add to cart</a>
                                    <a href="#!" class="btn btn-light border icon-hover px-2 pt-2"><i class="fas fa-heart fa-lg text-secondary px-1"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 d-flex">
                        <div class="card w-100 my-2 shadow-2-strong">
                            <img src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/12.webp" class="card-img-top" />
                            <div class="card-body d-flex flex-column">
                                <h5 class="card-title">$120.00</h5>
                                <p class="card-text">T-shirts with multiple colors, for men and lady</p>
                                <div class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
                                    <a href="#!" class="btn btn-primary shadow-0 me-1">Add to cart</a>
                                    <a href="#!" class="btn btn-light border icon-hover px-2 pt-2"><i class="fas fa-heart fa-lg text-secondary px-1"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 d-flex">
                        <div class="card w-100 my-2 shadow-2-strong">
                            <img src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/13.webp" class="card-img-top" style="aspect-ratio: 1 / 1"/>
                            <div class="card-body d-flex flex-column">
                                <h5 class="card-title">$120.00</h5>
                                <p class="card-text">Blazer Suit Dress Jacket for Men, Blue color</p>
                                <div class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
                                    <a href="#!" class="btn btn-primary shadow-0 me-1">Add to cart</a>
                                    <a href="#!" class="btn btn-light border icon-hover px-2 pt-2"><i class="fas fa-heart fa-lg text-secondary px-1"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 d-flex">
                        <div class="card w-100 my-2 shadow-2-strong">
                            <img src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/14.webp" class="card-img-top" style="aspect-ratio: 1 / 1" />
                            <div class="card-body d-flex flex-column">
                                <h5 class="card-title">$510.00</h5>
                                <p class="card-text">Slim sleeve wallet Italian leather - multiple colors</p>
                                <div class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
                                    <a href="#!" class="btn btn-primary shadow-0 me-1">Add to cart</a>
                                    <a href="#!" class="btn btn-light border icon-hover px-2 pt-2"><i class="fas fa-heart fa-lg text-secondary px-1"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 d-flex">
                        <div class="card w-100 my-2 shadow-2-strong">
                            <img src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/10.webp" class="card-img-top" />
                            <div class="card-body d-flex flex-column">
                                <h5 class="card-title">$79.99</h5>
                                <p class="card-text">T-shirts with multiple colors, for men and lady</p>
                                <div class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
                                    <a href="#!" class="btn btn-primary shadow-0 me-1">Add to cart</a>
                                    <a href="#!" class="btn btn-light border icon-hover px-2 pt-2"><i class="fas fa-heart fa-lg text-secondary px-1"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 d-flex">
                        <div class="card w-100 my-2 shadow-2-strong">
                            <img src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/11.webp" class="card-img-top" />
                            <div class="card-body d-flex flex-column">
                                <h5 class="card-title">$120.00</h5>
                                <p class="card-text">Winter Jacket for Men and Women, All sizes</p>
                                <div class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
                                    <a href="#!" class="btn btn-primary shadow-0 me-1">Add to cart</a>
                                    <a href="#!" class="btn btn-light border icon-hover px-2 pt-2"><i class="fas fa-heart fa-lg text-secondary px-1"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 d-flex">
                        <div class="card w-100 my-2 shadow-2-strong">
                            <img src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/12.webp" class="card-img-top" />
                            <div class="card-body d-flex flex-column">
                                <h5 class="card-title">$120.00</h5>
                                <p class="card-text">T-shirts with multiple colors, for men and lady</p>
                                <div class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
                                    <a href="#!" class="btn btn-primary shadow-0 me-1">Add to cart</a>
                                    <a href="#!" class="btn btn-light border icon-hover px-2 pt-2"><i class="fas fa-heart fa-lg text-secondary px-1"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 d-flex">
                        <div class="card w-100 my-2 shadow-2-strong">
                            <img src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/9.webp" class="card-img-top" />
                            <div class="card-body d-flex flex-column">
                                <h5 class="card-title">$43.50</h5>
                                <p class="card-text">Summer New Men's Denim Jeans Shorts</p>
                                <div class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
                                    <a href="#!" class="btn btn-primary shadow-0 me-1">Add to cart</a>
                                    <a href="#!" class="btn btn-light border icon-hover px-2 pt-2"><i class="fas fa-heart fa-lg text-secondary px-1"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <hr />

                <!-- Pagination -->
                <nav aria-label="Page navigation example" class="d-flex justify-content-center mt-3">
                    <ul class="pagination">
                        <li class="page-item disabled">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                        <li class="page-item"><a class="page-link" href="#">5</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- Pagination -->
            </div>
        </div>
    </div>
</section>
<!-- sidebar + content -->
<!--footer-->
<jsp:include page="common/footer.jsp"/>


<script type="text/javascript" src="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/js/mdb.min.js"></script>
<script src="assets/js/jquery-2.1.4.min.js"></script>
<!--/login-->
<script>
    $(document).ready(function () {
        $(".button-log a").click(function () {
            $(".overlay-login").fadeToggle(200);
            $(this).toggleClass('btn-open').toggleClass('btn-close');
        });
    });
    $('.overlay-close1').on('click', function () {
        $(".overlay-login").fadeToggle(200);
        $(".button-log a").toggleClass('btn-open').toggleClass('btn-close');
        open = false;
    });
</script>
<!--//login-->
<script>
    // optional
    $('#customerhnyCarousel').carousel({
        interval: 5000
    });
</script>
<!-- cart-js -->
<script src="assets/js/minicart.js"></script>
<script>
    transmitv.render();

    transmitv.cart.on('transmitv_checkout', function (evt) {
        var items, len, i;

        if (this.subtotal() > 0) {
            items = this.items();

            for (i = 0, len = items.length; i < len; i++) {}
        }
    });
</script>
<!-- //cart-js -->
<!--pop-up-box-->
<script src="assets/js/jquery.magnific-popup.js"></script>
<!--//pop-up-box-->
<script>
    $(document).ready(function () {
        $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',
            fixedContentPos: false,
            fixedBgPos: true,
            overflowY: 'auto',
            closeBtnInside: true,
            preloader: false,
            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });

    });
</script>
<!--//search-bar-->
<!-- disable body scroll which navbar is in active -->

<script>
    $(function () {
        $('.navbar-toggler').click(function () {
            $('body').toggleClass('noscroll');
        })
    });
</script>
<!-- disable body scroll which navbar is in active -->
<script src="assets/js/bootstrap.min.js"></script>
<script type="text/javascript" >{}</script>
</body>
</html>