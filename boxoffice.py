# -*- coding: utf-8 -*-

"""Boxoffice CLI."""

import Boxoffice
import click


@click.command()
@click.option(
    '--movies', default='batman v/s superman,wonder woman,justice league',
    help='Comma separated list of movies. Ex: \'despicable me, mnions\''
)
def launcher(movies):
    """Accept a list of movies and launch Boxoffice."""
    for movie in movies.split(','):
        Boxoffice.Logger.info(movie.title())


if __name__ == '__main__':
    launcher()
