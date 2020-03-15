<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="ManageFiles.aspx.cs" Inherits="LNPWI_DCS.Admin.ManageFiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <div class="page-header">
        <div class="container">
            <h2><strong>Manage Files</strong></h2>
        </div>
    </div>
    <div class="container">
        <div class="content-container">
            <button type="button" class="btn btn-cherry" data-toggle="modal" data-target="#fileModal">Upload File</button>
            <table class="table table-striped mt-4" id="file_table">
                <thead>
                    <tr>
                        <th scope="col">File Name</th>
                        <th scope="col">Description</th>
                        <th scope="col">Upload Date</th>
                        <th scope="col">Upload Formats</th>
                        <th scope="col">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>w9_template.pdf</th>
                        <td>W-9 Template form</td>
                        <td>11/12/2019</td>
                        <td>.docx, .pdf, .rtf</td>
                        <td>
                            <i class="fas fa-lock fa-fw"></i>
                            <i class="fas fa-edit fa-fw"></i>
                        </td>
                    </tr>
                    <tr>
                        <th>financials_template.xlsx</th>
                        <td>Financial reporting template</td>
                        <td>11/15/2019</td>
                        <td>.xlsx</td>
                        <td>
                            <i class="fas fa-lock fa-fw"></i>
                            <i class="fas fa-edit fa-fw"></i>
                        </td>
                    </tr>
                    <tr>
                        <th>proposal_template.docx</th>
                        <td>Project proposal Template</td>
                        <td>11/17/2019</td>
                        <td>.docx</td>
                        <td>
                            <i class="fas fa-lock fa-fw"></i>
                            <i class="fas fa-edit fa-fw"></i>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="modal fade" tabindex="-1" role="dialog" id="fileModal" aria-labelledby="fileModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Upload a File</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <div class="form-group">
                            <label>File Name</label>
                            <input type="text" class="form-control" placeholder="File Name">
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <input type="text" class="form-control" placeholder="Description">
                        </div>
                        <div class="form-group">
                            <label>Permitted Upload Types</label>
                            <input type="text" class="form-control" placeholder="Permitted Upload Types (.docx, .pdf)">
                        </div>
                        <div class="file-upload-wrapper">
                          <input type="file" id="input-file-now" class="file-upload" />
                        </div>
                    </fieldset>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-gray" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-cherry">Upload</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterScripts" runat="server">
    <script type="text/javascript">
        $(document).ready( function () {
            $('#file_table').DataTable();
        } );
    </script>
</asp:Content>
