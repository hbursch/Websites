using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project01_456
{
    public partial class project1a : System.Web.UI.Page
    {
        //strings to be used later when connecting to the database and add values to it
            private string SQL;
            private string connection = "server=cgtweb1.tech.purdue.edu;uid=cgt456web1t;pwd=Fizzling1t317;database=cgt456web1t";
            private SqlConnection oConn;
            private SqlCommand oCmd;
        protected void Page_Load(object sender, EventArgs e)
        {    
        }

        //declaring int
        public int red_Dec_Value;
        public int green_Dec_Value;
        public int blue_Dec_Value;

        public void redToDecToHex(object sender, EventArgs e)
        {
        //setting the values for the red dropdowns and converting them to decimal and hex values
            red_Dec_Value = 0;

            if (red_binary_01.Text == "1")
            {
                red_Dec_Value += 128;
            }
            if (red_binary_02.Text == "1")
            {
                red_Dec_Value += 64;
            }
            if(red_binary_03.Text == "1")
            {
                red_Dec_Value += 32;
            }
            if (red_binary_04.Text == "1")
            {
                red_Dec_Value += 16;
            }
            if (red_binary_05.Text == "1")
            {
                red_Dec_Value += 8;
            }
            if (red_binary_06.Text == "1")
            {
                red_Dec_Value += 4;
            }
            if (red_binary_07.Text == "1")
            {
                red_Dec_Value += 2;
            }
            if (red_binary_08.Text == "1")
            {
                red_Dec_Value += 1;
            }

            red_Dec.Text = red_Dec_Value.ToString();

            if (red_Dec_Value < 16)
            {
                red_Hex.Text = "0" + red_Dec_Value.ToString("X");
            }
            else
            {
                red_Hex.Text = red_Dec_Value.ToString("X");
            }

            // calling the color box function
            colorBoxEdit();

        }
        public void greenToDecToHex(object sender, EventArgs e)
        {
            //setting the values for the green dropdowns and converting them to decimal and hex values
            green_Dec_Value = 0;

            if (green_binary_01.Text == "1")
            {
                green_Dec_Value += 128;
            }
            if (green_binary_02.Text == "1")
            {
                green_Dec_Value += 64;
            }
            if (green_binary_03.Text == "1")
            {
                green_Dec_Value += 32;
            }
            if (green_binary_04.Text == "1")
            {
                green_Dec_Value += 16;
            }
            if (green_binary_05.Text == "1")
            {
                green_Dec_Value += 8;
            }
            if (green_binary_06.Text == "1")
            {
                green_Dec_Value += 4;
            }
            if (green_binary_07.Text == "1")
            {
                green_Dec_Value += 2;
            }
            if (green_binary_08.Text == "1")
            {
                green_Dec_Value += 1;
            }

            green_Dec.Text = green_Dec_Value.ToString();

            if (green_Dec_Value < 16)
            {
                green_Hex.Text = "0" + green_Dec_Value.ToString("X");
            }
            else
            {
                green_Hex.Text = green_Dec_Value.ToString("X");
            }

            // calling the color box function
            colorBoxEdit();

        }
        public void blueToDecToHex(object sender, EventArgs e)
        {
            //setting the values for the blue dropdowns and converting them to decimal and hex values
            blue_Dec_Value = 0;

            if (blue_binary_01.Text == "1")
            {
                blue_Dec_Value += 128;
            }
            if (blue_binary_02.Text == "1")
            {
                blue_Dec_Value += 64;
            }
            if (blue_binary_03.Text == "1")
            {
                blue_Dec_Value += 32;
            }
            if (blue_binary_04.Text == "1")
            {
                blue_Dec_Value += 16;
            }
            if (blue_binary_05.Text == "1")
            {
                blue_Dec_Value += 8;
            }
            if (blue_binary_06.Text == "1")
            {
                blue_Dec_Value += 4;
            }
            if (blue_binary_07.Text == "1")
            {
                blue_Dec_Value += 2;
            }
            if (blue_binary_08.Text == "1")
            {
                blue_Dec_Value += 1;
            }

            blue_Dec.Text = blue_Dec_Value.ToString();

            if (blue_Dec_Value < 16)
            {
                blue_Hex.Text = "0" + blue_Dec_Value.ToString("X");
            }
            else
            {
                blue_Hex.Text = blue_Dec_Value.ToString("X");
            }

            // calling the color box function
            colorBoxEdit();
        }

        public void colorBoxEdit()
        {
            //displays the color
            display_label.Attributes.CssStyle.Add("background", "#" + red_Hex.Text + green_Hex.Text + blue_Hex.Text);
        }

        public void bitwise_Value(object sender, EventArgs e)
        {
            //declare the int
            int red_Dec_Value_Bit = Convert.ToInt32(red_Dec.Text);
            int green_Dec_Value_Bit = Convert.ToInt32(green_Dec.Text);
            int blue_Dec_Value_Bit = Convert.ToInt32(blue_Dec.Text);

            //finds the bitwise values depending on the users input from the dropdown boxes
            if (bitwise_operator1.Text != "--" && bitwise_operator2.Text != "--" && bitwise_operator3.Text != "--")
            {
                //for the and
                if (bitwise_operator2.Text == "&")
                {
                    if (bitwise_operator1.Text == "R")
                    {
                        if (bitwise_operator3.Text == "R")
                        {
                            bit_result.Text = Convert.ToString(red_Dec_Value_Bit, 2);
                        }
                        else if (bitwise_operator3.Text == "G")
                        {
                            bit_result.Text = Convert.ToString(red_Dec_Value_Bit & green_Dec_Value_Bit, 2);
                        }
                        else
                        {
                            bit_result.Text = Convert.ToString(red_Dec_Value_Bit & blue_Dec_Value_Bit, 2);
                        }
                    }
                    else if (bitwise_operator1.Text == "G")
                    {
                        if (bitwise_operator3.Text == "G")
                        {
                            bit_result.Text = Convert.ToString(green_Dec_Value_Bit, 2);
                        }
                        else if (bitwise_operator3.Text == "B")
                        {
                            bit_result.Text = Convert.ToString(green_Dec_Value_Bit & blue_Dec_Value_Bit, 2);
                        }
                        else
                        {
                            bit_result.Text = Convert.ToString(green_Dec_Value_Bit & red_Dec_Value_Bit, 2);
                        }
                    }
                    else if (bitwise_operator1.Text == "B")
                    {
                        if (bitwise_operator3.Text == "B")
                        {
                            bit_result.Text = Convert.ToString(blue_Dec_Value_Bit, 2);
                        }
                        else if (bitwise_operator3.Text == "R")
                        {
                            bit_result.Text = Convert.ToString(blue_Dec_Value_Bit & red_Dec_Value_Bit, 2);
                        }
                        else
                        {
                            bit_result.Text = Convert.ToString(blue_Dec_Value_Bit & green_Dec_Value_Bit, 2);
                        }
                    }
                }
                //for the or
                else if (bitwise_operator2.Text == "|")
                {
                    if (bitwise_operator1.Text == "R")
                    {
                        if (bitwise_operator3.Text == "R")
                        {
                            bit_result.Text = Convert.ToString(red_Dec_Value_Bit, 2);
                        }
                        else if (bitwise_operator3.Text == "G")
                        {
                            bit_result.Text = Convert.ToString(red_Dec_Value_Bit | green_Dec_Value_Bit, 2);
                        }
                        else
                        {
                            bit_result.Text = Convert.ToString(red_Dec_Value_Bit | blue_Dec_Value_Bit, 2);
                        }
                    }
                    else if (bitwise_operator1.Text == "G")
                    {
                        if (bitwise_operator3.Text == "G")
                        {
                            bit_result.Text = Convert.ToString(green_Dec_Value_Bit, 2);
                        }
                        else if (bitwise_operator3.Text == "B")
                        {
                            bit_result.Text = Convert.ToString(green_Dec_Value_Bit | blue_Dec_Value_Bit, 2);
                        }
                        else
                        {
                            bit_result.Text = Convert.ToString(green_Dec_Value_Bit | red_Dec_Value_Bit, 2);
                        }
                    }
                    else if (bitwise_operator1.Text == "B")
                    {
                        if (bitwise_operator3.Text == "B")
                        {
                            bit_result.Text = Convert.ToString(blue_Dec_Value_Bit, 2);
                        }
                        else if (bitwise_operator3.Text == "R")
                        {
                            bit_result.Text = Convert.ToString(blue_Dec_Value_Bit | red_Dec_Value_Bit, 2);
                        }
                        else
                        {
                            bit_result.Text = Convert.ToString(blue_Dec_Value_Bit | green_Dec_Value_Bit, 2);
                        }
                    }
                }
                //for the Xor
                else if (bitwise_operator2.Text == "^")
                {
                    if (bitwise_operator1.Text == "R")
                    {
                        if (bitwise_operator3.Text == "R")
                        {
                            bit_result.Text = Convert.ToString(red_Dec_Value_Bit, 2);
                        }
                        else if (bitwise_operator3.Text == "G")
                        {
                            bit_result.Text = Convert.ToString(red_Dec_Value_Bit ^ green_Dec_Value_Bit, 2);
                        }
                        else
                        {
                            bit_result.Text = Convert.ToString(red_Dec_Value_Bit ^ blue_Dec_Value_Bit, 2);
                        }
                    }
                    else if (bitwise_operator1.Text == "G")
                    {
                        if (bitwise_operator3.Text == "G")
                        {
                            bit_result.Text = Convert.ToString(green_Dec_Value_Bit, 2);
                        }
                        else if (bitwise_operator3.Text == "B")
                        {
                            bit_result.Text = Convert.ToString(green_Dec_Value_Bit ^ blue_Dec_Value_Bit, 2);
                        }
                        else
                        {
                            bit_result.Text = Convert.ToString(green_Dec_Value_Bit ^ red_Dec_Value_Bit, 2);
                        }
                    }
                    else if (bitwise_operator1.Text == "B")
                    {
                        if (bitwise_operator3.Text == "B")
                        {
                            bit_result.Text = Convert.ToString(blue_Dec_Value_Bit, 2);
                        }
                        else if (bitwise_operator3.Text == "R")
                        {
                            bit_result.Text = Convert.ToString(blue_Dec_Value_Bit ^ red_Dec_Value_Bit, 2);
                        }
                        else
                        {
                            bit_result.Text = Convert.ToString(blue_Dec_Value_Bit ^ green_Dec_Value_Bit, 2);
                        }
                    }
                }

                //strings to create the values for the SQL statement
                string red_binary = Convert.ToString(red_Dec_Value_Bit, 2);
                string green_binary = Convert.ToString(green_Dec_Value_Bit, 2);
                string blue_binary = Convert.ToString(blue_Dec_Value_Bit, 2);

                string hex_value_result = red_Hex.Text + green_Hex.Text + blue_Hex.Text;
                string bitwise_operation = bitwise_operator1.Text + bitwise_operator2.Text + bitwise_operator3.Text;
                string bitwise_value_result = bit_result.Text;

                //SQL statement to add values to the database
                SQL = "INSERT INTO Project1a(RedBinary, GreenBinary, BlueBinary, RedDecimal, GreenDecimal, BlueDecimal, HexValue, BitwiseOperation, BitwiseResult) VALUES('" +red_binary+ "','" +green_binary+ "','" +blue_binary+ "','" +red_Dec_Value_Bit+ "','" +green_Dec_Value_Bit+ "','" +blue_Dec_Value_Bit+ "','" +hex_value_result+ "','" +bitwise_operation+ "','" +bitwise_value_result+ "')";
                //create connection
                oConn = new SqlConnection(connection);
                //open connection
                oConn.Open();
                oCmd = new SqlCommand(SQL, oConn);
                //read the values input
                oCmd.ExecuteReader();
                //close the connection
                oConn.Close();
            }
        }
    }
}


