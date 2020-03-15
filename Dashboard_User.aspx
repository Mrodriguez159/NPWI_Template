<%@ Page Language="C#" MasterPageFile="~/GlobalTemplate.Master" AutoEventWireup="true" CodeBehind="Dashboard_User.aspx.cs" Inherits="LNPWI_DCS.Account.Dashboard_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <div class="page-header mb-4">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center">
                <h2><strong>Dashboard</strong></h2>
                <a href="Organizations/Calendar.aspx" class="btn btn-cherry align-text-bottom">Calendar View</a>
            </div>
        </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
            <table class="table" style="font-size:small;">
              <tbody>
                    <tr>
                        <th class="border-0 align-text-bottom"><h3>At a Glance</h3></th>
                        <td class="border-0"></td>
                    </tr>
                    <tr>
                      <th scope="row">New Task Created!</th>
                      <td class="align-content-sm-center"><h6>11/3</h6></td>
                    </tr>
                    <tr>
                      <th scope="row">New Comments on Task 'Project Proposal'</th>
                      <td><h6>11/3</h6></td>
                    </tr>
                    <tr>
                      <th scope="row">New Comments on Task 'W9'</th>
                      <td><h6>11/3</h6></td>
                    </tr>
                    <tr>
                      <th scope="row">More Notifications</th>
                      <td><i class="fa fa-angle-down" aria-hidden="true"></i></td>
                    </tr>


                    <tr class="break"><td colspan="2"></td></tr>
                    <tr>
                        <th class="border-0"><h3>To Do</h3></th>
                        <td class="border-0"></td>
                    </tr>
                    <tr>
                      <th scope="row" style="color:red">Submit W-9 Overdue</th>
                      <td><h6>11/3</h6></td>
                    </tr>
                    <tr>
                      <th scope="row">Project Proposal</th>
                      <td><h6>11/3</h6></td>
                    </tr>
                    <tr>
                      <th scope="row">Project Reflection</th>
                      <td><h6>11/3</h6></td>
                    </tr>
                    <tr>
                      <th scope="row">More Tasks</th>
                      <td><i class="fa fa-angle-down" aria-hidden="true"></i></td>
                    </tr>
                    <tr class="break"><td colspan="2"></td></tr>
                  </tbody>
             </table>
        </div>

      </div>
    </div>
</asp:Content>
