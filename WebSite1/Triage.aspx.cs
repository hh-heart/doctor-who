using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Triage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        int numberofsymptoms = 1;
        // work out how many symptoms have been entered, so we know how big to make the arrays. Do this by checking if the form values exist.
        while (Request.Form["Days" + numberofsymptoms.ToString()] != null)
        {
            numberofsymptoms = numberofsymptoms + 1;
        }

        // initialise the arrays
        int[] DaysArray = new int[numberofsymptoms];
        int[] SeverityArray = new int[numberofsymptoms];

        // populate the arrays
        if (Request.Form["Days"] != "")
        {
            DaysArray[0] = Int32.Parse(Request.Form["Days"]);
        }

        if (Request.Form["Severity"] != "")
        {
            SeverityArray[0] = Int32.Parse(Request.Form["Severity"]);
        }

        int i = 1;
        while (Request.Form["Days" + i.ToString()] != null)
        {
            if (Request.Form["Days" + i.ToString()] != "")
            {
                DaysArray[i] = Int32.Parse(Request.Form["Days" + i.ToString()]);
            }

            if (Request.Form["Severity" + i.ToString()] != "")
            {
                SeverityArray[i] = Int32.Parse(Request.Form["Severity" + i.ToString()]);
            }
            i = i + 1;
        }

        int HowScore = 0;
        int TimeScore = 0;
        //find the average
        for (i = 0; i< DaysArray.Length; i++) 
        {
            TimeScore = TimeScore + DaysArray[i];
        }
        TimeScore = TimeScore / DaysArray.Length;


        for (i = 0; i< SeverityArray.Length; i++)
        {
            HowScore = HowScore + SeverityArray[i];
        }
        HowScore = HowScore / SeverityArray.Length;
        //rate on the average
        string PriorityScore=string.Empty;
        

        if (HowScore >= 5 && TimeScore >= 5)
        {
            PriorityScore = "High - slot booked";
        }
        else if (HowScore >= 5 || TimeScore >= 7)
        {
            PriorityScore = "Medium - slot booked";
        }
        else if (HowScore <= 4 && TimeScore <= 6)
        {
            PriorityScore = "Low - slot booked";
        }
        //inform patient of result
        lb_Priority.Text = PriorityScore;
    }
}