<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="project1a.aspx.cs" Inherits="Project01_456.project1a" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Project 1a</title>
     <style type="text/css">
        .auto-style1 {
            text-align: center;
            
        }
        .auto-style2 {
            position: absolute;
            top: 91px;
            left: 262px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 111px;
            left: 44px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 138px;
            left: 44px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 164px;
            left: 44px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 111px;
            left: 115px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 138px;
            left: 115px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 164px;
            left: 115px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 112px;
            left: 175px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 138px;
            left: 175px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 164px;
            left: 175px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 111px;
            left: 235px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 138px;
            left: 235px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 164px;
            left: 235px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 111px;
            left: 295px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 138px;
            left: 295px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 164px;
            left: 295px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 111px;
            left: 355px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 138px;
            left: 355px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 164px;
            left: 355px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 111px;
            left: 415px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 138px;
            left: 415px;
        }
        .auto-style23 {
            position: absolute;
            top: 164px;
            left: 415px;
        }
        .auto-style24 {
            position: absolute;
            top: 111px;
            left: 475px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 138px;
            left: 475px;
        }
        .auto-style26 {
            position: absolute;
            top: 164px;
            left: 475px;
        }
        .auto-style27 {
            position: absolute;
            top: 111px;
            left: 535px;
        }
        .auto-style28 {
            position: absolute;
            top: 138px;
            left: 535px;
            z-index: 1;
        }
        .auto-style29 {
            position: absolute;
            top: 164px;
            left: 535px;
        }
        .auto-style30 {
            position: absolute;
            top: 111px;
            left: 602px;
        }
        .auto-style31 {
            position: absolute;
            top: 138px;
            left: 603px;
        }
        .auto-style32 {
            position: absolute;
            top: 164px;
            left: 603px;
        }
        .auto-style33 {
            position: absolute;
            top: 111px;
            left: 655px;
        }
        .auto-style34 {
            position: absolute;
            top: 138px;
            left: 655px;
        }
        .auto-style35 {
            position: absolute;
            top: 164px;
            left: 655px;
        }
        .auto-style36 {
            position: absolute;
            top: 111px;
            left: 845px;
        }
        .auto-style37 {
            position: absolute;
            top: 138px;
            left: 846px;
        }
        .auto-style38 {
            position: absolute;
            top: 164px;
            left: 846px;
        }
        .auto-style39 {
            position: absolute;
            top: 111px;
            left: 871px;
        }
        .auto-style40 {
            position: absolute;
            top: 138px;
            left: 871px;
        }
        .auto-style41 {
            position: absolute;
            top: 164px;
            left: 871px;
        }
        .auto-style42 {
            position: absolute;
            top: 203px;
            left: 295px;
            z-index: 1;
        }
        .auto-style43 {
            position: absolute;
            top: 203px;
            left: 415px;
            z-index: 1;
        }
        .auto-style44 {
            position: absolute;
            top: 203px;
            left: 475px;
        }
        .auto-style45 {
            position: absolute;
            top: 203px;
            left: 535px;
        }
        .auto-style46 {
            position: absolute;
            top: 203px;
            left: 603px;
        }
        .auto-style47 {
            position: absolute;
            top: 203px;
            left: 655px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div> 
            <!--heading-->
            <p class="auto-style1">
            <asp:Label ID="heading" runat="server" Text="Color Calculator" Font-Bold="True"  Font-Size="XX-Large" style="font-family: Arial, Helvetica, sans-serif; color: #800080;"></asp:Label>
                
                <br />

             <asp:Label ID="name" runat="server" Text="By: Brooke Neyhart" Font-Bold="True" Font-Size="Large" style="font-family: Arial, Helvetica, sans-serif; color: #800080;"></asp:Label>
             </p>
               <p>
             <!--labels for the program -->
             <asp:Label ID="bin_label" runat="server" Text="Binary Digits" Font-Size="Medium" style="font-family: Arial, Helvetica, sans-serif;" CssClass="auto-style2"></asp:Label>
             <asp:Label ID="dec_label" runat="server" Text="Decimal Value" Font-Size="Medium" style="font-family: Arial, Helvetica, sans-serif; z-index: 1; left: 678px; top: 88px; position: absolute; right: 605px;"></asp:Label>
             <asp:Label ID="col_label" runat="server" Text="Color" Font-Size="Medium" style="font-family: Arial, Helvetica, sans-serif; z-index: 1; left: 1101px; top: 93px; position: absolute;"></asp:Label>

             <asp:Label ID="hex_label" runat="server" Text="Hex Value" Font-Size="Medium" style="font-family: Arial, Helvetica, sans-serif; z-index: 1; left: 919px; top: 91px; position: absolute;"></asp:Label>

                <!--Red Binary Digit line-->
                <asp:Label ID="red_label" runat="server" Text="Red:" Font-Size="Medium" style="font-family: Arial, Helvetica, sans-serif; color: #FF0000; font-weight: 700;" CssClass="auto-style3"></asp:Label>
                <asp:DropDownList ID="red_binary_01" runat="server" CssClass="auto-style6" OnTextChanged ="redToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="red_binary_02" runat="server" CssClass="auto-style9" OnTextChanged ="redToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="red_binary_03" runat="server" CssClass="auto-style12" OnTextChanged ="redToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="red_binary_04" runat="server" CssClass="auto-style15" OnTextChanged ="redToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="red_binary_05" runat="server" CssClass="auto-style18" OnTextChanged ="redToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="red_binary_06" runat="server" CssClass="auto-style21" OnTextChanged ="redToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="red_binary_07" runat="server" CssClass="auto-style24" OnTextChanged ="redToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="red_binary_08" runat="server" CssClass="auto-style27" style="z-index: 1" OnTextChanged ="redToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="red_equal" runat="server" Text="=" Font-Size="Medium" style="font-family: Arial, Helvetica, sans-serif; z-index: 1;" CssClass="auto-style30"></asp:Label>
                   <!--display box for red decimal values-->
                <asp:TextBox ID="red_Dec" runat="server" CssClass="auto-style33" style="z-index: 1"></asp:TextBox>
                <asp:Label ID="red_equal2" runat="server" Text="=" Font-Size="Medium" style="font-family: Arial, Helvetica, sans-serif; z-index: 1;" CssClass="auto-style36"></asp:Label>
                   <!--display box for red hex value-->
                <asp:TextBox ID="red_Hex" runat="server" CssClass="auto-style39" style="z-index: 1" Text="00"></asp:TextBox>

                <br />

                <!--Green Binary Digit line-->
                <asp:Label ID="green_label" runat="server" Text="Green:" Font-Size="Medium" style="font-family: Arial, Helvetica, sans-serif; color: #008000; font-weight: 700;" CssClass="auto-style4"></asp:Label>
                <asp:DropDownList ID="green_binary_01" runat="server" CssClass="auto-style7" OnTextChanged ="greenToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="green_binary_02" runat="server" CssClass="auto-style10" OnTextChanged ="greenToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="green_binary_03" runat="server" CssClass="auto-style13" OnTextChanged ="greenToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="green_binary_04" runat="server" CssClass="auto-style16" OnTextChanged ="greenToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="green_binary_05" runat="server" CssClass="auto-style19" OnTextChanged ="greenToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="green_binary_06" runat="server" CssClass="auto-style22" style="z-index: 1" OnTextChanged ="greenToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="green_binary_07" runat="server" CssClass="auto-style25" style="z-index: 1" OnTextChanged ="greenToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="green_binary_08" runat="server" CssClass="auto-style28" OnTextChanged ="greenToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="green_equal" runat="server" Text="=" Font-Size="Medium" style="font-family: Arial, Helvetica, sans-serif; z-index: 1;" CssClass="auto-style31"></asp:Label>
                   <!--display box for green decimal value-->
                <asp:TextBox ID="green_Dec" runat="server" CssClass="auto-style34" style="z-index: 1"></asp:TextBox>
                <asp:Label ID="green_equal2" runat="server" Text="=" Font-Size="Medium" style="font-family: Arial, Helvetica, sans-serif; z-index: 1;" CssClass="auto-style37"></asp:Label>
                   <!--display box for green hex value-->
                <asp:TextBox ID="green_Hex" runat="server" CssClass="auto-style40" style="z-index: 1" Text="00"></asp:TextBox>

                <br />

                <!--Blue Binary Digit line-->
                <asp:Label ID="blue_label" runat="server" Text="Blue:" Font-Size="Medium" style="font-family: Arial, Helvetica, sans-serif; color: #0000FF; font-weight: 700;" CssClass="auto-style5"></asp:Label>
                <asp:DropDownList ID="blue_binary_01" runat="server" CssClass="auto-style8" OnTextChanged ="blueToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="blue_binary_02" runat="server" CssClass="auto-style11" OnTextChanged ="blueToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="blue_binary_03" runat="server" CssClass="auto-style14" OnTextChanged ="blueToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="blue_binary_04" runat="server" CssClass="auto-style17" OnTextChanged ="blueToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="blue_binary_05" runat="server" CssClass="auto-style20" OnTextChanged ="blueToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="blue_binary_06" runat="server" CssClass="auto-style23" style="z-index: 1" OnTextChanged ="blueToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="blue_binary_07" runat="server" CssClass="auto-style26" style="z-index: 1" OnTextChanged ="blueToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="blue_binary_08" runat="server" CssClass="auto-style29" style="z-index: 1" OnTextChanged ="blueToDecToHex" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="blue_equal" runat="server" Text="=" Font-Size="Medium" style="font-family: Arial, Helvetica, sans-serif; z-index: 1;" CssClass="auto-style32"></asp:Label>
                   <!-- display box for blue decimal value-->
                <asp:TextBox ID="blue_Dec" runat="server" CssClass="auto-style35" style="z-index: 1"></asp:TextBox>
                <asp:Label ID="blue_equal2" runat="server" Text="=" Font-Size="Medium" style="font-family: Arial, Helvetica, sans-serif; z-index: 1;" CssClass="auto-style38"></asp:Label>
                   <!--display box for blue hex value-->
                <asp:TextBox ID="blue_Hex" runat="server" CssClass="auto-style41" style="z-index: 1" Text="00"></asp:TextBox>

                <br />

                <!--Bitwise result and dropdowns-->
                <asp:Label ID="bit_label" runat="server" Text="Bitwise result:" Font-Size="Medium" style="font-family: Arial, Helvetica, sans-serif; color: #800080; font-weight: 700;" CssClass="auto-style42"></asp:Label>
                <asp:DropDownList ID="bitwise_operator1" runat="server" CssClass="auto-style43" OnTextChanged ="bitwise_Value" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>R</asp:ListItem>
                    <asp:ListItem>G</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="bitwise_operator2" runat="server" CssClass="auto-style44" style="z-index: 1" OnTextChanged ="bitwise_Value" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>&</asp:ListItem>
                    <asp:ListItem>|</asp:ListItem>
                    <asp:ListItem>^</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="bitwise_operator3" runat="server" CssClass="auto-style45" style="z-index: 1" OnTextChanged ="bitwise_Value" AutoPostBack ="true">
                    <asp:ListItem>--</asp:ListItem>
                    <asp:ListItem>R</asp:ListItem>
                    <asp:ListItem>G</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="bit_equal" runat="server" Text="=" Font-Size="Medium" style="font-family: Arial, Helvetica, sans-serif; z-index: 1;" CssClass="auto-style46"></asp:Label>
                   <!--textbox that displays the bitwise value-->
                <asp:TextBox ID="bit_result" runat="server" CssClass="auto-style47" style="z-index: 1"></asp:TextBox>
                <asp:Label ID="display_label" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" style="z-index: 1; left: 1062px; top: 111px; position: absolute; height: 123px; width: 123px" Text=""></asp:Label>
            </p>
            <br />
          
            <!--links to the other pages-->
            <a href="project1a.aspx" style="color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; z-index: 1; top: 258px; position: absolute; left: 686px;">Version 1</a><a href="project1b.aspx" style="color: #000000; font-size: medium; font-family: Arial, Helvetica, sans-serif; z-index: 1; top: 258px; position: absolute; left: 764px;">Version 2</a>
            <a href="results.aspx"style="color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; z-index: 1; left: 734px; top: 285px; position: absolute;">Results</a>
        
        </div>
    </form>
</body>
</html>
