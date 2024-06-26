﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using Adslib;


namespace Projeto3
{
    public partial class FaleConosco : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Nome.Text.Trim() == "")
            {
                Alerta.Text = "Digite seu nome";
            }
            else if (Email.Text.Trim() == "")
            {
                Alerta.Text = "Digite seu e-mail";
            }
            else if (Telefone.Text == "")
            {
                Alerta.Text = "Digite seu Telefone";
            }
            else if (Mensagem.Text.Trim() == "") 
            {
                Alerta.Text = "Digite sua mensagem";
            }
            else
            {
                try
                {

                    //Envia O Email

                    //Cria uma instancia da classe MailMensage()
                    MailMessage mail = new MailMessage();
                    mail.To.Add("contato@seudominio.com.br");
                    MailAddress from = new MailAddress("contato@seudominio.com.br");
                    mail.From = from;
                    mail.Subject = "E-mail enviado pela página Fale Conosco";
                    mail.Body = "Nome:" + Nome.Text + "\n";
                    mail.Body = "Email:" + Email.Text + "\n";
                    mail.Body = "Telefone:" + Telefone.Text + "\n";
                    mail.Body = "Mensagem:" + Mensagem.Text + "\n";
                    mail.IsBodyHtml = false;

                    // Cria uma instância da classe SMTPClient()
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "seudominio.com.br";
                    smtp.Credentials = new System.Net.NetworkCredential("contato@seudominio.com.br", "sua senha");

                    //envia o email
                    smtp.Send(mail);

                    Alerta.Text = "Seu e-mail foi enviado com sucesso";
                    Alerta.ForeColor = System.Drawing.Color.Black;
                    Formulario.Visible = false;

                    
                }
                catch (Exception ex)
                {

                    Alerta.Text = "Houve uma falha no sistema, por favor tente mais tarde. <br> ";

                    Formulario.Visible = false;

                    //Criar uma instancia da classe
                    TratamentoExcecoes tr = new TratamentoExcecoes();
                    tr.GravarExcecao(ex);

                }
            }
        }
    }
}