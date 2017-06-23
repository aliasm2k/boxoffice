{% extends "base.tpl" %}
{% block title %}{{ super() }}{% endblock %}
{% block head %}
    {{ super() }}
    <link rel="shortcut icon" href="{{ url_for('static', filename='favicon.ico') }}">
{% endblock %}
{% block content %}
    {{ super() }}
{% endblock %}
