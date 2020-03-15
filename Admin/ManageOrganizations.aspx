<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="ManageOrganizations.aspx.cs" Inherits="LNPWI_DCS.Admin.ManageOrganizations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <div class="page-header mb-4">
        <div class="container">
            <h2><strong>Manage Organizations</strong></h2>
        </div>
    </div>
    <div class="container">
        <button type="button" class="btn btn-cherry mb-4" data-toggle="modal" data-target="#taskModal">Create Organization</button>
        <table class="table table-striped" id="organization_table">
            <thead>
                <tr>
                    <th scope="col">Name</th>
                    <th scope="col">Lead</th>
                    <th scope="col">Admin</th>
                    <th scope="col">Status</th>
                    <th scope="col">Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>Called To Serve</th>
                    <td>John Smith</td>
                    <td>Shirley Moy</td>
                    <td>Active</td>
                    <td>
                        <a href="../Organizations/ViewOrganization.aspx"><i class="fas fa-eye fa-fw"></i></a>
                        <a href="#tasksModal" data-toggle="modal" data-target="#tasksModal"><i class="fas fa-folder-open fa-fw"></i></a>
                        <i class="fas fa-trash fa-fw"></i>
                        <i class="fas fa-edit fa-fw"></i>
                    </td>
                </tr>
                <tr>
                    <th>Employment Here and Now!</th>
                    <td>Helga</td>
                    <td>Shirley Moy</td>
                    <td>Actve</td>
                    <td>
                        <a href="../Organizations/ViewOrganization.aspx"><i class="fas fa-eye fa-fw"></i></a>
                        <a href="#tasksModal" data-toggle="modal" data-target="#tasksModal"><i class="fas fa-folder-open fa-fw"></i></a>
                        <i class="fas fa-trash fa-fw"></i>
                        <i class="fas fa-edit fa-fw"></i>
                    </td>
                </tr>
                <tr>
                    <th>Esperanza Alivio Project</th>
                    <td>Jane Denvers</td>
                    <td>Shirley Moy</td>
                    <td>Actve</td>
                    <td>
                        <a href="../Organizations/ViewOrganization.aspx"><i class="fas fa-eye fa-fw"></i></a>
                        <a href="#tasksModal" data-toggle="modal" data-target="#tasksModal"><i class="fas fa-folder-open fa-fw"></i></a>
                        <i class="fas fa-trash fa-fw"></i>
                        <i class="fas fa-edit fa-fw"></i>
                    </td>
                </tr>
            </tbody>
        </table>
        <div class="modal fade" tabindex="-1" role="dialog" id="taskModal" aria-labelledby="taskModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Create Organization</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="inputFirstName">Name:</label>
                                </div>
                                <div class="form-group col-md-8">
                                    <asp:TextBox ID="txtOrgName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label>Description:</label>
                                </div>
                                <div class="form-group col-md-8">
                                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Description"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="inputAddress">Address 1:</label>
                                </div>
                                <div class="form-group col-md-8">
                                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Address 1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="inputAddress">Address 2:</label>
                                </div>
                                <div class="form-group col-md-8">
                                    <asp:TextBox ID="txtAddress2" runat="server" CssClass="form-control" placeholder="Address 2"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="inputCity">City:</label>
                                </div>
                                <div class="form-group col-md-8">
                                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" placeholder="City"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-3">
                                    <label for="inputState">State:</label>
                                </div>
                                <div class="form-group col-md-3">
                                    <asp:TextBox ID="txtState" runat="server" CssClass="form-control" placeholder="State"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="inputZip" class="text-right">Zip Code:</label>
                                </div>
                                <div class="form-group col-md-3">
                                    <asp:TextBox ID="txtZipCode" runat="server" CssClass="form-control" placeholder="Zip Code"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="inputPhone">Phone Number:</label>
                                </div>
                                <div class="form-group col-md-8">
                                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Phone"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="inputUser">Lead User:</label>
                                </div>
                                <div class="form-group col-md-8">
                                    <asp:DropDownList ID="dlLeadUser" runat="server" CssClass="form-control">
                                        <asp:ListItem Selected="True">Jane Denvers</asp:ListItem>
                                        <asp:ListItem>Helga</asp:ListItem>
                                        <asp:ListItem>John Smith</asp:ListItem>
                                    </asp:DropDownList>
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
        <div class="modal fade" tabindex="-1" role="dialog" id="tasksModal" aria-labelledby="submissionsModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Tasks</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <table class="table table-striped" id="task_table">
                            <thead>
                                <tr>
                                    <th scope="col">Task Name</th>
                                    <th scope="col">Task Description</th>
                                    <th scope="col">Due Date</th>
                                    <th scope="col">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>Submit W-9</th>
                                    <td>Submit your W-9 to ensure federal compliance.</td>
                                    <td>11/15/2019</td>
                                    <td>
                                        <a href="#submissionsModal" data-toggle="modal" data-dismiss="modal" data-target="#submissionsModal"><i class="fas fa-folder-open fa-fw"></i></a>
                                        <i class="fas fa-trash fa-fw"></i>
                                        <i class="fas fa-edit fa-fw"></i>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Project Proposal</th>
                                    <td>Submit your project proposal</td>
                                    <td>11/15/2019</td>
                                    <td>
                                        <a href="#submissionsModal" data-toggle="modal" data-dismiss="modal" data-target="#submissionsModal"><i class="fas fa-folder-open fa-fw"></i></a>
                                        <i class="fas fa-trash fa-fw"></i>
                                        <i class="fas fa-edit fa-fw"></i>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Project Reflection</th>
                                    <td>Submit your project reflection</td>
                                    <td>11/15/2019</td>
                                    <td>
                                        <a href="#submissionsModal" data-toggle="modal" data-dismiss="modal" data-target="#submissionsModal"><i class="fas fa-folder-open fa-fw"></i></a>
                                        <i class="fas fa-trash fa-fw"></i>
                                        <i class="fas fa-edit fa-fw"></i>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Annual Report</th>
                                    <td>Submit your annual report</td>
                                    <td>11/15/2019</td>
                                    <td>
                                        <a href="#submissionsModal" data-toggle="modal" data-dismiss="modal" data-target="#submissionsModal"><i class="fas fa-folder-open fa-fw"></i></a>
                                        <i class="fas fa-trash fa-fw"></i>
                                        <i class="fas fa-edit fa-fw"></i>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-cherry" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" tabindex="-1" role="dialog" id="submissionsModal" aria-labelledby="submissionsModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Submissions</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <table class="table table-striped" id="submission_table">
                            <thead>
                                <tr>
                                    <th scope="col">Task Name</th>
                                    <th scope="col">Organization</th>
                                    <th scope="col">Date Submitted</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>Submit W-9</th>
                                    <td>Called To Serve</td>
                                    <td>11/5/2019</td>
                                    <td>Approved</td>
                                    <td>
                                        <a href="/Admin/ViewSubmission.aspx"><i class="fas fa-eye fa-fw"></i></a>
                                        <i class="fas fa-trash fa-fw"></i>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Submit W-9</th>
                                    <td>Called To Serve</td>
                                    <td>11/1/2019</td>
                                    <td>Rejected</td>
                                    <td>
                                        <a href="/Admin/ViewSubmission.aspx"><i class="fas fa-eye fa-fw"></i></a>
                                        <i class="fas fa-trash fa-fw"></i>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Submit W-9</th>
                                    <td>Called To Serve</td>
                                    <td>10/25/2019</td>
                                    <td>Rejected</td>
                                    <td>
                                        <a href="/Admin/ViewSubmission.aspx"><i class="fas fa-eye fa-fw"></i></a>
                                        <i class="fas fa-trash fa-fw"></i>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Submit W-9</th>
                                    <td>Called To Serve</td>
                                    <td>10/10/2019</td>
                                    <td>Rejected</td>
                                    <td>
                                        <a href="/Admin/ViewSubmission.aspx"><i class="fas fa-eye fa-fw"></i></a>
                                        <i class="fas fa-trash fa-fw"></i>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-cherry" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterScripts" runat="server">
    <script type="text/javascript">
        $(document).ready( function () {
            $('#organization_table').DataTable();
            $('#task_table').DataTable();
            $('#submission_table').DataTable();
        } );
    </script>
</asp:Content>
