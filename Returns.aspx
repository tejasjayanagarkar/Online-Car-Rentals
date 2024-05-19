<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Returns.aspx.cs" Inherits="OnlineCarRent.View.Admin.Returns" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    
    <form runat="server">
        <h3>Returns</h3>
         <asp:GridView ID="GridView4" runat="server" Width="1109px" class="table-warning table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />

                                    <Columns>
                                        <asp:BoundField DataField="Rentid" HeaderText="Rentid" SortExpression="Rentid" />
                                        <asp:BoundField DataField="Lnumber" HeaderText="Lnumber" SortExpression="Lnumber" />
                                        <asp:BoundField DataField="RentDate" HeaderText="RentDate" SortExpression="RentDate" />
                                        <asp:BoundField DataField="ReturnDate" HeaderText="ReturnDate" SortExpression="ReturnDate" />
                                    </Columns>

         </asp:GridView>

         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString3 %>" SelectCommand="SELECT [Rentid], [Lnumber], [RentDate], [ReturnDate] FROM [Rents]"></asp:SqlDataSource>



     </form>

</asp:Content>
  