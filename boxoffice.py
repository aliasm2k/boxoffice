# -*- coding: utf-8 -*-

"""Boxoffice CLI."""

import Boxoffice
import click
import time


@click.command()
@click.option(
    '--movies', default='batman v/s superman,wonder woman,justice league',
    help='Comma separated list of movies. Ex: \'despicable me, mnions\''
)
def launcher(movies):
    """Accept a list of movies and launch Boxoffice."""
    for movie in movies.split(','):
        mov_obj = Boxoffice.Movie(movie)
        results = mov_obj.total_results()
        mov_dict = mov_obj.movie_details()
        Boxoffice.Logger.info('{} [{} results]'.format(movie.title(), results))
        Boxoffice.Logger.info(mov_dict)
        time.sleep(5)


if __name__ == '__main__':
    launcher()
