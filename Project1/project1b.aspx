<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="project1b.aspx.cs" Inherits="Project1.project1b" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Color Calculator - Version 2</title>
    <style type="text/css">
        body {
            height:auto;
        }
        
        #main { position:absolute; }

        a { position:absolute; top:800px; }

        .row {
            width:700px;
            height:100px;
            position:absolute;
            left:20px;
        }

        #decimal {
            width:150px;
            height:300px;
            position:absolute;
            left:720px;
            text-align:center;
            top: 0px;
        }

        #hex {
            width:150px;
            height:300px;
            position:absolute;
            left:870px;
            text-align:center;
            top: 0px;
        }

        .binary_select {
            margin:10px;
        }

        #green { top:100px; }
        #blue { top:200px; }
        #bitwise { 
            position:absolute; 
            top: 300px; 
            width:300px; 
            left:720px; }
        
        #print_temp { top:600px; }

        .dec_text, .hex_text {
            width:100px;
            position:absolute;
        }

        #dec_red, #hex_red { top:50px; left: 22px; }
        #dec_green, #hex_green { top: 150px; left: 22px; }
        #dec_blue, #hex_blue { top: 250px; left: 22px; }

        #color {
            height:200px;
            width:200px;
            position:absolute;
            left:1020px;
        }

        #header{
             width: 100%;
             height: 91px;
             font-size: 32px;
             left:200px;
        }

    </style>
</head>
<body>
    <div id="header">Hudson's Color Converter</div>
    <form id="form1" runat="server">
        <div id="main">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <div id="red" class="row">
            <p style="color:maroon; font-weight:bold;">Red: </p>
            <asp:DropDownList ID="red_128" CssClass="binary_select" runat="server" OnSelectedIndexChanged="red_128_SelectedIndexChanged">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="red_64" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberRed">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="red_32" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberRed">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="red_16" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberRed">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="red_8" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberRed">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="red_4" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberRed">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="red_2" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberRed">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="red_1" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberRed">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div id="green" class="row">
            <p style="color:green; font-weight:bold;">Green: </p>
            <asp:DropDownList ID="green_128" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberGreen">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="green_64" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberGreen">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="green_32" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberGreen">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="green_16" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberGreen">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="green_8" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberGreen">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="green_4" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberGreen">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="green_2" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberGreen">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="green_1" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberGreen">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div id="blue" class="row">
            <p style="color:blue; font-weight:bold;">Blue: </p>
            <asp:DropDownList ID="blue_128" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberBlue">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="blue_64" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberBlue">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="blue_32" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberBlue">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="blue_16" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberBlue">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="blue_8" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberBlue">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="blue_4" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberBlue">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="blue_2" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberBlue">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="blue_1" CssClass="binary_select" runat="server" OnSelectedIndexChanged="selectNumberBlue">
                <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div id="bitwise" class="row">
            <p>Bitwise result: </p>
            <asp:DropDownList ID="bitwise1" CssClass="bitwise_select" runat="server">
                <asp:ListItem Selected="True" Value="R">R</asp:ListItem>
                <asp:ListItem Value="G">G</asp:ListItem>
                <asp:ListItem Value="B">B</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="bitwise_function" CssClass="bitwise_select" runat="server">
                <asp:ListItem Selected="True" Value="&">&</asp:ListItem>
                <asp:ListItem Value="|">|</asp:ListItem>
                <asp:ListItem Value="^">^</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="bitwise2" CssClass="bitwise_select" runat="server">
                <asp:ListItem Selected="True" Value="R">R</asp:ListItem>
                <asp:ListItem Value="G">G</asp:ListItem>
                <asp:ListItem Value="B">B</asp:ListItem>
            </asp:DropDownList>
            =
            <asp:TextBox ID="bitwise_result" runat="server"></asp:TextBox>
        </div>
        <div id="print_temp" class="row">
            <p id="print_temp_here" runat="server"></p>
            <p id="print_temp_here2" runat="server"></p>
        </div>

        <div id="decimal">
            <p>Decimal</p>
            <asp:TextBox ID="dec_red" CssClass="dec_text" runat="server"></asp:TextBox>
            <asp:TextBox ID="dec_green" CssClass="dec_text" runat="server"></asp:TextBox>
            <asp:TextBox ID="dec_blue" CssClass="dec_text" runat="server"></asp:TextBox>
        </div>

        <div id="hex">
            <p>Hex</p>
            <asp:TextBox ID="hex_red" CssClass="hex_text" runat="server"></asp:TextBox>
            <asp:TextBox ID="hex_green" CssClass="hex_text" runat="server"></asp:TextBox>
            <asp:TextBox ID="hex_blue" CssClass="hex_text" runat="server"></asp:TextBox>
        </div>

        <div id="color" runat="server"></div>
        </ContentTemplate>
        </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
