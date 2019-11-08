<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarDatos.aspx.cs" Inherits="BigDataCodigo.MostrarDatos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gvDatos" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="gvDatos_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="datos" HeaderText="datos" SortExpression="datos" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAM_GorkaUrtxuegia_DEVConnectionString %>" SelectCommand="SELECT * FROM [BigData]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
