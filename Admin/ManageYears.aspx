<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="ManageYears.aspx.cs" Inherits="LNPWI_DCS.Admin.ManageYears" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <div class="page-header">
        <div class="container">
            <h2><strong>Manage Years</strong></h2>
        </div>
    </div>
    <div class="container">
        <div class="content-container">
            <div class="tab-action">
                <button type="button" class="btn btn-cherry" data-toggle="modal" data-target="#yearModal">Create Year</button>
            </div>
            <table class="table table-striped mt-4" id="year_table">
                <thead>
                    <tr>
                        <th scope="col">Year ID</th>
                        <th scope="col">Start Year</th>
                        <th scope="col">End Year</th>
                        <th scope="col">Status</th>
                        <th scope="col">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>3</th>
                        <td>2019</td>
                        <td>2020</td>
                        <td><span class="alert-success">Active</span></td>
                        <td>
                            <i class="fas fa-eye fa-fw"></i>
                            <i class="fas fa-lock fa-fw"></i>
                            <i class="fas fa-edit fa-fw"></i>
                        </td>
                    </tr>
                    <tr>
                        <th>2</th>
                        <td>2018</td>
                        <td>2019</td>
                        <td>Inactive</td>
                        <td>
                            <i class="fas fa-eye fa-fw"></i>
                            <i class="fas fa-lock fa-fw"></i>
                            <i class="fas fa-edit fa-fw"></i>
                        </td>
                    </tr>
                    <tr>
                        <th>1</th>
                        <td>2018</td>
                        <td>2017</td>
                        <td>Inactive</td>
                        <td>
                            <i class="fas fa-eye fa-fw"></i>
                            <i class="fas fa-lock fa-fw"></i>
                            <i class="fas fa-edit fa-fw"></i>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="form-group mt-5">
                <div class="form-row">
                    <label class="col-md-2">Program Year:</label>
                    <div class="program-selector col-md-3">
                        <select class="custom-select">
                            <option selected>2019-2020</option>
                            <option value="2">2018-2019</option>
                            <option value="3">2017-2018</option>
                        </select>
                    </div>
                </div>
                <a href="#" class="btn btn-cherry">Save Program Year</a>
            </div>
        </div>
    </div>
    <div class="modal fade" tabindex="-1" role="dialog" id="yearModal" aria-labelledby="yearModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Create Year</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="inputFirstName">Start Year</label>
                            </div>
                            <div class="form-group col-md-8">
                                <asp:TextBox ID="txtStartYear" runat="server" CssClass="form-control" placeholder="Start Year"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label>End Year:</label>
                            </div>
                            <div class="form-group col-md-8">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="End Year"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-gray" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-cherry">Create</button>
                </div>
            </div>
        </div>
    </div>
  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterScripts" runat="server">
    <script type="text/javascript">
        $(document).ready( function () {
            $('#year_table').DataTable();
        } );
    </script>
</asp:Content>
