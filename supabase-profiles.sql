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

create table if not exists public.news (
  id text primary key,
  title text not null,
  body text not null default '',
  image text not null default '',
  created_at timestamptz not null default now()
);

alter table public.news enable row level security;

drop policy if exists "news_select_all" on public.news;
create policy "news_select_all"
on public.news
for select
to anon
using (true);

drop policy if exists "news_insert_all" on public.news;
create policy "news_insert_all"
on public.news
for insert
to anon
with check (true);

drop policy if exists "news_update_all" on public.news;
create policy "news_update_all"
on public.news
for update
to anon
using (true)
with check (true);

drop policy if exists "news_delete_all" on public.news;
create policy "news_delete_all"
on public.news
for delete
to anon
using (true);

create table if not exists public.analyses (
  id text primary key,
  title text not null,
  body text not null default '',
  image text not null default '',
  created_at timestamptz not null default now()
);

alter table public.analyses enable row level security;

drop policy if exists "analyses_select_all" on public.analyses;
create policy "analyses_select_all"
on public.analyses
for select
to anon
using (true);

drop policy if exists "analyses_insert_all" on public.analyses;
create policy "analyses_insert_all"
on public.analyses
for insert
to anon
with check (true);

drop policy if exists "analyses_update_all" on public.analyses;
create policy "analyses_update_all"
on public.analyses
for update
to anon
using (true)
with check (true);

drop policy if exists "analyses_delete_all" on public.analyses;
create policy "analyses_delete_all"
on public.analyses
for delete
to anon
using (true);
