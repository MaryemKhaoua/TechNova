<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion des Utilisateurs - TechNova</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            text-align: center;
        }
        nav {
            margin: 20px 0;
        }
        nav a {
            margin: 0 15px;
            color: #007BFF;
            text-decoration: none;
        }
        main {
            max-width: 800px;
            margin: auto;
            padding: 20px;
            background: white;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        h2 {
            color: #333;
        }
        p {
            line-height: 1.6;
            color: #555;
        }
    </style>
</head>
<body>
<header>
    <h1>Bienvenue chez TechNova</h1>
</header>
<nav>
    <a href="userManagement.jsp">Accueil</a>
    <a href="#about">Add user</a>
    <a href="./users">show users</a>
    <a href="#contact">Contact</a>
</nav>
<main>
    <h2>Modernisation de la Gestion des Utilisateurs</h2>
    <p>
        TechNova souhaite moderniser la gestion de ses utilisateurs, qui repose actuellement sur un système obsolète à base de feuilles de calcul.
        Notre objectif est de créer une plateforme intuitive et efficace, permettant une gestion centralisée des données des utilisateurs,
        améliorant ainsi la productivité et la sécurité.
    </p>
    <p>
        Explorez les fonctionnalités à venir qui transformeront notre approche de la gestion des utilisateurs !
    </p>
</main>
</body>
</html>
