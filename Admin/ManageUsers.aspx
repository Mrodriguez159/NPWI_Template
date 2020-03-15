<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="LNPWI_DCS.Admin.ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <div class="page-header">
        <div class="container">
            <h2><strong>Manage Users</strong></h2>
        </div>
    </div>
    <div class="container">
        <div class="content-container">
            <button type="button" class="btn btn-cherry" data-toggle="modal" data-target="#userModal">Create User</button>
            <table class="table table-striped mt-4" id="user_table">
                <thead>
                    <tr>
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Role</th>
                        <th scope="col">Status</th>
                        <th scope="col">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>Claire</th>
                        <th>Pope</th>
                        <td>claire.pope@temple.edu</td>
                        <td>Admin</td>
                        <td><span class="alert-success">Active</span></td>
                        <td>
                            <i class="fas fa-eye fa-fw"></i>
                            <i class="fas fa-lock fa-fw"></i>
                            <i class="fas fa-edit fa-fw"></i>
                        </td>
                    </tr>
                    <tr>
                        <th>Shirley</th>
                        <th>Moy</th>
                        <td>smoy@temple.edu</td>
                        <td>Admin</td>
                        <td><span class="alert-success">Active</span></td>
                        <td>
                            <i class="fas fa-eye fa-fw"></i>
                            <i class="fas fa-lock fa-fw"></i>
                            <i class="fas fa-edit fa-fw"></i>
                        </td>
                    </tr>
                    <tr>
                        <th>John</th>
                        <th>Smith</th>
                        <td>jsmith@calledtoserve.com</td>
                        <td>Organization Lead</td>
                        <td><span class="alert-success">Active</span></td>
                        <td>
                            <i class="fas fa-eye fa-fw"></i>
                            <i class="fas fa-lock fa-fw"></i>
                            <i class="fas fa-edit fa-fw"></i>
                        </td>
                    </tr>
                    <tr>
                        <th>Helga</th>
                        <th>Barton</th>
                        <td>hbarton@emplyherenow.com</td>
                        <td>Organization Lead</td>
                        <td><span class="alert-success">Active</span></td>
                        <td>
                            <i class="fas fa-eye fa-fw"></i>
                            <i class="fas fa-lock fa-fw"></i>
                            <i class="fas fa-edit fa-fw"></i>
                        </td>
                    </tr>
                    <tr>
                        <th>Jane</th>
                        <th>Denvers</th>
                        <td>jane.denvers@esperanza.edu</td>
                        <td>Organization Lead</td>
                        <td><span class="alert-success">Active</span></td>
                        <td>
                            <i class="fas fa-eye fa-fw"></i>
                            <i class="fas fa-lock fa-fw"></i>
                            <i class="fas fa-edit fa-fw"></i>
                        </td>
                    </tr>
                    <tr>
                        <th>Zachary</th>
                        <th>Goncalves</th>
                        <td>tug64510@temple.edu</td>
                        <td>Organization Member</td>
                        <td><span class="alert-success">Active</span></td>
                        <td>
                            <i class="fas fa-eye fa-fw"></i>
                            <i class="fas fa-lock fa-fw"></i>
                            <i class="fas fa-edit fa-fw"></i>
                        </td>
                    </tr>
                    <tr>
                        <th>Tai</th>
                        <th>Nguyen</th>
                        <td>tug64510@temple.edu</td>
                        <td>Organization Member</td>
                        <td><span class="alert-success">Active</span></td>
                        <td>
                            <i class="fas fa-eye fa-fw"></i>
                            <i class="fas fa-lock fa-fw"></i>
                            <i class="fas fa-edit fa-fw"></i>
                        </td>
                    </tr>
                    <tr>
                        <th>Gavin</th>
                        <th>Rodgers</th>
                        <td>tug64510@temple.edu</td>
                        <td>Organization Member</td>
                        <td><span class="alert-success">Active</span></td>
                        <td>
                            <i class="fas fa-eye fa-fw"></i>
                            <i class="fas fa-lock fa-fw"></i>
                            <i class="fas fa-edit fa-fw"></i>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="modal fade" tabindex="-1" role="dialog" id="userModal" aria-labelledby="userModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Create User</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <div class="form-group">
                            <label>First Name</label>
                            <input type="text" class="form-control" placeholder="First Name">
                        </div>
                        <div class="form-group">
                            <label>Last Name</label>
                            <input type="text" class="form-control" placeholder="Last Name">
                            <div class="form-group">
                                <label>Phone</label>
                                <input type="text" class="form-control" placeholder="Phone">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Street Address 1</label>
                            <input type="text" class="form-control" placeholder="Street Address 1">
                        </div>
                        <div class="form-group">
                            <label>Street Address 2</label>
                            <input type="text" class="form-control" placeholder="Street Address 2">
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="state">State</label>
                                <select class="custom-select d-block w-100" id="state" required>
                                    <option value="">PA</option>
                                    <option>CA</option>
                                </select>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="zip">Zip</label>
                                <input type="text" class="form-control" id="zip" placeholder="19122" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Organization</label>
                            <select class="custom-select d-block w-100" id="organization" required>
                                <option value="">Called To Serve</option>
                                <option>Employment Here and Now!</option>
                                <option>Esperanza Alivio Project</option>
                            </select>
                        </div>
                    </fieldset>
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
            $('#user_table').DataTable();
        } );
    </script>
</asp:Content>
