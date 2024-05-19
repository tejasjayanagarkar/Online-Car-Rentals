<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineCarRent.View.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Assets/Libraries/css/bootstrap.min.css"/>
    <style>
        *{
            margin-top:3%;
        }
        #Login{
            height:300%;
            width:35%;
            border:2px solid black;
            box-shadow:2px;
        }
        .design{
            margin:5% 9% 5% 5%;
        }
        h3{
            font-style:italic;
            text-align:center;
        }
    </style>
</head>
<body>
    <div class="container-fluid" id="Login">
        <div class="row">
            <div class="col-md-3"></div>
            <div>

            <form runat="server" class="design">

                <div class="row mt-5">
                    <div class="col"></div>
                    <div class="col">
                        <h3 class="text-danger">Login Page</h3>
                        <img src="../Assets/img/login.png" height="200" style="transform: rotate(-3deg);"/>
                    </div>
                    <div class="col"></div>
                </div>       


            <div>
                <asp:Label for="exampleInputEmail1" ID="Label1" runat="server" Text="Email address" Font-Names="role"></asp:Label>
                <asp:TextBox ID="TextBox1" type="email" Font-Names="role" class="form-control" placeholder="Enter User Id" aria-descibedby="emailHelp" required="required" Width="450px" runat="server"></asp:TextBox>
                <asp:Label for="exampleInputEmail1" ID="Label2" runat="server" Text="Password" Font-Names="role"></asp:Label>
                <asp:TextBox ID="TextBox2" type="password" class="form-control" Font-Names="role"  placeholder="Password" Width="450px" required="required" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <!--div>
                <asp:RadioButtonList class="form-check-input" ID="RadioButtonList1" RepeatDirection="Horizontal" Width="250px" runat="server" Font-Names="role">
                    <asp:ListItem id="ListItem1">Customer</asp:ListItem>
                    <asp:ListItem id="ListItem2">Admin</asp:ListItem>
                </asp:RadioButtonList>
            </div-->
                
            <br />
            <div class="form-group">
                <asp:Button type="submit" class="btn btn-warning" ID="Button1" runat="server" Text="Login as Admin" PostBackUrl="~/View/Admin/Home.aspx"/>
                <asp:Button type="submit" class="btn btn-warning" ID="SaveBtn" runat="server" Text="Login as Customer" OnClick="SaveBtn_Click1" PostBackUrl="~/View/Customer/Cars.aspx"/>
            </div>
         </form> 

               </div> 
           <div class="col-md-3"></div>
        

            
            </div>
        </div>       
</body>
</html>
