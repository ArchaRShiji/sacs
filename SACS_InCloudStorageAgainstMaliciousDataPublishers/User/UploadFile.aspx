<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="UploadFile.aspx.cs" Inherits="User_UploadFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Upload Files
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  
    <form runat="server">
      <div class="row" >
           
        <div class="col-lg-offset-1 col-lg-5"  >
            <br />
          <%--<img src="images/reg1.jpg" height="150px" width="550px" class="img img-rounded"/>--%>

            <table class="table table-hover">
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="FileName" BorderColor="Violet"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                 <tr>
                    <td> <asp:FileUpload ID="FileUpload1" runat="server" /><br /></td>
                </tr>
                 <tr>
                    <td style="text-align:center">
                        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click"  /></td>
                </tr>
            </table>


        </div>
        <div class="col-lg-offset-1 col-lg-5">
            <img src="images/storage.jpg"  class="img img-circle" height="280px" width="390px"/>

        </div>

    </div>
    </form>
</asp:Content>

