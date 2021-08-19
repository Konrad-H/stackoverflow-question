# "Problem loading Page" Flask App using docker

Repository for Stack Overflow Question

Hi,

I am trying to run a flask app using a docker. 
Operating system Windows 11, WSL image Ubuntu-20.04.
A simple reproducible example:
https://github.com/Konrad-H/stackoverflow-question

If I run (inside a venv) 

    $ python app/main.py

the following message appears in the console:

    Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)

And I can successfully connect to the app.

On the other hand, if I try to run the repo using:

    $ docker build -t s-o-question:latest .
    $ docker run -p 5000:5000 s-o-question

I get the exact same message on the console, but the webpage takes a long time loading and after a while a [connection timeout][1] appears.


  [1]: https://i.stack.imgur.com/qkFlD.png