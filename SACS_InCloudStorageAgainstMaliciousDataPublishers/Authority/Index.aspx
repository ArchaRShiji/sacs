<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" validateRequest="false"  Inherits="Authority_Index" %>


<!doctype html>
 



<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Gentlemen's Barber Shop - HTML CSS Template</title>

        <!-- CSS FILES -->        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=Unbounded:wght@300;500&display=swap" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="css/bootstrap-icons.css" rel="stylesheet">

        <link href="css/templatemo-barber-shop.css" rel="stylesheet">
<!--

TemplateMo 585 Barber Shop

https://templatemo.com/tm-585-barber-shop

-->
    </head>
    
    <body>
        <form runat="server">
        <div class="container-fluid">
            <div class="row">

                <button class="navbar-toggler d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <nav id="sidebarMenu" class="col-md-4 col-lg-3 d-md-block sidebar collapse p-0">

                    <div class="position-sticky sidebar-sticky d-flex flex-column justify-content-center align-items-center">
                        <a class="navbar-brand" href="index.html">
                            <h4>SACS<br /></h4>
                            in Cloud Storage
                            <%--<img src="images/templatemo-barber-logo.png" class="logo-image img-fluid" align="">--%>
                        </a>
                        <br />
                        <br />
                        <ul class="nav flex-column" style="font-size:small">
                            <li class="nav-item" >
                                <a class="nav-link click-scroll" href="#section_1" style="font-size:10px">Home</a>
                            </li>

                            <li class="nav-item"  >
                                <a class="nav-link click-scroll" href="#section_2" style="font-size:10px">View Users</a>
                            </li>

                            <li class="nav-item"  >
                                <a class="nav-link click-scroll" href="#section_3" style="font-size:10px">Add Users</a>
                            </li>

                           <%-- <li class="nav-item"  >
                                <a class="nav-link click-scroll" href="#section_4" style="font-size:10px">Price List</a>
                            </li>--%>

                            <li class="nav-item"  >
                                <a class="nav-link click-scroll" href="../Index.aspx" style="font-size:10px">Logout</a>
                            </li>
                        </ul>
                    </div>
                </nav>
                
                <div class="col-md-8 ms-sm-auto col-lg-9 p-0">
                    <section class="hero-section d-flex justify-content-center align-items-center" id="section_1">

                            <div class="container">
                                <div class="row">

                                    <div class="col-lg-8 col-12">
                                        <h1 class="text-white mb-lg-3 mb-4"><strong>Cloud <em>Data Security</em></strong></h1>
                                        <p class="text-black">Get the most Secure Storage for you</p>
                                        <br>
                                       
                                    </div>
                                </div>
                            </div>

                         <%--   <div class="custom-block d-lg-flex flex-column justify-content-center align-items-center">
                                <img src="images/vintage-chair-barbershop.jpg" class="custom-block-image img-fluid" alt="">

                                <h4><strong class="text-white">Hurry Up! Get good haircut.</strong></h4>

                                <a href="#booking-section" class="smoothscroll btn custom-btn custom-btn-italic mt-3">Book a seat</a>
                            </div>--%>
                    </section>


                    <section class="about-section section-padding" id="section_2">
                        <div class="container">
                            <div class="row">

                                <div class="col-lg-12 col-12 mx-auto">
                                    <h2 class="mb-4">View Users</h2>


                                </div>

                                    <h6 class="mb-5">You can Block Users</h6>

                                        <div class="col-lg-1"></div>
                                 <div class="col-lg-10" style="height:500px;overflow:scroll">

                                     
       <asp:DataList ID="DataList1" runat="server"  RepeatDirection="Vertical" RepeatColumns="1" CssClass="table table-hover"  OnUpdateCommand="DataList1_UpdateCommand" OnDeleteCommand="DataList1_DeleteCommand"  Height="500px" >
        <ItemTemplate>
            <table class="table table-hover">
            <tr>
                      <td>
                        <div class="d-flex px-2 py-1">
                          <div>
                          <asp:Image ID="Image1" runat="server" class="avatar avatar-sm me-3 border-radius-lg" alt="user1" ImageUrl='<%# Bind("pic") %>' Height="75px" Width="75px" CssClass="img img-thumbnail"/>
                            <%--<img src="assets/img/team-2.jpg" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">--%>
                          </div>
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 " style="font-size:smaller">
                              <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label></h6>
                            <p class="text-xs text-secondary mb-0" style="font-size:smaller">
                               
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                            </p>
                          </div>
                        </div></td>
                        
                      <td class="align-middle text-center text-sm" style="font-size:20px"> 
              
                                <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-success" CommandName="update"  style="font-size:10px">Accept</asp:LinkButton>
                          <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-danger" CommandName="delete"  style="font-size:10px">Block</asp:LinkButton>
                        <%--<span class="badge badge-sm bg-gradient-success">Online</span>--%>
                      </td>
                    
                    </tr>
             </table>
        </ItemTemplate>
    </asp:DataList>
                                        











                                     
                                 </div>
                                 <div class="col-lg-1"></div>

                                        

                            </div>
                        </div>
                    </section>

             

                    <section class="booking-section section-padding"    >
                    <div class="container" style="background-image:url('../images/img.jpg');">
                        <div class="row" >

                            <div class="col-lg-10 col-12 mx-auto"  >
                                <form action="#" method="post" class="custom-form booking-form" role="form"  >
                                    <div class="text-center mb-5" style="color:white;font-weight:bold">
                                        <h3 class="mb-1" style="color:white;font-weight:bold">Register Users</h3>

                                        <p style="color:white;font-weight:bold">Please fill out the form and we get back to you</p>
                                    </div>

                                    <div class="booking-form-body">
                                        <div class="row table table-hover" >

                                            <table class="table table-hover" id="section_3">
                                                <tr>
                                                  
                                                    <td colspan="2">
                                                <asp:TextBox ID="TextBox1" runat="server"  class="form-control" placeholder="Full name" required="required" CssClass="form-control"></asp:TextBox>

                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td> <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="email " CssClass="form-control" required="required"></asp:TextBox></td>
                                                    <td> <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="contact " required="required" CssClass="form-control"></asp:TextBox></td>

                                                 </tr>
                                                      <tr>
                                                    <td><asp:TextBox ID="TextBox5" runat="server" placeholder="Password"  class="form-control" CssClass="form-control"  required="required" TextMode="Password"></asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox6" runat="server" placeholder="Confirm Password"  class="form-control"  required="required" TextMode="Password"></asp:TextBox></td>
                                                          </tr>

                                                           <tr>
                                                    <td colspan="2">   Photo  <asp:FileUpload ID="FileUpload1" runat="server" class="form-control"  /></td>
                                                   
                                                </tr>
                                                
                                            </table>
                                            
                                        <div class="col-lg-4 col-md-10 col-8 mx-auto">
                                            <asp:Button ID="Button1" runat="server" Text="Register" class="form-control" OnClick="Button1_Click" BackColor="Goldenrod"/>
                                           <%-- <button type="submit" class="form-control">Submit</button>--%>
                                        </div>
                                    </div>
                                        </div>
                                </form>
                        </div>
                    </div>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        </div>
                </section>


                  <%--  <section class="price-list-section section-padding" id="section_4">
                        <div class="container">
                            <div class="row">

                                <div class="col-lg-8 col-12">
                                    <div class="price-list-thumb-wrap">
                                        <div class="mb-4">
                                            <h2 class="mb-2">Price List</h2>

                                            <strong>Starting at $25</strong>
                                        </div>

                                        <div class="price-list-thumb">
                                            <h6 class="d-flex">
                                                Haircut
                                                <span class="price-list-thumb-divider"></span>

                                                <strong>$32.00</strong>
                                            </h6>
                                        </div>

                                        <div class="price-list-thumb">
                                            <h6 class="d-flex">
                                                Beard Trim
                                                <span class="price-list-thumb-divider"></span>

                                                <strong>$26.00</strong>
                                            </h6>
                                        </div>

                                        <div class="price-list-thumb">
                                            <h6 class="d-flex">
                                                Razor Cut
                                                <span class="price-list-thumb-divider"></span>

                                                <strong>$36.00</strong>
                                            </h6>
                                        </div>

                                        <div class="price-list-thumb">
                                            <h6 class="d-flex">
                                                Shaves
                                                <span class="price-list-thumb-divider"></span>

                                                <strong>$30.00</strong>
                                            </h6>
                                        </div>

                                        <div class="price-list-thumb">
                                            <h6 class="d-flex">
                                                Styling / Color
                                                <span class="price-list-thumb-divider"></span>

                                                <strong>$25.00</strong>
                                            </h6>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-12 custom-block-bg-overlay-wrap mt-5 mb-5 mb-lg-0 mt-lg-0 pt-3 pt-lg-0">
                                    <img src="images/vintage-chair-barbershop.jpg" class="custom-block-bg-overlay-image img-fluid" alt="">
                                </div>

                            </div>
                        </div>
                    </section>


                <section class="contact-section" id="section_5">
                    <div class="section-padding section-bg">
                        <div class="container">
                            <div class="row">   

                                <div class="col-lg-8 col-12 mx-auto">
                                    <h2 class="text-center">Say hello</h2>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="section-padding">
                        <div class="container">
                            <div class="row">

                                <div class="col-lg-6 col-12">
                                    <h5 class="mb-3"><strong>Contact</strong> Information</h5>

                                    <p class="text-white d-flex mb-1">
                                        <a href="tel: 120-240-3600" class="site-footer-link">
                                            (+49) 
                                            120-240-3600
                                        </a>
                                    </p>

                                    <p class="text-white d-flex">
                                        <a href="mailto:info@yourgmail.com" class="site-footer-link">
                                            hello@barber.beauty
                                        </a>
                                    </p>

                                    <ul class="social-icon">
                                        <li class="social-icon-item">
                                            <a href="#" class="social-icon-link bi-facebook">
                                            </a>
                                        </li>
            
                                        <li class="social-icon-item">
                                            <a href="#" class="social-icon-link bi-twitter">
                                            </a>
                                        </li>
            
                                        <li class="social-icon-item">
                                            <a href="#" class="social-icon-link bi-instagram">
                                            </a>
                                        </li>

                                        <li class="social-icon-item">
                                            <a href="#" class="social-icon-link bi-youtube">
                                            </a>
                                        </li>

                                        <li class="social-icon-item">
                                            <a href="#" class="social-icon-link bi-whatsapp">
                                            </a>
                                        </li>
                                    </ul>
                                </div>

                                <div class="col-lg-5 col-12 contact-block-wrap mt-5 mt-lg-0 pt-4 pt-lg-0 mx-auto">
                                    <div class="contact-block">
                                        <h6 class="mb-0">
                                            <i class="custom-icon bi-shop me-3"></i>

                                            <strong>Open Daily</strong>

                                            <span class="ms-auto">10:00 AM - 8:00 PM</span>
                                        </h6>
                                    </div>
                                </div>

                                <div class="col-lg-12 col-12 mx-auto mt-5 pt-5">
                                    <iframe class="google-map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7702.122299518348!2d13.396786616231472!3d52.531268574169616!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47a85180d9075183%3A0xbba8c62c3dc41a7d!2sBarbabella%20Barbershop!5e1!3m2!1sen!2sth!4v1673886261201!5m2!1sen!2sth" width="100%" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                </div>

                            </div>
                        </div>
                    </div>
                </section>

                <footer class="site-footer">
                    <div class="container">
                        <div class="row">

                            <div class="col-lg-12 col-12">
                                <h4 class="site-footer-title mb-4">Our Branches</h4>
                            </div>

                            <div class="col-lg-4 col-md-6 col-11">
                                <div class="site-footer-thumb">
                                    <strong class="mb-1">Grünberger</strong>

                                    <p>Grünberger Str. 31, 10245 Berlin, Germany</p>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 col-11">
                                <div class="site-footer-thumb">
                                    <strong class="mb-1">Behrenstraße</strong>

                                    <p>Behrenstraße 27, 10117 Berlin, Germany</p>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 col-11">
                                <strong class="mb-1">Weinbergsweg</strong>

                                <p>Weinbergsweg 23, 10119 Berlin, Germany</p>
                            </div>
                        </div>
                    </div>

                    <div class="site-footer-bottom">
                        <div class="container">
                            <div class="row align-items-center">

                                <div class="col-lg-8 col-12 mt-4">
                                    <p class="copyright-text mb-0">Copyright © 2036 Barber Shop 
                                    - Design: <a href="https://templatemo.com" rel="nofollow" target="_blank">TemplateMo</a></p>
                                </div>

                                <div class="col-lg-2 col-md-3 col-3 mt-lg-4 ms-auto">
                                    <a href="#section_1" class="back-top-icon smoothscroll" title="Back Top">
                                        <i class="bi-arrow-up-circle"></i>
                                    </a>
                                </div>

                            </div>
                        </div>
                    </div>
                </footer>--%>
            </div>

        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/click-scroll.js"></script>
        <script src="js/custom.js"></script>
</form>
    </body>
</html>