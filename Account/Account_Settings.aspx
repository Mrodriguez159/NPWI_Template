<%@ Page Title="" Language="C#" MasterPageFile="~/GlobalTemplate.Master" AutoEventWireup="true" CodeBehind="Account_Settings.aspx.cs" Inherits="LNPWI_DCS.Account.Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceholder" runat="server">

    <div class="container">
        <div class="content-container">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link" id="users-tab" data-toggle="tab" href="#security" role="tab" aria-controls="security" aria-selected="false">Security</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" id="year-tab" data-toggle="tab" href="#bio" role="tab" aria-controls="bio" aria-selected="true">Bio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="tasks-tab" data-toggle="tab" href="#notifications" role="tab" aria-controls="notifcations" aria-selected="false">Notifications</a>
                </li>
            </ul>

            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade" id="security" role="tabpanel" aria-labelledby="Account-settings">
                    <div class="tab-action ml-auto">
                        <a href="#" class="btn btn-cherry btn-block">Reset Password</a>
                    </div>
                </div>
                <div class="tab-pane fade show active" id="bio" role="tabpanel" aria-labelledby="Account-settings">
                    <fieldset disabled>
                        <div class="form-group">
                            <label>First Name</label>
                            <input type="text" class="form-control" placeholder="Jane">
                        </div>
                        <div class="form-group">
                            <label>Last Name</label>
                            <input type="text" class="form-control" placeholder="Denvers">
                            <div class="form-group">
                                <label>Phone</label>
                                <input type="text" class="form-control" placeholder="(xxx)-xxx-xxxx">
                            </div>
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
                    <div class="tab-action ml-auto">
                        <a href="#" class="btn btn-cherry btn-block">Update</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
