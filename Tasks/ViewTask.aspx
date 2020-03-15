<%@ Page Title="" Language="C#" MasterPageFile="~/GlobalTemplate.Master" AutoEventWireup="true" CodeBehind="ViewTask.aspx.cs" Inherits="LNPWI_DCS.Tasks.ViewTask" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <div class="page-header">
        <div class="container d-flex justify-content-between align-items-center">
            <h2>Submit W-9</h2>
            <a href="#task-submitter" data-toggle="collapse" class="btn btn-cherry">Submit</a>
        </div>
    </div>
    <div class="task-metainfo">
        <div class="container">
            <span><strong>Due</strong> Nov 26 by 11:59pm  <strong>Submitting</strong> a text entry or file upload</span>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="task">
                    <h4>Description:</h4>
                    <p>Please submit the W-9 provided in the file below. This document is important for remaining in compliance with Federal regulations.</p>
                    <br />
                    <h4>Files Provided:</h4>
                    <p>w9_template.docx <i class="fas fa-file"></i></p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="task-metalinks">
                    <a href="/Submissions/ViewSubmissions.aspx">Submission Details</a>
                    <a href="/Submissions/ViewSubmissions.aspx">Previous Submissions</a>
                </div>
            </div>
        </div>
    </div>
    <div class="task-submit collapse" id="task-submitter">
        <div class="container">
            <h4>Submit Task</h4>
            <div class="form-group row">
                <label for="comments" class="col-sm-2 col-form-label">Comments:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="comments" placeholder="Comments..">
                </div>
            </div>
            <div class="form-group row">
                <label for="formInput" class="col-sm-2 col-form-label">File Upload:</label>
                <div class="col-sm-10">
                    <small id="formInput" class="form-text text-muted mb-2">Only docx and pdf allowed</small>
                    <a href="#" class="btn btn-cherry mb-3 mt-2">Choose File</a><br />
                    <a href="#"><i class="fas fa-plus"></i> Add Another File</a>
                </div>
            </div>
            <a href="#task-submitter" data-toggle="collapse" class="btn btn-gray mr-3">Cancel</a>
            <a href="#" class="btn btn-cherry">Submit</a>
        </div>
    </div>
</asp:Content>
