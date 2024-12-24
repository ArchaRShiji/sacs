<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="AsssignUsers.aspx.cs" Inherits="User_AsssignUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Assign Users Permission
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <form runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="4" CssClass="table table-responsive">

        <ItemTemplate>

            <div class="feature">
									<div class=" ">
                                        <asp:Image ID="Image1" runat="server" CssClass="img-circle img-thumbnail"  Height="106px" ImageUrl='<%# Bind("pic") %>' Width="108px" /> 

									</div>
									<h2 class="feature-title" style="font-size:15px">
                                        <asp:CheckBox ID="CheckBox1" runat="server" /> <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label></h2>
									 <asp:Label ID="Label2" runat="server" Text='<%# Bind("email") %>' Visible="false" Font-Size="xx-Small"></asp:Label>
								</div>
        </ItemTemplate>
    </asp:DataList>


      <asp:Button ID="Button1" runat="server" Text="Share File"  CssClass="form-control btn btn-success" OnClick="Button1_Click" />
      </form>


</asp:Content>

