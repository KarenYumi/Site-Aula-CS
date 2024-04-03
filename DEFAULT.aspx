<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DEFAULT.aspx.cs" Inherits="Projeto3.DEFAULT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Place somewhere in the <body> of your page -->
    <div class="flexslider">
        <ul class="slides">
            <li>
                <img src="Images/banner0.png" />
            </li>
            <li>
                <img src="Images/banner1.png" />
            <li>
                <img src="Images/banner2.png" />
            </li>
            <li>
                <img style="height: 500px" src="giphy.gif" />
            </li>

        </ul>
    </div>
    <script>
        // Can also be used with $(document).ready()
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide"
            });
        });
    </script>

    <div class="row min-height-300px margin-top-120">
        <!-- COLUNA 1 -->
        <div class="col-3">
            <div class="box border margin-right-20">
                <img width="100%" src="image%201.jpg" />
                <br />
                <br />
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In blandit molestie pellentesque. Proin ornare ex ut egestas dictum. 
                </p>
            </div>
        </div>
        <!-- COLUNA 2 -->
        <div class="col-3">
            <div class="box border margin-right-20">
                <img width="100%" src="image%203.jpg" />
                <br />
                <br />
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In blandit molestie pellentesque. Proin ornare ex ut egestas dictum. 
                </p>
            </div>
        </div>
        <!-- COLUNA 3 -->
        <div class="col-3">
            <div class="box border margin-right-20">
                <img width="100%" src="image%204.jpg" />
                <br />
                <br />
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In blandit molestie pellentesque. Proin ornare ex ut egestas dictum. 
                </p>
            </div>
        </div>
        <!-- COLUNA 3 -->
        <div class="col-3">
            <div class="box border">
                <img width="100%" src="image2.jpg" />
                <br />
                <br />
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In blandit molestie pellentesque. Proin ornare ex ut egestas dictum. 
                </p>
            </div>
        </div>
    </div>



</asp:Content>
