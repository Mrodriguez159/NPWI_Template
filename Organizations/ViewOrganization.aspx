<%@ Page Title="" Language="C#" MasterPageFile="~/GlobalTemplate.Master" AutoEventWireup="true" CodeBehind="ViewOrganization.aspx.cs" Inherits="LNPWI_DCS.Organizations.ViewOrganization" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <div class="page-header">
        <div class="container">
            <span>My Organization</span>
            <h2><strong>Called To Serve</strong></h2>
        </div>
    </div>
    <div class="container">
        <div class="content-container">
            <div class="program-selector ml-auto">
                <select class="custom-select">
                    <option selected>Select Program Year</option>
                    <option value="1">2019-2020</option>
                    <option value="2">2018-2019</option>
                    <option value="3">2017-2018</option>
                </select>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="sidebar">
                        <div class="sidebar-content">
                            <h4>About</h4>
                            <p>Dedicated to serving our local North Philadelphia community.</p>
                        </div>
                        <div class="sidebar-content">
                            <h4>Primary Contact</h4>
                            <p>Person Name</p>
                            <p>email@email.com</p>
                        </div>
                        <div class="sidebar-content">
                            <h4>Address</h4>
                            <p>1700 N. Broad St.</p>
                            <p>Philadelphia, PA</p>
                            <p>19122</p>
                        </div>
                        <div class="sidebar-content">
                            <h4>Phone</h4>
                            <p>(123) 123-1234</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link" id="home-tab" data-toggle="tab" href="#users" role="tab" aria-controls="users" aria-selected="false">Users</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" id="profile-tab" data-toggle="tab" href="#tasks" role="tab" aria-controls="tasks" aria-selected="true">Tasks</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="contact-tab" data-toggle="tab" href="#info" role="tab" aria-controls="info" aria-selected="false">Organization Info</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="calender-tab" <%--data-toggle="tab"--%> href="Calendar.aspx" role="tab" aria-controls="info" aria-selected="false">Calendar</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade" id="users" role="tabpanel" aria-labelledby="users-tab">
                            <div class="tab-action">
                                <button type="button" class="btn btn-cherry" data-toggle="modal" data-target="#userModal">Create User</button>
                            </div>
                            <table class="table table-striped mt-4" id="user_table">
                                <thead>
                                    <tr>
                                        <th scope="col">First Name</th>
                                        <th scope="col">Last Name</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Zachary</td>
                                        <td>Goncalves</td>
                                        <td>tug64510@temple.edu</td>
                                        <td><span class="alert-success">Active</span></td>
                                        <td>
                                            <i class="fas fa-eye fa-fw"></i>
                                            <i class="fas fa-trash fa-fw"></i>
                                            <i class="fas fa-edit fa-fw"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Tai</td>
                                        <td>Nguyen</td>
                                        <td>tug64510@temple.edu</td>
                                        <td><span class="alert-success">Active</span></td>
                                        <td>
                                            <i class="fas fa-eye fa-fw"></i>
                                            <i class="fas fa-trash fa-fw"></i>
                                            <i class="fas fa-edit fa-fw"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Gavin</td>
                                        <td>Rodgers</td>
                                        <td>tug64510@temple.edu</td>
                                        <td><span class="alert-success">Active</span></td>
                                        <td>
                                            <i class="fas fa-eye fa-fw"></i>
                                            <i class="fas fa-trash fa-fw"></i>
                                            <i class="fas fa-edit fa-fw"></i>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade show mt-4 active" id="tasks" role="tabpanel" aria-labelledby="task-tab">
                            <table class="table table-striped" id="task_table">
                                <thead>
                                    <tr>
                                        <th scope="col">Task</th>
                                        <th scope="col">Description</th>
                                        <th scope="col">Due Date</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>Submit W-9</th>
                                        <td>Submit your W-9 to ensure federal compliance.</td>
                                        <td>11/26/2019</td>
                                        <td>Submitted</td>
                                        <td>
                                            <a href="/Tasks/ViewTask.aspx"><i class="fas fa-eye fa-fw"></i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>Project Proposal</th>
                                        <td>Submit your project proposal</td>
                                        <td>11/15/2019</td>
                                        <td></td>
                                        <td>
                                            <a href="/Tasks/ViewTask.aspx"><i class="fas fa-eye fa-fw"></i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>Project Reflection</th>
                                        <td>Submit your project reflection</td>
                                        <td>11/15/2019</td>
                                        <td></td>
                                        <td>
                                            <a href="/Tasks/ViewTask.aspx"><i class="fas fa-eye fa-fw"></i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>Annual Report</th>
                                        <td>Submit your annual report</td>
                                        <td>11/15/2019</td>
                                        <td></td>
                                        <td>
                                            <a href="/Tasks/ViewTask.aspx"><i class="fas fa-eye fa-fw"></i></a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade" id="info" role="tabpanel" aria-labelledby="organization-info">
                            <div class="tab-action ml-auto">
                                <a href="#" class="btn btn-cherry btn-block">Edit</a>
                            </div>
                            <fieldset disabled>
                                <div class="form-group">
                                    <label>Organization Name</label>
                                    <input type="text" class="form-control" placeholder="Called To Serve">
                                </div>
                                <div class="form-group">
                                    <label>Primary Contact Name</label>
                                    <input type="text" class="form-control" placeholder="Name">
                                </div>
                                <div class="form-group">
                                    <label>Primary Contact Email</label>
                                    <input type="text" class="form-control" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Description"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Street Address 1</label>
                                    <input type="text" class="form-control" placeholder="1700 N. Broad St.">
                                </div>
                                <div class="form-group">
                                    <label>Street Address 2</label>
                                    <input type="text" class="form-control" placeholder="">
                                </div>
                                <div class="row">
                                    <div class="col-md-4 mb-3">
                                        <label for="state">State</label>
                                        <select class="custom-select d-block w-100" id="state" required>
                                            <option value="">PA</option>
                                            <option>CA</option>
                                        </select>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <label for="zip">Zip</label>
                                        <input type="text" class="form-control" id="zip" placeholder="19122" required>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <label for="zip">Phone</label>
                                        <input type="text" class="form-control" id="phone" placeholder="Phone" required>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
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
                <br />
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
            $('#task_table').DataTable();
        } );
    </script>
</asp:Content>