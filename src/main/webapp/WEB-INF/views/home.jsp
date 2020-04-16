<%@include file="/WEB-INF/views/template/header.jsp" %>


<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide home-image"
                 src="<c:url value="/resources/images/back1.jpg" />"
                 alt="First slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>Bienvenid@ a la tienda virtual de Verdes Org&aacute;nicos</h1>

                    <p>Aqu&iacute; puede encontrar una gran variedad de productos frescos ya sea org&aacute;nicos o en proceso de transici&oacute;n.</p>

                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide home-image"
                 src="<c:url value="/resources/images/back2.jpg" />"
                 alt="Second slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>Cosas que debes saber de Verdes Org&aacute;nicos</h1>

                    <p>Somos una empresa familiar dedicada a la producci&oacute;n org&aacute;nica desde el 2009.</p>
                    <p>Contamos con una finca ubicada en el Yas de Para&iacute;so y otra en Puriscal.</p>

                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide home-image"
                 src="<c:url value="/resources/images/back3.jpg" />"
                 alt="Third slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>Productos frescos a su casa!</h1>

                    <p>Haga su pedido en l&iacute;nea y con gusto se lo llevaremos a su casa.</p>
                    <p>Al momento de la entrega se realiza la cancelaci&oacute;n ya sea en efectivo, tarjeta de cr&eacute;dito o Sinpe m&oacute;vil.</p>

                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Instrument" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/instrument.jpg" />" alt="Instrument
                Image" width="140" height="140"></a>

            <h2>Instrument</h2>
            <p>Well crafted and delicate instruments.</p>

        </div><!-- /.col-lg-4 -->


        <div class="row">
            <div class="col-lg-4">
                <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Record" />"
                   role="button">
                    <img class="img-circle" src="<c:url value="/resources/images/record.jpg" />" alt="Instrument
                Image" width="140" height="140"></a>

                <h2>Discography</h2>
                <p>An exceptional collections of music records in favor of the traditional and modern genre of jazz.</p>

            </div><!-- /.col-lg-4 -->

            <div class="row">
                <div class="col-lg-4">
                    <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Accessory" />"
                       role="button">
                        <img class="img-circle" src="<c:url value="/resources/images/accessory.jpg" />" alt="Instrument
                Image" width="140" height="140"></a>

                    <h2>Accessories</h2>
                    <p>All musical and related geeky goods..</p>

                </div><!-- /.col-lg-4 -->


            </div><!-- /.row -->

            <%@include file="/WEB-INF/views/template/footer.jsp" %>

