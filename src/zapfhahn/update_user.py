import os

from database.usermanager import UserManager

from utils.log import get_logger

log = get_logger(os.path.basename(__file__), level="DEBUG")

mgr = UserManager()
mgr.update_user_interactive()
