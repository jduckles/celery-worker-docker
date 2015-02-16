BROKER_URL= "pyamqp://user:pass@host:5672/vhost"

CELERY_SEND_EVENTS = True

CELERY_TASK_RESULT_EXPIRES = True

CELERY_RESULT_BACKEND = "mongodb"

CELERY_MONGODB_BACKEND_SETTINGS = {
    "host": "localhost",
    "database": "database",
    "taskmeta_collection": "collection"
}

CELERY_IMPORTS = ("tasks")
