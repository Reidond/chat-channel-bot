from embedchain import App
from functools import wraps, partial
from awaits.awaitable import awaitable


@awaitable
def aadd(app: App, type: str, value: str):
    app.add(type, value)


@awaitable
def aadd_local(app: App, type: str, value: str):
    app.add_local(type, value)


@awaitable
def aquery(app: App, query: str):
    return app.query(query)
