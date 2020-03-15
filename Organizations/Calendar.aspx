<%@ Page Title="" Language="C#" MasterPageFile="~/GlobalTemplate.Master" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="LNPWI_DCS.Organizations.Calendar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <div class="page-header">
        <div class="container">
            <h2><strong>Calendar</strong></h2>
        </div>
    </div>
    <div class="container">
        <!--div class="d-flex justify-content-between align-items-center p-2 mt-3">
            <i class="fas fa-fw fa-chevron-left"></i>
            <h3 class="text-center">November 2019</h3>
            <i class="fas fa-fw fa-chevron-right"></i>
        </div-->
        <div class="month">
            <ul>
                <li class="prev">&#10094;</li>
                <li class="next">&#10095;</li>
                <li>November 2019<br>
            </ul>
        </div>
        <ul class="weekdays">
            <li>Sunday</li>
            <li>Monday</li>
            <li>Tuesday</li>
            <li>Wednesday</li>
            <li>Thursday</li>
            <li>Friday</li>
            <li>Saturday</li>
        </ul>

        <ul class="days">
            <li>Submit W-9</li>
            <li>2</li>
            <li>3</li>
            <li>4</li>
            <li>5</li>
            <li>6</li>
            <li>7</li>
            <li>8</li>
            <li>9</li>
            <li>10</li>
            <li>Project Proposal</li>
            <li>12</li>
            <li>13</li>
            <li>14</li>
            <li>Project Reflection</li>
            <li>16</li>
            <li>17</li>
            <li>18</li>
            <li>19</li>
            <li>20</li>
            <li>21</li>
            <li>Annual Report</li>
            <li>23</li>
            <li>24</li>
            <li>25</li>
            <li>26</li>
            <li>27</li>
            <li>28</li>
            <li>29</li>
            <li>30</li>
            <li>31</li>
        </ul>
    </div>
</asp:Content>
