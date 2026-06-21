create table if not exists public.profiles (
  id text primary key,
  name text not null,
  color text not null default '#b026ff',
  avatar text not null default '',
  updated_at timestamptz not null default now()
);

alter table public.profiles enable row level security;

drop policy if exists "profiles_select_all" on public.profiles;
create policy "profiles_select_all"
on public.profiles
for select
to anon
using (true);

drop policy if exists "profiles_insert_all" on public.profiles;
create policy "profiles_insert_all"
on public.profiles
for insert
to anon
with check (true);

drop policy if exists "profiles_update_all" on public.profiles;
create policy "profiles_update_all"
on public.profiles
for update
to anon
using (true)
with check (true);
