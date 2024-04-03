using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Projeto3
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LerAluno();
        }

        protected void LerAluno()
        {
            //Identifica o caminho fisico para gravar o arquivo
            //caminho fisico é para o SO poder rodar executar alguma mudança
            //Sistema Operacional é quem gerencia o disco
            //Sistema Operacional só altera se passar no caminho físico
            //Server.MapPath converte o caminho lógico em caminho físico (C:\user....)
            //tranformando \ que é um comando, para apenas um caminho coloque o @, porém não pode colocar assim pois cada computador é diferente e o caminho físico muda. Tendo que usar o Server.MapPath
            string caminhoFisico = Server.MapPath("~/CadastroAlunos.txt");

            //Leia o arquivo e atribuia ao label "Alunos"
            //replace troca o primeiro para o segundo(\n para o <br>
            Alunos.Text = File.ReadAllText(caminhoFisico).Replace("\n", "<br>");
        }



        protected void Enviar_Click(object sender, EventArgs e)
        {

            if (Nome.Text == "")
            {
                Mensagem.Text = "Digite seu nome";
            }
            else if (Email.Text == "")
            {
                Mensagem.Text = "Digite seu e-mail";
            }
            else if (! int.TryParse(Idade.Text, out int x))
            {
                Mensagem.Text = "Digite sua idade";
            }
            else
            {
                //cria uma variavel string com valor vazio
                string conteudo = "";

                //coloca em conteudo nome + email + idade + ----------
                conteudo = Nome.Text + "\n";
                conteudo += Email.Text + "\n";
                conteudo += Idade.Text + "\n";
                conteudo += "-----------------------------\n";

                string caminhoFisico = Server.MapPath("~/CadastroAlunos.txt");

                //System.IO é um pacote de todas as entradas e saídas, File é o nome da classe, ApendAllText grava os dados (string path, string content)
                // executa o método para graver o conteudo no caminho físico
                //quando estiver cinza não precisa usar de novo
                System.IO.File.AppendAllText(caminhoFisico, conteudo);


                //Após presionar enviar ele esvazia os espaços
                Nome.Text = "";
                Email.Text = "";
                Idade.Text = "";

                Mensagem.Text = "";

                LerAluno();
            }
        }
    }
}