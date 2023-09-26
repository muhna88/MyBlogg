@extends('dashboard.layout')

@section('konten')
<div class="pb-3"><a href="{{ route('halaman.index') }}" class="btn btn-secondary">
  << Back</a>
</div>
<form action="{{ route('halaman.store') }}" method="POST">
  @csrf
  <div class="mb-3">
    <label for="judul" class="form-label">Judul</label>
    <input type="text"
      class="form-control form-control-sm" name="judul" id="judul" aria-describedby="helpId"
       placeholder="judul" value="{{ Session::get('judul') }}">
  </div>
  <div class="mb-3">
    <label for="Isi" class="form-label">Isi</label>
    <textarea class="form-control summernote" rows="5" name="isi">{{ Session::get('judul') }}</textarea>
  </div>
  <button class="btn btn-primary" name="simpan" type="submit">Save</button>
</form>
@endsection
