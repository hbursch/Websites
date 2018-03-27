using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void selectNumberRed(object sender, EventArgs e)
        {
            System.Web.UI.WebControls.DropDownList myList;
            myList = (System.Web.UI.WebControls.DropDownList)sender;
            string listID = myList.ID.ToString();
            int binaryVal = Convert.ToInt32(myList.SelectedItem.Value);
            int split = listID.IndexOf("_");

            //figure out which number was selected
            int IDLength = listID.Length;
            int number = Convert.ToInt32(listID.Substring(split + 1));

            if (binaryVal == 1)
            {
                Session["redDecimal"] = (Convert.ToInt32(Session["redDecimal"]) + number).ToString();
            } //end if binaryVal == 1
            else
            {
                Session["redDecimal"] = (Convert.ToInt32(Session["redDecimal"]) - number).ToString();
            } //end else

            //Display decimal value in textbox
            dec_red.Text = (Session["redDecimal"]).ToString();
            //use function to convert to hexadecimal
            string colorName = "red";
            convertHex(colorName, (Session["redDecimal"]).ToString());

            hex_red.Text = (Session["redHex"]).ToString();                          //display hexadecimal
            changeColor();                                                          //change box color

        }

        protected void selectNumberGreen(object sender, EventArgs e)
        {
            System.Web.UI.WebControls.DropDownList myList;
            myList = (System.Web.UI.WebControls.DropDownList)sender;
            string listID = myList.ID.ToString();
            int binaryVal = Convert.ToInt32(myList.SelectedItem.Value);
            int split = listID.IndexOf("_");

            //figure out which number was selected
            int IDLength = listID.Length;
            int number = Convert.ToInt32(listID.Substring(split + 1));

            if (binaryVal == 1)
            {
                Session["greenDecimal"] = (Convert.ToInt32(Session["greenDecimal"]) + number).ToString();
            } //end if binaryVal == 1
            else
            {
                Session["greenDecimal"] = (Convert.ToInt32(Session["greenDecimal"]) - number).ToString();
            } //end else

            //Display decimal value in textbox
            dec_green.Text = (Session["greenDecimal"]).ToString();
            //use function to convert to hexadecimal
            string colorName = "green";
            convertHex(colorName, (Session["greenDecimal"]).ToString());

            hex_green.Text = (Session["greenHex"]).ToString();                          //display hexadecimal
            changeColor();
        }

        protected void selectNumberBlue(object sender, EventArgs e)
        {
            System.Web.UI.WebControls.DropDownList myList;
            myList = (System.Web.UI.WebControls.DropDownList)sender;
            string listID = myList.ID.ToString();
            int binaryVal = Convert.ToInt32(myList.SelectedItem.Value);
            int split = listID.IndexOf("_");

            //figure out which number was selected
            int IDLength = listID.Length;
            int number = Convert.ToInt32(listID.Substring(split + 1));

            if (binaryVal == 1)
            {
                Session["blueDecimal"] = (Convert.ToInt32(Session["blueDecimal"]) + number).ToString();
            } //end if binaryVal == 1
            else
            {
                Session["blueDecimal"] = (Convert.ToInt32(Session["blueDecimal"]) - number).ToString();
            } //end else

            //Display decimal value in textbox
            dec_blue.Text = (Session["blueDecimal"]).ToString();
            //convert to hexadecimal using function
            string colorName = "blue";
            convertHex(colorName, (Session["blueDecimal"]).ToString());

            hex_blue.Text = (Session["blueHex"]).ToString();                          //display hexadecimal

            changeColor();
        }

        protected object convertHex(string color, string number)
        {
            //convert x to hexadecimal
            string hex1 = (Convert.ToInt32(number) / 16).ToString();                     //first divide decimal by 16
            int point = hex1.IndexOf(".");
            if (point > -1)
                hex1 = hex1.Substring(0, point - 1);                                //if result is not whole number, truncate the string before the decimal point
            if (Convert.ToInt32(hex1) > 9)
            {
                string[] alpha = new string[6] { "A", "B", "C", "D", "E", "F" };    //if result is greater than 9, convert to one of 6 letters
                int whichLetter = Convert.ToInt32(hex1) - 10;
                hex1 = alpha[whichLetter];
            } //end if
            string hex2 = (Convert.ToInt32(number) % 16).ToString();                     //get remainder from dividing x by 16
            if (Convert.ToInt32(hex2) > 9)
            {
                string[] alpha = new string[6] { "A", "B", "C", "D", "E", "F" };    //if result is greater than 9, convert to one of 6 letters
                int whichLetter = Convert.ToInt32(hex2) - 10;
                hex2 = alpha[whichLetter];
            } //end if

            Session[color + "Hex"] = hex1 + hex2;                                                       //combine hex1 and hex2
            return Session[color + "Hex"];
        }

        protected void changeColor()
        {
            //change the color of the box
            color.Style.Add("background-color", "#" + Session["redHex"] + Session["greenHex"] + Session["blueHex"]);
        }

        protected void bitwise1_SelectedIndexChanged(object sender, EventArgs e)
        {
            System.Web.UI.WebControls.DropDownList myList;
            myList = (System.Web.UI.WebControls.DropDownList)sender;
            string whichColor = myList.SelectedValue.ToString();                    //store the selected value as whichColor
            string bitwiseDecimal = "0";
            if (whichColor == "R")
            {                                                                       //get the decimal value of the selected color
                bitwiseDecimal = (Session["redDecimal"]).ToString();
            }
            else if (whichColor == "G")
            {                                                                       //get the decimal value of the selected color
                bitwiseDecimal = (Session["greenDecimal"]).ToString();
            }
            else if (whichColor == "B")
            {                                                                       //get the decimal value of the selected color
                bitwiseDecimal = (Session["blueDecimal"]).ToString();
            }

            string binary = Convert.ToString(Convert.ToInt32(bitwiseDecimal), 2).PadLeft(8, '0');    //convert decimal to binary

            Session["bitwise1"] = binary;                                           //store binary as bitwise1
            print_temp_here.InnerText = (Session["bitwise1"]).ToString();
        }

        protected void bitwise2_SelectedIndexChanged(object sender, EventArgs e)
        {
            System.Web.UI.WebControls.DropDownList myList;
            myList = (System.Web.UI.WebControls.DropDownList)sender;
            string whichColor = myList.SelectedValue.ToString();                    //store the selected value as whichColor
            string bitwiseDecimal = "0";
            if (whichColor == "R")
            {                                                                       //get the decimal value of the selected color
                bitwiseDecimal = (Session["redDecimal"]).ToString();
            }
            else if (whichColor == "G")
            {                                                                       //get the decimal value of the selected color
                bitwiseDecimal = (Session["greenDecimal"]).ToString();
            }
            else if (whichColor == "B")
            {                                                                       //get the decimal value of the selected color
                bitwiseDecimal = (Session["blueDecimal"]).ToString();
            }

            string binary = Convert.ToString(Convert.ToInt32(bitwiseDecimal), 2).PadLeft(8, '0');    //convert decimal to binary

            Session["bitwise2"] = binary;                                           //store binary as bitwise1
            print_temp_here2.InnerText = (Session["bitwise2"]).ToString();
        }

        protected void bitwise_function_SelectedIndexChanged(object sender, EventArgs e)
        {
            System.Web.UI.WebControls.DropDownList myList;
            myList = (System.Web.UI.WebControls.DropDownList)sender;
            string operation = myList.SelectedValue.ToString();
            int bit1 = Convert.ToInt32(Session["bitwise1"]);
            int bit2 = Convert.ToInt32(Session["bitwise2"]);
            int bit_result = 0;
            if (operation == "&")
            {
                bit_result = bit1 & bit2;
            }
            else if (operation == "|")
            {
                bit_result = bit1 | bit2;
            }
            else if (operation == "^")
            {
                bit_result = bit1 ^ bit2;
            }
            Session["bit_result"] = bit_result;
            bitwise_result.Text = (Session["bit_result"]).ToString();
        }
    }
}