<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="ManageAnnouncements.aspx.cs" Inherits="LNPWI_DCS.Admin.ManageAnnouncements" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <div class="page-header">
        <div class="container">
            <h2><strong>Manage Announcements</strong></h2>
        </div>
    </div>
    <div class="container">
        <div class="content-container">
            <asp:Label ID="lblStatus" runat="server" Text="Announcement Status" Visible="false" Enabled="false"></asp:Label>
            <button type="button" class="btn btn-cherry mb-4" data-toggle="modal" data-target="#announcementsModal">Create Announcement</button>
            <div class="table-responsive">
                <asp:GridView ID="gvAnnouncements" runat="server" CssClass="table table-striped" AutoGenerateColumns="False" GridLines="None" OnRowDataBound="gvAnnouncements_RowDataBound" OnRowEditing="gvAnnouncements_RowEditing" OnRowUpdating="gvAnnouncements_RowUpdating" OnRowCancelingEdit="gvAnnouncements_RowCancelingEdit" OnRowDeleting="gvAnnouncements_RowDeleting">
                    <Columns>
                        <asp:BoundField DataField="Id" Visible="False" />
                        <asp:BoundField DataField="Title" HeaderText="Title" />
                        <asp:BoundField DataField="Content" HeaderText="Content" />
                        <asp:BoundField DataField="EndDate" HeaderText="Visible Until" />
                        <asp:CommandField ShowEditButton="True" EditText="&lt;i class=&quot;fas fa-edit fa-fw&quot;&gt;&lt;/i&gt;" />
                        <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="text-danger" DeleteText="&lt;i class=&quot;fas fa-trash-alt&quot;&gt;&lt;/i&gt;">
<ControlStyle CssClass="text-danger"></ControlStyle>
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
    <div class="modal fade" tabindex="-1" role="dialog" id="announcementsModal" aria-labelledby="announcementsModalLabel" aria-hidden="true">
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
                            <label>Title</label>
                            <asp:TextBox ID="txtAnnouncementTitle" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Content</label>
                            <asp:TextBox ID="txtAnnouncementContent"  CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Display Until</label>
                            <asp:TextBox ID="txtAnnouncementsDisplayUntil"  CssClass="form-control" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
                        </div>
                    </fieldset>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-gray" data-dismiss="modal">Cancel</button>
                    <asp:Button ID="btnCreateAnnouncement" runat="server" CssClass="btn btn-cherry" Text="Create" UseSubmitBehavior="false" data-dismiss="modal" OnClick="btnCreateAnnouncement_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterScripts" runat="server">
    <script type="text/javascript">
        $(document).ready( function () {
            $('#<%= gvAnnouncements.ClientID %>').DataTable();
        } );
    </script>
</asp:Content>
