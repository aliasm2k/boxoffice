## Boxoffice

### Introduction
Boxoffice generates a webpage displaying details of movies given by the user.
Details displayed on the webpage includes movie title, poster, summary and
release date.

### Installation
To install Boxoffice, a Python environment is required. Also, using a virtual
environment is highly recommended. Once the environment is setup, execute the
following commands from your terminal to install Boxoffice.

    git clone https://github.com/aliasm2k/boxoffice.git .
    pip install -r requirements.txt

If Git is not installed on your system, or if you prefer to use archive, you
can execute the following commands from your terminal to download and extract
the archive into your environment.

    wget https://github.com/aliasm2k/boxoffice/archive/master.zip
    unzip master.zip

Then execute this command to install dependencies required by Boxoffice in your
environment.

    pip install -r requirements.txt

### Usage
Using Boxoffice is simple. Execute the following command from your terminal to
execute the Boxoffice script.

    python boxoffice.py

Simply executing the Boxoffice script as mentioned above displays details of a
default set of movies. Execute the following command to display details of your
favorite movies.

    python boxoffice.py --movies='MOVIES'

Where `'MOVIES'` is a comma separated list of movies like `'frozen, iron man3'`
Execute the following command from your terminal to try it out yourself.

    python boxoffice.py --movies='suicide squad,wonder woman,justice league'

### License
Copyright (c) 2017 Karthik Narendran

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
