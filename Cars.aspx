<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="OnlineCarRent.View.Customer.Cars" %>

<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">

        <div class="row"> 
            <div class="col-md-10"> </div>  
                <div class="col-md-2">
                    <asp:Label ID="CustName" runat="server" Text=""></asp:Label>
                </div> 
        </div>
        <div class="row"> 
            <div class="col-md-4"> </div>  
                <div class="col-md-4 ml-5"><img src="../../Assets/img/bmw.png" alt="image" style="height:200px; margin-top:-50px;" /></div>    
                <div class="col-md-4">

                </div> 
        </div>

        <div class="row">
            <div class="col-md-3"></div>
            <div-- class="col">
                <form runat="server">
                <div class="row">
                    <div class="col-2"></div>
                            <div class="col-8"><h3 class="text-danger">Available Cars</h3></div>
                        </!div>
                <div class="col-md-8">
                    <style>
                        .hover-row:hover {
                            background-color: lightblue; /* Change this to your desired hover color */
                            cursor: pointer; /* Optional: Change cursor style */
                        }
                    </style>
                    <center>            
                        
                         <asp:GridView ID="GridView1" runat="server" Width="1109px" class="table-warning table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                    <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />

                                </asp:GridView>
                    </center>
                </div> 
                <div class="row">
                    <div class="col-4">
                        <div class="form-group">

                            <asp:TextBox ID="ReturnDate" type="date" class="form-control" runat="server" placeholder="Password" Width="365px" required="required"></asp:TextBox>
                            <!--input  id="PasswordTb" placeholder="Password"-->
                        </div>
                    </div>

                    <div class="col-4">
                            <div class="form-group d-grid">
                                <label id="InfoMsg" runat="server" class="text-danger"></label>
                                <asp:Button type="submit" id="BookBtn" Text="Book" runat="server" OnClick="BookBtn_Click" PostBackUrl="~/View/Payment_Gateway.aspx" />

                            </div>
                    </div>
                </div>
                
                
                </form>
            </div>
        </div>
        
</asp:Content>
