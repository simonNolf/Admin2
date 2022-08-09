#!/bin/bash
export $(egrep  -v '^#'  /run/secrets/database_root_password | xargs)
export $(egrep  -v '^#'  /run/secrets/database_website_password | xargs)
