<%@ Page Title="" Language="C#" MasterPageFile="~/GlobalTemplate.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LNPWI_DCS.Account.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <div class="page-header">
        <div class="container">
            <h2>Login</h2>
        </div>
    </div>
    <div class="container my-5 py-5">
        <div class="d-flex justify-content-center align-items-center container "> 
                    <div class="form-group col-md-4 col-lg-offset-6 centered">
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
        </div>
        <div class="d-flex justify-content-center align-items-center container "> 
                    <div class="form-group col-md-4 col-lg-offset-6 centered">
                        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
        </div>
        <div class="d-flex justify-content-center align-items-center container "> 
            <div class="form-group col-md-4 col-lg-offset-6 centered">    
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" cssclass="btn btn-cherry" style="margin-right: 20px;" OnClick="btnSubmit_Click"/> 
                    <a href="Forgot_Password.aspx"  style="white-space: nowrap;">Forgot your password?</a>
                </div>
        </div>
        <div class="d-flex justify-content-center align-items-center container "> 
            <asp:Label ID="lblWarning" runat="server" Text="Please enter a valid email and password" Visible="False" CssClass="alert-danger"></asp:Label>
        </div>
    </div>
</asp:Content>
