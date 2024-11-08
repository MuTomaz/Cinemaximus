<%
    String userName = String.valueOf(session.getAttribute("nome"));
    String sHtml = "";
    if ( userName != null ) {
        sHtml = "Bem vindo " + userName + "!";
    }
%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8" />
        <title>Cinema Maximus</title>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="styles/estilo.css" />
        <style type="text/css">
            body{
                font-family: 'Segoe UI', 'Segoe UI', 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                color: #333;
                background-color: #13152D;
                line-height: 1.6;
                padding: 0 20px;
            }
            .container{
                width: 100%;
                display:flex ;
                justify-content: space-between;
                align-items: center;
            }
            .logo{
                width: 33%;
                display: flex;
                justify-content: flex-start;
                align-items: center;
            }
            span{
                width: 200px;
                font-size: 25px;
                border-radius: 50px;
                padding: 15px;
                text-align: center;
                background-color: #5C1A2A;
                color: #FFBD59;
            }

            .login-register{
                width: 33%;
                display: flex;
                justify-content: flex-end;
                align-items: center;
                gap: 15px;

            }
            input[type=submit]{
                font-size: 20px;
                background-color: #5C1A2A;
                color: #FFBD59;
                border: none;
                padding: 15px;
                border-radius: 50px;
                cursor: pointer;
            }

            @keyframes slide-in {
                from {
                    transform: translatex(-100%);
                    opacity: 0;

                }

                to {
                    transform: translatex(0%);
                    opacity: 1;

                }

            }

            main{
                width: 100%;
            }

            ul {
                width: 99%;
                list-style-type: none;
                display: flex;
                justify-content: space-around;
                animation: slide-in 1.3s ease-out;
                padding: 0;
            }

            ul li{
                display: flex;
                flex-direction: column;
                gap: 20px;
            }

            ul li a{
                display: flex;
                align-items: center;
                text-decoration: none;
            }
            a img{
                width: 350px;
                height: 550px;
                text-align: center;
            }

            ul li a:hover{
                color: #ff000093;
                text-shadow: 0 0 5px rgba(0,0, 0, 0.8);
            }

            .desc{
                font-size: 15px;
                width: 350px;
                height: 150px;
                color: #FFBD59;
                background-color: #5C1A2A;
                border-radius: 20px;
                text-align: center;
                justify-content: center;
                display: flex;
                flex-direction: column;
            }
        </style>
    </head>
    <body>
        <header>
            <div class="container">
                <section class="logo">
                    <h1><span>CinemaMaximus</span></h1>
                </section>
                <section class="login-register">
                    <%  
                     if ( userName.equals("null") )  {
                            sHtml = "<a href='login.html'><input type='submit' value='Login'></a>";
                            sHtml += "<a href='registro.html'><input type='submit' value='Registrar'></a>";
                            out.print(sHtml);
                        }
                       else {
                           out.print(sHtml);
                        }
                    %>
                </section>
            </div>
        </header>
        <main>
            <ul>
                <li>
                    <a href="https://www.rottentomatoes.com/m/interstellar_2014">
                        <img src="img/interestelar.jpg" alt="INTERESTELAR" />
                    </a>
                    <div class="desc">
                        <h2>INTERESTELAR </h2>
                        <p>Christopher Nolan</p>
                    </div>
                </li>
                <li>
                    <a href="https://www.rottentomatoes.com/m/transformers_revenge_of_the_fallen">
                        <img src="img/Transformers_ Revenge of the Fallen (2009).jpeg" alt="" />
                    </a>
                    <div class="desc">
                        <h2>TRANSFORMERS<br>A Vingan�a dos Derrotados</h2>
                        <p>Michael Bay</p>
                    </div>
                </li>
                <li>
                    <a href="https://www.rottentomatoes.com/m/the_amazing_spider_man"><img
                            src="img/The Amazing Spiderman  Movie Review.jpg" alt=""></a>

                    <div class="desc">
                        <h2>O Espetacular<br>Homem-Aranha</h2>
                        <p>Mark Webb</p>
                    </div>

                </li>
                <li>
                    <a href="https://www.rottentomatoes.com/m/the_batman">
                        <img src="img/batman.jpg" alt="">
                    </a>
                    <div class="desc">
                        <h2>The Batman</h2>
                        <p>Matt Reeves</p>
                    </div>

                </li>
            </ul>
            <section>
                <h2>Sobre n�s</h2>
                <p>
                    Esse � um site b�sico que vai ser tornar refer�ncia em compras no
                    Brasil e o Mundo
                </p>
                <img src="img/logo.png" alt="Logo da Empresa" />
            </section>
        </main>
        <footer>
            <p>Todos os direitos reservados para empresa Hello World!</p>
        </footer>
    </body>

</html>
