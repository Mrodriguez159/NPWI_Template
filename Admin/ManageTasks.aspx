<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="ManageTasks.aspx.cs" Inherits="LNPWI_DCS.Admin.ManageTasks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <div class="page-header mb-4">
        <div class="container">
            <h2><strong>Manage Tasks</strong></h2>
        </div>
    </div>
    <div class="container">
        <div class="d-flex justify-content-between mb-4">
            <button type="button" class="btn btn-cherry" data-toggle="modal" data-target="#taskModal">Create Task</button>

            <div class="program-selector">
                <select class="custom-select">
                    <option selected>2019-2020</option>
                    <option value="2">2018-2019</option>
                    <option value="3">2017-2018</option>
                </select>
            </div>
        </div>

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
                        <a href="#submissionsModal" data-toggle="modal" data-target="#submissionsModal"><i class="fas fa-folder-open fa-fw"></i></a>
                        <i class="fas fa-trash fa-fw"></i>
                        <i class="fas fa-edit fa-fw"></i>
                    </td>
                </tr>
                <tr>
                    <th>Project Proposal</th>
                    <td>Submit your project proposal</td>
                    <td>11/15/2019</td>
                    <td>
                        <a href="#submissionsModal" data-toggle="modal" data-target="#submissionsModal"><i class="fas fa-folder-open fa-fw"></i></a>
                        <i class="fas fa-trash fa-fw"></i>
                        <i class="fas fa-edit fa-fw"></i>
                    </td>
                </tr>
                <tr>
                    <th>Project Reflection</th>
                    <td>Submit your project reflection</td>
                    <td>11/15/2019</td>
                    <td>
                        <a href="#submissionsModal" data-toggle="modal" data-target="#submissionsModal"><i class="fas fa-folder-open fa-fw"></i></a>
                        <i class="fas fa-trash fa-fw"></i>
                        <i class="fas fa-edit fa-fw"></i>
                    </td>
                </tr>
                <tr>
                    <th>Annual Report</th>
                    <td>Submit your annual report</td>
                    <td>11/15/2019</td>
                    <td>
                        <a href="#submissionsModal" data-toggle="modal" data-target="#submissionsModal"><i class="fas fa-folder-open fa-fw"></i></a>
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
                        <h5 class="modal-title">Create Task</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="inputFirstName">Title</label>
                                </div>
                                <div class="form-group col-md-8">
                                    <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" placeholder="Title"></asp:TextBox>
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
                                    <label>Program Year:</label>
                                </div>
                                <div class="form-group col-md-8">
                                    <asp:DropDownList ID="dlProgramYear" runat="server" CssClass="form-control">
                                        <asp:ListItem Selected="True">2019-2020</asp:ListItem>
                                        <asp:ListItem>2018-2019</asp:ListItem>
                                        <asp:ListItem>2017-2018</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="inputDate">Due Date:</label>
                                </div>
                                <div class="form-group col-md-8">
                                    <asp:TextBox ID="txtDueDate" runat="server" CssClass="form-control" placeholder="MM/DD/YYYY"></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <label>Submission Type: pdf,doc</label>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-3">
                                    <label>Attach Files:</label>
                                </div>
                                <div class="form-group col-md-4">
                                    <button id="btnChooseFile" type="submit" class="btn btn-cherry">Choose File</button>
                                </div>
                                <div class="form-group col-md-4">
                                    <label>No File Selected</label>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6 offset-3">
                                    <label>+ Add Another File</label>
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
            $('#task_table').DataTable();
            $('#submission_table').DataTable();
        } );
    </script>
</asp:Content>