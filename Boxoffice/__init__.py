# -*- coding: utf-8 -*-

"""Define various elements required."""

import json
import logging
import logging.config

Logger = logging.getLogger(__name__)
with open('Boxoffice/logging.json') as config:
    logging.config.dictConfig(json.load(config))
