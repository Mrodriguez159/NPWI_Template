using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using LNPWI_DCS.Models;

namespace LNPWI_DCS.Admin
{
    public partial class ManageAnnouncements : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                showAnnouncements();
            }
        }

        protected void btnCreateAnnouncement_Click(object sender, EventArgs e)
        {
            Validator validator = new Validator();
            if (validator.isValidString(txtAnnouncementTitle.Text) && validator.isValidString(txtAnnouncementContent.Text))
            {
                try
                {
                    Connection db = new Connection();
                    Announcement announcement = new Announcement();
                    announcement.Title = txtAnnouncementTitle.Text;
                    announcement.Content = txtAnnouncementTitle.Text;
                    announcement.EndDate = Convert.ToDateTime(txtAnnouncementsDisplayUntil.Text);

                    SqlCommand createAnnouncementCommand = new SqlCommand();
                    createAnnouncementCommand.CommandType = CommandType.StoredProcedure;
                    createAnnouncementCommand.CommandText = "DCS_CreateAnnouncement";
                    createAnnouncementCommand.Parameters.AddWithValue("@title", announcement.Title);
                    createAnnouncementCommand.Parameters.AddWithValue("@content", announcement.Content);
                    createAnnouncementCommand.Parameters.AddWithValue("@endDate", announcement.EndDate);
                    db.DoUpdateUsingCmdObj(createAnnouncementCommand);

                    lblStatus.Text = "Announcement created successfully!";
                    lblStatus.CssClass = "alert alert-success btn-block";
                    lblStatus.Enabled = true;
                    lblStatus.Visible = true;
                }
                catch
                {
                    txtAnnouncementContent.Text = "SOMETHING WENT WRONG HELP";
                }
            }
        }

        protected void showAnnouncements()
        {
            Connection db = new Connection();
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "DCS_GetAllAnnouncements";

            DataSet returnData = db.GetDataSetUsingCmdObj(command);

            gvAnnouncements.DataSource = returnData;
            gvAnnouncements.DataBind();
        }

        protected void gvAnnouncements_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //check if the row is the header row
            if (e.Row.RowType == DataControlRowType.Header)
            {
                //add the thead and tbody section programatically
                e.Row.TableSection = TableRowSection.TableHeader;
            }
        }

        protected void gvAnnouncements_RowEditing(Object sender, GridViewEditEventArgs e)

        {
            gvAnnouncements.EditIndex = e.NewEditIndex;
            showAnnouncements();
        }

        protected void gvAnnouncements_RowUpdating(Object sender, GridViewUpdateEventArgs e)

        {
            try
            {
                int rowIndex = e.RowIndex;
                string announcementId = gvAnnouncements.Rows[rowIndex].Cells[0].Text;

                TextBox TBox;
                TBox = gvAnnouncements.Rows[rowIndex].Cells[1].Controls[0] as TextBox;
                string title = TBox.Text;

                TBox = gvAnnouncements.Rows[rowIndex].Cells[2].Controls[0] as TextBox;
                string content = TBox.Text;

                TBox = gvAnnouncements.Rows[rowIndex].Cells[3].Controls[0] as TextBox;
                string date = TBox.Text;

                // dbAction.updateData("DCS_UpdateAnnouncement", reservationId, party_size, Convert.ToDateTime(date));
                gvAnnouncements.EditIndex = -1;
            }
            catch
            {
                Response.Write("<script>alert('Error updating reservation.');</script>");
            }

        }

        protected void gvAnnouncements_RowCancelingEdit(Object sender, GridViewCancelEditEventArgs e)

        {
            gvAnnouncements.EditIndex = -1;
            showAnnouncements();
        }

        protected void gvAnnouncements_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int rowIndex = e.RowIndex;

                string announcementId = gvAnnouncements.Rows[rowIndex].Cells[0].Text;

                // dbAction.deleteData("DCS_DeleteAnnouncement", reservationId);
                showAnnouncements();            
            }
            catch
            {
                Response.Write("<script>alert('Error deleting reservation.');</script>");
            }
        }

    }
}