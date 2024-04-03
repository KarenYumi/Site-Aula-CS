<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Projeto3.Cadastro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row min-height-300px margin-bottom-120">
        <!-- CADASTRO -->
        <div class="col-6">
            <div class="box border margin-right-20">
                <!-- Título -->
                <h2>Cadastro de Alunos</h2>
                <br />
                <asp:Label ID="Mensagem" ForeColor="red" runat="server"></asp:Label>
                <br />
                <label>Nome</label>
                <asp:TextBox ID="Nome" MaxLength="50" runat="server"></asp:TextBox>
                <label>E-mail</label>
                <asp:TextBox ID="Email" TextMode="Email" runat="server"></asp:TextBox>
                <label>Idade</label>
                <asp:TextBox ID="Idade" runat="server"></asp:TextBox>
                <br />
                <asp:Button OnClick="Enviar_Click" ID="Enviar" runat="server" Text="Enviar" />
            </div>
        </div>
        <!-- COLUNA 2 -->
        <div class="col-6">
            <div class="box border margin-right-20">
                <h2>Alunos</h2>
                <br />
                <asp:Panel ID="Panel1" Height="500px" ScrollBars="Vertical" runat="server">
                <asp:Label ID="Alunos" runat="server"></asp:Label>
                </asp:Panel>
                
                <!-- <p> servem para copiar o arquivo dentro da page
                        <embed type="text/html" src="CadastroAlunos.txt" width="300" height="200">
                       <iframe class="Cadastro" src="CadastroAlunos.txt" width=400 height=400 frameborder=0></iframe>
                        <object data="CadastroAlunos.txt"></object>
                        
                    </p>-->

            </div>
        </div>
    </div>




</asp:Content>
