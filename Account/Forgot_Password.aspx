<%@ Page Language="C#" MasterPageFile="~/GlobalTemplate.Master" AutoEventWireup="true"  CodeBehind="Forgot_Password.aspx.cs" Inherits="LNPWI_DCS.Account.Forgot_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <div class="page-header mb-5">
        <div class="container">
            <h2>Forgot Password</h2>
        </div>
    </div>
        <div class="container mb-5">
            <div class="d-flex justify-content-center align-items-center container "> 
                <div class="form-group col-md-4 col-lg-offset-6 centered">
                    Enter your email to receive password reset instructions.
                </div>
            </div>

            <div class="d-flex justify-content-center align-items-center container "> 
                <div class="form-group col-md-4 col-lg-offset-6 centered">
                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="d-flex justify-content-center align-items-center container "> 
                <div class="form-group col-md-4 col-lg-offset-6 centered">    
                     <asp:Button ID="btnSubmit" runat="server" Text="Submit" cssclass="btn btn-cherry"/>
                </div>
            </div>
            <div class="d-flex justify-content-center align-items-center container "> 
                <asp:Label ID="lblWarning" runat="server" Text="Please enter a valid email" Visible="False" CssClass="alert-danger"></asp:Label>
            </div>
        </div>
</asp:Content>
