<%@ Page Title="" Language="C#" MasterPageFile="~/GlobalTemplate.Master" AutoEventWireup="true" CodeBehind="ViewSubmissions.aspx.cs" Inherits="LNPWI_DCS.Submissions.ViewSubmissions1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <div class="page-header">
        <div class="container">
            <h2>View Called to Serve W-9 Submission</h2>
        </div>
    </div>
    <div class="task-metainfo">
        <div class="container">
            <span><strong>Submitted on</strong> Nov 26 </span>
            <span><strong>by</strong> John Smith</span>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="task">
                    <h4>Files Uploaded:</h4>
                    <p>w9_CalledToServe.docx <i class="fas fa-file"></i></p>
                </div>
                <h4>Comments:</h4>
                <div class="form-group row">
                    <label for="comments" class="col-sm-2 col-form-label">Shirley Moy:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="comments" placeholder="Please add signature to document." readonly>
                        <span>Nov. 28, 2019</span>
                    </div>
                </div>
                
                <a href="#view-comments" data-toggle="collapse" class="btn btn-cherry mb-4">Comment</a>
            </div>
            <div class="col-md-4">
                <div class="task-metalinks">
                    <a href="/Admin/ViewSubmission.aspx" data-toggle="modal" data-target="#submissionsModal">Previous Submissions</a>
                </div>
            </div>
        </div>
    </div>

    <div class="task-submit collapse" id="view-comments">
        <div class="container">
            <div class="form-group row">
                
                <div class="col-sm-10">
                    <label for="addComment" class="col-form-label"><strong>Add Comment:</strong></label>
                    <textarea id="comment" class="form-control" cols="40"rows="5" placeholder="Comments..."></textarea>
                </div>
            </div>
            <a href="#view-comments" data-toggle="collapse" class="btn btn-cherry">Submit</a>
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
                        <table class="table table-striped">
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
</asp:Content>
