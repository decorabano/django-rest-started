REST_FRAMEWORK = {
    'DEFAULT_RENDERER_CLASSES': (
        'rest_framework.renderers.JSONRenderer',
    ),

    'DEFAULT_AUTHENTICATION_CLASSES': (
        'core.authentication.JWTCustomAuthentication',
    )
}

API_CURRENT_VERSION = 1

PAGE_SIZE = 30
