<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="results.aspx.cs" Inherits="Project01_456.results" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Results</title>
    <style>
        .auto-style1 {
            text-align: center;
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <!--heading for the page-->
            <p class="auto-style1">
            <asp:Label ID="heading" runat="server" Text="Results" Font-Bold="True"  Font-Size="XX-Large" style="font-family: Arial, Helvetica, sans-serif; color: #800080;"></asp:Label>
                
                <br />

             <asp:Label ID="name" runat="server" Text="By: Brooke Neyhart" Font-Bold="True" Font-Size="Large" style="font-family: Arial, Helvetica, sans-serif; color: #800080;"></asp:Label>

            <!--links to the other pages-->
            <a href="project1a.aspx" style="color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; z-index: 1; top: 83px; position: absolute; left: 842px;">Version 1</a>
            <a href="project1b.aspx" style="color: #000000; font-size: medium; font-family: Arial, Helvetica, sans-serif; z-index: 1; top: 83px; position: absolute; left: 932px;">Version 2</a>
            <a href="results.aspx"style="color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; z-index: 1; left: 1027px; top: 83px; position: absolute;">Results</a>
             </p>

           
            <!--datagrid to display the database results-->
            <asp:DataGrid ID="Project1a" runat="server" style="border-style: solid; border-color: inherit; border-width: 1px; top: 135px; position:absolute; left: 557px;" AutoGenerateColumns="true" ></asp:DataGrid>
          
        </div>
    </form>
</body>
</html>
