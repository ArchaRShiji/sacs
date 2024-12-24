<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" validateRequest="false"  AutoEventWireup="true" CodeFile="PermittedFile.aspx.cs" Inherits="User_PermittedFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Permiite Files Here...
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <form runat="server">
<div class="row">
  <div class="col-lg-1"></div>
      <div class="col-lg-10">


          <asp:Panel ID="Panel1" runat="server">
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-striped" GridLines="None" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
            <asp:TemplateField HeaderText="File Name">
                <ItemTemplate  >
                    <asp:Label ID="Label1" runat="server" Text='<%# bind("fid") %>' Visible="False"></asp:Label>
                    
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </ItemTemplate>
                

            </asp:TemplateField>
            <asp:TemplateField HeaderText="Data owner">
                <ItemTemplate  >
                    <asp:Label ID="Label3" runat="server" Text='<%# bind("Downer") %>' Visible="False"></asp:Label>
                    
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </ItemTemplate>
                

            </asp:TemplateField>
            <asp:BoundField  DataField="rdate" HeaderText=" Shared Date"/>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" Text="download" CssClass="btn btn-primary" CommandName="update" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
          </asp:Panel>
          <asp:Panel ID="Panel2" runat="server" Visible="false">
              <br />
              <table class="table table-hover" >
                  <tr>
                      <td>Upload your Private key file</td>
                      <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                          <%--<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter your Private key"></asp:TextBox>--%>

                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click1" />



                          </td>
                  </tr>
              </table>

          </asp:Panel>

      </div>
          <div class="col-lg-1"></div>
              </div>
  
    
      </form>
</asp:Content>

