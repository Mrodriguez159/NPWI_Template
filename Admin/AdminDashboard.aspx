<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="LNPWI_DCS.Admin.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <div class="page-header mb-4">
        <div class="container">
            <h2><strong>Dashboard - 2019</strong></h2>
        </div>
    </div>
    <div class="container">
      <div class="row">

        <div class="col-md-12">
            <table class="table" style="font-size:small;">
              <tbody>
                    <tr>
                        <th class="border-0"><h3>Tasks</h3></th>
                        <td class="border-0"><input class="form-control col-sm-10" type="search" placeholder="Search Tasks" aria-label="Search"></td>
                    </tr>
                    <tr>
                      <th scope="row">New Task Created!</th>
                      <td><i class="fa fa-angle-right" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                      <th scope="row">New Comments on Task 'W9'</th>
                      <td><i class="fa fa-angle-right" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                      <th scope="row">Task 'Project Proposal' Overdue</th>
                      <td><i class="fa fa-angle-right" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                      <th scope="row">More Tasks</th>
                      <td><i class="fa fa-angle-down" aria-hidden="true"></i></td>
                    </tr>


                    <tr class="break"><td colspan="2"></td></tr>
                    <tr>
                        <th class="border-0"><h3>Recent Organization Activity</h3></th>
                        <td class="border-0"><input class="form-control col-sm-10" type="search" placeholder="Search Activities" aria-label="Search"></td>
                    </tr>
                    <tr>
                      <th scope="row">Call To Serve Submitted: 'W9 Part Two'</th>
                      <td><i class="fa fa-angle-right" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                      <th scope="row">Call To Serve Submitted: 'W9'</th>
                      <td><i class="fa fa-angle-right" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                      <th scope="row" style="color:red">Call To Serve Has Missed Submission Deadline</th>
                      <td><i class="fa fa-angle-right" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                      <th scope="row">More Activities</th>
                      <td><i class="fa fa-angle-down" aria-hidden="true"></i></td>
                    </tr>
                    <tr class="break"><td colspan="2"></td></tr>
                  </tbody>
             </table>
        </div>

      </div>
    </div>
</asp:Content>
