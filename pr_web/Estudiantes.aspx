<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Estudiantes.aspx.cs" Inherits="pr_web.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<h1>Formulario Estudiantes</h1>
	<asp:Label ID="lbl_codigo" runat="server" Text="Carne" CssClass="badge"></asp:Label>
	<asp:TextBox ID="txt_codigo" runat="server" CssClass="form-control" placeholder="Ejemplo: E001"></asp:TextBox>

	<asp:Label ID="lbl_nombres" runat="server" Text="Nombres" CssClass="badge"></asp:Label>
	<asp:TextBox ID="txt_nombres" runat="server" CssClass="form-control" placeholder="Ejemplo: Bryan Juanito"></asp:TextBox>

	<asp:Label ID="lbl_apellidos" runat="server" Text="Apellidos" CssClass="badge"></asp:Label>
	<asp:TextBox ID="txt_apellidos" runat="server" CssClass="form-control" placeholder="Ejemplo: Perez Lopez"></asp:TextBox>

	<asp:Label ID="lbl_direccion" runat="server" Text="Direccion" CssClass="badge"></asp:Label>
	<asp:TextBox ID="txt_direccion" runat="server" CssClass="form-control" placeholder="Ejemplo: La Antigua Guatemala"></asp:TextBox>

	<asp:Label ID="lbl_telefono" runat="server" Text="Telefono" CssClass="badge"></asp:Label>
	<asp:TextBox ID="txt_telefono" runat="server" CssClass="form-control" placeholder="Ejemplo: 12345678" TextMode="Number"></asp:TextBox>

    <asp:Label ID="lbl_correo" runat="server" Text="Correo" CssClass="badge"></asp:Label>
	<asp:TextBox ID="txt_correo" runat="server" CssClass="form-control" placeholder="Ejemplo: atojins@miumg.edu.gt" TextMode="Number"></asp:TextBox>

    <asp:Label ID="lbl_sangre" runat="server" Text="Sangre" CssClass="badge"></asp:Label>
	<asp:TextBox ID="txt_sangre" runat="server" CssClass="form-control" placeholder="Ejemplo: A+" TextMode="Number"></asp:TextBox>

	<asp:Label ID="lbl_fn" runat="server" Text="Fecha de Nacimiento" CssClass="badge"></asp:Label>
	<asp:TextBox ID="txt_fecha" runat="server" CssClass="form-control" placeholder="Ejemplo: yyyy-mm-dd" TextMode="Date"></asp:TextBox>



	<asp:Button ID="btn_crear" runat="server" Text="Crear" CssClass="btn btn-primary" />
	<asp:Button ID="btn_actualizar" runat="server" Text="Actualizar" CssClass="btn btn-success" />
	<asp:Button ID="btn_borrar" runat="server" Text="Borrar" CssClass="btn btn-danger" />

	<asp:GridView ID="grid_empleados" runat="server" AutoGenerateColumns="False" CssClass="table-condensed" >
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Select" Text="Ver" />
                </ItemTemplate>
                <ControlStyle CssClass="btn btn-info"  />
                
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" OnClientClick="javascript:if(!confirm('¿Desea Eliminar?'))return false" />
                </ItemTemplate>
                <ControlStyle CssClass="btn btn-danger" />
            </asp:TemplateField>
            <asp:BoundField DataField="carne" HeaderText="Carne" />
            <asp:BoundField DataField="nombres" HeaderText="Nombres" />
            <asp:BoundField DataField="apellidos" HeaderText="Apellidos" />
            <asp:BoundField DataField="direccion" HeaderText="Direccion" />
            <asp:BoundField DataField="telefono" HeaderText="Telefono" />
            <asp:BoundField DataField="correo" DataFormatString="{0:d}" HeaderText="Correo" />
            <asp:BoundField DataField="sangre" HeaderText="Sangre" />
            <asp:BoundField DataField="nacimiento" HeaderText="Fecha_Nacimiento" />
        </Columns>
    </asp:GridView>
	</asp:Content>
