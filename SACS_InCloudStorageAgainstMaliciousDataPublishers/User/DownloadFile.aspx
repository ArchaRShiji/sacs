<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="DownloadFile.aspx.cs" Inherits="User_DownloadFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Download My Files
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
       
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
      <form id="Form1" runat="server">
<div class="row">
  <div class="col-lg-1"></div>
      <div class="col-lg-10">


         
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-striped" GridLines="None" OnRowUpdating="GridView1_RowUpdating"  >
        <Columns>
            <asp:TemplateField HeaderText="File Name">
                <ItemTemplate  >
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("fid") %>' Visible="False"></asp:Label>
                    
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </ItemTemplate>
                

            </asp:TemplateField>
            
            <asp:BoundField  DataField="date" HeaderText=" Shared Date"/>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" Text="download" CssClass="btn btn-primary" CommandName="update" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
            
          </div>
    <div class="col-lg-1"></div>
    </div>
          </form>
</asp:Content>

