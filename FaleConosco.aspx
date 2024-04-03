<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FaleConosco.aspx.cs" Inherits="Projeto3.FaleConosco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row min-height-300px">
        <!-- Fale Conosco-->
        <div class="col-6">
            <div class="box border margin-right-20">
                <!-- Título -->
                <h2>Fale Conosco</h2>
                <br />
                <!--Mensagem ao der algo errado-->
                <asp:Label ID="Alerta" ForeColor="red" Font-Size="18px" runat="server"></asp:Label>
                <!--Painel-->
                <asp:Panel ID="Formulario" runat="server">
                    <br />
                    <!-- àrea de dados-->
                    <label>Nome</label>
                    <asp:TextBox ID="Nome" MaxLength="50" runat="server"></asp:TextBox>
                    <label>E-mail</label>
                    <asp:TextBox ID="Email" TextMode="Email" MaxLength="50" runat="server"></asp:TextBox>
                    <label>Telefone</label>
                    <asp:TextBox ID="Telefone" MaxLength="15" runat="server"></asp:TextBox>
                    <label>Mensagem</label>
                    <asp:TextBox ID="Mensagem" Font="Arial" TextMode="MultiLine" Rows="6" MaxLength="400" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button OnClick="Button1_Click" ID="Button1" runat="server" Text="Enviar" />
                </asp:Panel>
            </div>
        </div>
        <!-- COLUNA 2 -->
        <div class="col-6">
            <div class="box border">
                <h2>Mapa</h2>
                <br />
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14718.767977128831!2d-47.3501613!3d-22.7396868!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94c89bea5cdb94f9%3A0xffb368bd91ea12ae!2sFatec%20Americana%20-%20Faculdade%20de%20Tecnologia%20de%20Americana%20Ministro%20Ralph%20Biasi!5e0!3m2!1spt-BR!2sbr!4v1711546660516!5m2!1spt-BR!2sbr" width="100%" height="90%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>

</asp:Content>
