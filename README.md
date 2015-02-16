# Docker for celery task queue

How to:

    git clone https://github.com/jduckles/celery-worker-docker
    cd celery-worker-docker
    # Edit celeryconfig.py to suit your config needs
    docker build . -t 'celery-worker'
    # place python tasks in ./tasks
    docker run -t -i -v /Users/username/git/celery-worker-docker/tasks/:/opt/celeryd/tasks celery-worker
