# -*- coding: utf-8 -*-

"""Define various elements required."""

import flask
import json
import logging
import logging.config
import urllib

Logger = logging.getLogger(__name__)
with open('Boxoffice/logging.json') as config:
    logging.config.dictConfig(json.load(config))

WebApp = flask.Flask(__name__)


@WebApp.route('/')
def index_action():
    """Render webpage displaying details of user specified movies."""
    payload = load_json()
    return flask.render_template('home.tpl', payload=payload)


def dump_json(payload):
    """Serialize payload into json file."""
    with open('Boxoffice/boxoffice.json', 'w') as json_out:
        json.dump(payload, json_out)


def load_json():
    """Deserialize payload to dictionary and return."""
    with open('Boxoffice/boxoffice.json') as json_in:
        return json.load(json_in)


class Movie(object):
    """Connect to The Movie Database and fetch movie details."""

    def __init__(self, movie):
        """Initialize parameters required."""
        self._api_key = 'ef3f6ce5e0a1d7d42bbd3c4a2c98b9f7'
        self._api_url = 'https://api.themoviedb.org/3/search/movie'
        self._params = urllib.urlencode({
            'api_key': self._api_key,
            'query': movie
        })
        self._response = json.load(urllib.urlopen(self._api_url, self._params))

    def total_results(self):
        """Total number of results for the movie."""
        return self._response.get('total_results')

    def movie_details(self):
        """Details of the movie."""
        movie_dict = self._response.get('results')[0]
        poster_base = 'https://image.tmdb.org/t/p/w500'
        return {
            'title': movie_dict.get('title'),
            'poster': poster_base + movie_dict.get('poster_path'),
            'summary': movie_dict.get('overview'),
            'released': movie_dict.get('release_date')
        }
