<%@ Page Title="" Language="C#" MasterPageFile="~/Sanitizer/Sanitizermaster.master" AutoEventWireup="true" CodeFile="SanitizeFile.aspx.cs" Inherits="Sanitizer_SanitizeFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Sanitizable Files
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-hover" OnRowDeleting="GridView1_RowDeleting" GridLines="none">
        <Columns>
            <asp:BoundField DataField="fname" HeaderText="FileName" />
            <asp:TemplateField HeaderText="File Name">
                <ItemTemplate>

                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("DataOwner") %>' Visible="false"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            
            <asp:BoundField DataField="date" HeaderText="Uploaded date" />
            <asp:TemplateField>
                <ItemTemplate>

                    <asp:Button ID="Button1" runat="server" Text="Sanitize File" CssClass="btn btn-sucess" CommandName="delete"  />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
          </div>
            <div class="col-lg-1"></div>
            </div>
        </form>
</asp:Content>

