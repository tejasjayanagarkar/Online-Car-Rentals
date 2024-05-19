<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customers.aspx.cs" Inherits="OnlineCarRent.View.Customer.customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="../../Assets/Libraries/css/bootstrap.min.css"/>

</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-warning">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">DriveEaseRentals</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="Nav-Bar " id="navbarNavDropdown">
      <ul class="navbar-nav">
       <li class="nav-item">
          <a class="nav-link" href="Home.aspx">Home</a>
        </li> 
        <li class="nav-item">
          <a class="nav-link" href="Cars.aspx">Cars</a>
        </li> 
          <li class="nav-item">
              <a class="nav-link" href="customers.aspx">Customers</a>
          </li>          
        <li class="nav-item">
          <a class="nav-link" href="../Login.aspx">Logout</a>
        </li>
        
      </ul>
    </div>
  </div>
</nav>
   




    <form id="form1" runat="server" style="background: #fff;">
        <div>
            <div class="container-fluid" >
        <div class="row">
            <div class="col-md-4">
                <div class="row">
                    <div class="col"></div>
                    <center>
                    <div class="col">
                        <h3 class="text-warning pl-4">Manage Cars</h3>
                        <img src="../../Assets/img/Customerpng.png" style="height:100px; margin-top: 10px; margin-bottom: 10px;"/>
                    </div>
                    </center>
                    <div class="col"></div>
                </div>
                <div class="row">
                    <div class="col">
                        <!--DESIGN LOGIN-->
                            <div class="form group" id="">
                                <asp:Label style="margin-top:2px;" ID="Label1" runat="server" Text="Label">Customer Name</asp:Label><br />
                               <asp:TextBox ID="TextBox1" runat="server" required="required" placeholder="Customer Name" Width="488px" CausesValidation="True"></asp:TextBox>
                              <!--<input type="text" class="form-control" id="LNumberTb" placeholder="Enter Plate Number" runat="server">-->
                               <br />
                               <asp:Label style="margin-top:2px;" ID="Label2" runat="server" Text="Label">Customer Address</asp:Label><br />
                               <asp:TextBox ID="TextBox2" runat="server" required="required" placeholder="Customer Address" Width="488px" CausesValidation="True"></asp:TextBox>

                                  <br />
                                
                                <asp:Label style="margin-top:2px;" ID="Label3" runat="server" Text="Label">Customer Phone</asp:Label><br />
                                <asp:TextBox ID="TextBox3" runat="server" required="required" placeholder="Customer Phone" Width="488px"></asp:TextBox>
                                <br />

                                <asp:Label style="margin-top:2px;" ID="Label4" runat="server" Text="Label">Customer Password</asp:Label><br />
                                <asp:TextBox ID="TextBox4" runat="server" required="required" placeholder="Enter Password" Width="488px" type="password"></asp:TextBox>
                            
                               <br />
                               <br />
                                <Label ID="ErrorMsg" runat="server"></Label>
                                <asp:Button type="submit" id="EditBtn" class="btn btn-danger" Text="Edit" runat="server" OnClick="EditBtn_Click" Width="65px" />
                                <asp:Button type="submit" id="SaveBtn" class="btn btn-danger" Text="Save" runat="server" OnClick="SaveBtn_Click" Width="65px"/>                            
                                <asp:Button type="submit" ID="DelteBtn" class="btn btn-danger" Text="Delete" runat="server" OnClick="DelteBtn_Click" Width="65px" />
                             <div>
                                <h1>Customer's List</h1>
                                 <asp:GridView ID="GridView2" runat="server" Width="1109px" class="table-warning table-hover" AutoGenerateSelectButton="True">
                                      <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />

                                 </asp:GridView>

                               
                            </div>
                          </div>             
                            
                            <asp:Button ID="Previous" class="btn btn-danger" runat="server" Text="Previous" PostBackUrl="~/View/Admin/Home.aspx"/>
                          

                            
                    </div>
                </div>
            </div>
       
        </div>
    </div>

        </div>
    </form>
</body>
</html>
