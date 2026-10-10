-- Jalankan di Supabase Dashboard > SQL Editor.
-- Tabel hanya bisa diakses oleh pemilik akun yang sedang login.
create table if not exists public.ruang_fit_data (
  user_id uuid primary key references auth.users(id) on delete cascade,
  payload jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.ruang_fit_data enable row level security;
grant select, insert, update on public.ruang_fit_data to authenticated;
drop policy if exists "Users can read own Ruang Fit data" on public.ruang_fit_data;
drop policy if exists "Users can insert own Ruang Fit data" on public.ruang_fit_data;
drop policy if exists "Users can update own Ruang Fit data" on public.ruang_fit_data;
create policy "Users can read own Ruang Fit data" on public.ruang_fit_data for select to authenticated using (auth.uid() = user_id);
create policy "Users can insert own Ruang Fit data" on public.ruang_fit_data for insert to authenticated with check (auth.uid() = user_id);
create policy "Users can update own Ruang Fit data" on public.ruang_fit_data for update to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);
