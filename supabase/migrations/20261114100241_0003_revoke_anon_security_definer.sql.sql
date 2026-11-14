/*
# Revoke anon from security definer helper functions

1. Security hardening
- `current_player_id()` — revoke EXECUTE from anon/public, grant to authenticated only.
  This function reads the players table using auth.uid(); anon callers have no uid and
  should not be able to invoke it.
- `has_role(uuid, app_role)` — revoke EXECUTE from anon/public, grant to authenticated only.
  Role checks must not be callable by unauthenticated clients.

2. No schema or data changes.
*/

REVOKE EXECUTE ON FUNCTION public.current_player_id() FROM PUBLIC, anon;
GRANT EXECUTE ON FUNCTION public.current_player_id() TO authenticated;

REVOKE EXECUTE ON FUNCTION public.has_role(uuid, public.app_role) FROM PUBLIC, anon;
GRANT EXECUTE ON FUNCTION public.has_role(uuid, public.app_role) TO authenticated;