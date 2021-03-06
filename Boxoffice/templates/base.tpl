<!doctype html>
<html class="no-js" lang="">
    <head>
        {% block head %}
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>{% block title %}{% endblock %}</title>
        <meta name="description" content="{% block description %}{% endblock %}">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
        {% endblock %}
    </head>
    <body>
        {% block content %}
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser.
            Please <a href="http://browsehappy.com/">upgrade your browser</a>
            to improve your experience.</p>
        <![endif]-->
        {% endblock %}
    </body>
</html>
