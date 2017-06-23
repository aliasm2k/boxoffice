# -*- coding: utf-8 -*-

"""Boxoffice CLI."""

import Boxoffice
import click
import time
import webbrowser


@click.command()
@click.option(
    '--movies', default='batman v/s superman,wonder woman,justice league',
    help='Comma separated list of movies. Ex: \'despicable me, mnions\''
)
def launcher(movies):
    """Accept a list of movies and launch Boxoffice."""
    payload = {'movies': []}
    for movie in movies.split(','):
        mov_obj = Boxoffice.Movie(movie)
        results = mov_obj.total_results()
        Boxoffice.Logger.info('{} [{} results]'.format(movie.title(), results))
        if results > 0:
            mov_dict = mov_obj.movie_details()
            payload.get('movies').append(mov_dict)
        else:
            Boxoffice.Logger.info('{} not found'.format(movie.title()))
        time.sleep(5)

    Boxoffice.dump_json(payload)
    Boxoffice.Logger.info('Fetched: {}'.format(len(payload.get('movies'))))
    webbrowser.open('localhost:8080')
    Boxoffice.WebApp.run(port=8080)


if __name__ == '__main__':
    launcher()
