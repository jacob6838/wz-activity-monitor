from typing import Union
from keycloak import KeycloakOpenID
from loguru import logger


class KeycloakProvider:
    def __init__(
        self,
        KEYCLOAK_ENDPOINT,
        KEYCLOAK_REALM,
        KEYCLOAK_CLIENT_NAME,
        KEYCLOAK_CLIENT_SECRET,
    ):
        self.keycloak_client = KeycloakOpenID(
            server_url=KEYCLOAK_ENDPOINT,
            realm_name=KEYCLOAK_REALM,
            client_id=KEYCLOAK_CLIENT_NAME,
            client_secret_key=KEYCLOAK_CLIENT_SECRET,
        )

    def get_well_known(self):
        try:
            return self.keycloak_client.well_known()
        except:
            return None

    def get_access_token(self, username: str, password: str):
        try:
            return self.keycloak_client.token(username, password)
        except:
            return None

    def refresh_token(self, refresh_token: str):
        try:
            return self.keycloak_client.refresh_token(refresh_token)
        except:
            return None

    def get_user_info(self, token):
        try:
            return self.keycloak_client.userinfo(token)
        except Exception as e:
            logger.error("Error in get_user_info: " + str(e))
            return False

    def validate_token(self, token):
        if not self.get_user_info(token):
            return False
        return True