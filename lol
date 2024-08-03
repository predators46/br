# The default queries are case insensitive. (for compatibility with
# older versions of FreeRADIUS)
authorize_check_query = “SELECT id, username, attribute, value, op \
FROM ${authcheck_table} \
WHERE BINARY(username) = ‘%{SQL-User-Name}’ \
ORDER BY id”
authorize_reply_query = “SELECT id, username, attribute, value, op \
FROM ${authreply_table} \
WHERE BINARY(username) = ‘%{SQL-User-Name}’ \
ORDER BY id”

# Use these for case sensitive usernames.
#    group_membership_query = “SELECT groupname \
#         FROM ${usergroup_table} \
#         WHERE username = BINARY ‘%{SQL-User-Name}’ \
#         ORDER BY priority”

group_membership_query = “SELECT groupname \
FROM ${usergroup_table} \
WHERE BINARY(username) = ‘%{SQL-User-Name}’ \
ORDER BY priority”
