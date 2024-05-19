<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Rents.aspx.cs" Inherits="OnlineCarRent.View.Admin.Rents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    
    <!--Customers Design form-->
    <div class="container-fluid" style="background: linear-gradient(to right, #3498db, #e74c3c);">
        <div class="row">
            <div class="col-md-4">
                <div class="row">
                    <div class="col"></div>
                    <center>
                    <div class="col">
                        <h3 class="text-warning pl-4">Rented Cars</h3>
                        <img src="../../Assets/img/rentedcars.png" style="height: 200px; width:auto; margin-top: -50px; margin-bottom: auto;"/>
                    </div>
                    </center>
                    <div class="col"></div>
                </div>
                <div class="row">
                    <div class="col">
                        <!--DESIGN LOGIN-->
                        <form runat="server">
                            <div class="form group">

                              <asp:Label style="margin-top:2px;" ID="Label1" runat="server" Text="Label">Rent Id</asp:Label><br />
                              <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Rent Id" Width="488px"></asp:TextBox>

                              <!--<label for="exampleInputEmail1">Customer Name</!label>
                              <input type="text" class="form-control" id="CustNameTb" placeholder="Enter Customer's Name" runat="server">-->

                                <asp:Label style="margin-top:2px;" ID="Label2" runat="server" Text="Label">Licence Number</asp:Label><br />
                                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Customer's Addresss" Width="488px"></asp:TextBox>
                                <!--<label for="exampleInputEmail1">Customers Address</!--label>
                                <input type="text" class="form-control" id="AddTb" placeholder="Enter Customer's Address" runat="server">-->

                           
                                
                           
                                <asp:Label style="margin-top:2px;" ID="Label4" runat="server" Text="Label">Rent Date</asp:Label><br />
                                <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Customer's Password" Width="488px" type="date"></asp:TextBox>

                                 <asp:Label style="margin-top:2px;" ID="Label5" runat="server" Text="Label">Return Date</asp:Label><br />
                                <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Return Date" Width="488px" type="date"></asp:TextBox>
                                  
                                 <asp:Label style="margin-top:2px;" ID="Label6" runat="server" Text="Label">Fees</asp:Label><br />
                                <asp:TextBox ID="TextBox6" runat="server" placeholder="Fees" Width="488px"></asp:TextBox>
                            </div>

                            
                            <br />
                            <br />
                            
                            <asp:Button ID="Button1" runat="server" Text="Edit" class="btn btn-danger" OnClick="Button1_Click"/>
                            <asp:Button ID="Button2" runat="server" Text="Add" class="btn btn-danger" OnClick="Button2_Click"/>
                            <asp:Button ID="Button3" runat="server" Text="Delete" class="btn btn-danger" OnClick="Button3_Click"/>
                           

                                <asp:GridView ID="GridView1" runat="server" Width="1109px" class="table-warning table-hover" AutoGenerateSelectButton="True">
                                    <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />

                                </asp:GridView>
                          </form>

                    </div>
                </div>
            </div>
            
        </div>
    </div>

</asp:Content>
