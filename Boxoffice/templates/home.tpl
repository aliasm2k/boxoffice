{% extends "base.tpl" %}
{% block title %}Boxoffice{% endblock %}
{% block description %}{{ super() }}{% endblock %}
{% block head %}
    {{ super() }}
    <link rel="shortcut icon" href="{{ url_for('static', filename='favicon.ico') }}">
    <!--[if lte IE 8]>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/pure/1.0.0/base-min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/pure/1.0.0/grids-min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/pure/1.0.0/grids-responsive-old-ie-min.css">
    <![endif]-->
    <!--[if gt IE 8]><!-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/pure/1.0.0/base-min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/pure/1.0.0/grids-min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/pure/1.0.0/grids-responsive-min.css">
    <!--<![endif]-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans">
    <style>
    html, button, input, select, textarea,
    .pure-g [class *= "pure-u"] {
        font-family: 'Open Sans', "Times New Roman", serif;
    }
    .center {
        justify-content: center;
    }
    .movie {
        padding: 1em;
    }
    .movie h1, .movie h2 {
        text-align: center;
    }
    .movie p {
        text-align: justify;
    }
    </style>
{% endblock %}
{% block content %}
    {{ super() }}
    <div class="pure-g center">
        {% for movie in payload.movies %}
        <div class="pure-u-1 pure-u-md-1-2 pure-u-lg-1-4">
            <div class="movie">
                <h1>{{ movie.title }}</h1>
                <h2>{{ movie.released }}</h2>
                <img class="pure-img" src="{{ movie.poster }}">
                <p>{{ movie.summary }}</p>
            </div>
        </div>
        {% endfor %}
    </div>
{% endblock %}
