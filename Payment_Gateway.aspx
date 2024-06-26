﻿<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../Assets/CSS/css/bootstrap.min.css" type="text/css" media="all" />

    <link rel="stylesheet" href="../Assets/CSS/css/style.css" type="text/css" media="all" />
    <link rel="stylesheet" href="../Assets/CSS/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Payment_Gateway.css" type="text/css" />

    <script src="../Assets/js/jquery-3.6.0.min.js"></script>
    <script src="../Assets/js/bootstrap.min.js"></script>
 
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 mt-4">
                <h3 class="text-center display-5" style="color: white;">Payment Gayteway</h3>
            </div>
        </div>

        <div class="row mt-4">
            <div id="illustration" class="col-lg-3 me-2">
                <img src="../Assets/images/Payment_illustration_1.jpg" alt="Payment" />
                
            </div>
            <div class="col-lg-5 border shadow p-4 ms-5 bg-light">
                <div class="row">
                    <div class="input-group mt-3 mb-4">
                        <span class="input-group-text">Card Number</span>
                        <input type="text" class="form-control" maxlength="19" id="number" onkeyup="CheckCardType()" placeholder="---- ---- ----" aria-label="Amount (to the nearest dollar)">
                        <span class="input-group-text">
                            <div class="imgdiv" id="img"></div>
                        </span>
                    </div>
                    <div class="row">
                        <div class="col-lg-1 mt-1">
                            <label for="">Expiry Date</label>
                        </div>
                        <div class="col-lg-3 form-floating mb-4 ms-3">
                            <input type="text" class="form-control" maxlength="5" id="expdate" placeholder="name@example.com">
                            <label for="floatingInput" class="p-3">mm/yy</label>
                        </div>
                        <div class="col-lg-1 mt-3 ms-5">
                            <label for="">CVV</label>
                        </div>
                        <div class="col-lg-3 form-floating mb-4">
                            <input type="text" class="form-control" onkeypress="GetData(this.value)" maxlength="3" id="cvv" placeholder="name@example.com">
                            <label for="floatingInput" class="p-3">---</label>
                        </div>
                    </div>
                    <div class="input-group flex-nowrap">
                        <span class="input-group-text" id="addon-wrapping">Name</span>
                        <input type="text" class="form-control" placeholder="Card Holder's Name" id="name" aria-label="Username" aria-describedby="addon-wrapping">
                    </div>
                    <div class="col-lg-12">
                        <span id="message1" class="mx-3 text-danger"></span>
                    </div>
                    <button class=" col-lg-4 btn btn-primary mx-auto" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop" aria-controls="offcanvasTop" onclick="Confirmation()">Pay</button>
                    <div class="offcanvas offcanvas-top Payment_Success" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel">
                        <div class="offcanvas-header">
                            <h5 id="offcanvasTopLabel" class="text-success">PAYMENT SUCCESSFULL <i class="fas fa-check"></i></h5>
                            <button type="button" id="close" class="btn-close text-reset border border-danger border-3" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                        </div>
                        <div class="offcanvas-body text-center">
                            <h5>Card number -- <span id="cardnumber" class="text-success"></span></h5>
                            <h5>Card used -- <span id="card_company" class="text-success"></span></h5>
                            <h5>Expiry Date -- <span id="expiry" class="text-success"></span></h5>
                            <h5>CVV number -- <span id="cvv_number" class="text-success"></span></h5>
                            <h5>Card Holder's name -- <span id="cardname" class="text-success"></span></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-lg-4 mx-auto">
                <div class="row">
                    <div class="col">
                        <h3 class="text-center">Pay online with your card</h3>
                        <h4 class="text-center">your transaction is secure with one of the most reliable payment system</h4>
                    </div>
                </div>
                <div class="row mt-3 icons">
                    <div class="col-lg-3">
                        <img src="../Assets/images/mastercard.png" alt="">
                        <p>1234 **** **** ****</p>
                    </div>
                    <div class="col-lg-3">
                        <img src="../Assets/images/visa image.png" alt="">
                        <p>2345 **** **** ****</p>
                    </div>
                    <div class="col-lg-3">
                        <img src="../Assets/images/rupay card.png" alt="">
                        <p>3456 **** **** ****</p>
                    </div>
                    <div class="col-lg-3">
                        <img src="../Assets/images/paypal card.png" alt="">
                        <p>4567 **** **** ****</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

      <script src="Payment_Validation.js"></script>
</body>
</html>





