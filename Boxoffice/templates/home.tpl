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
    </style>
{% endblock %}
{% block content %}
    {{ super() }}
{% endblock %}
