@extends('dashboard.layout')

@section('konten')
<div class="pb-3"><a href="{{ route('education.index') }}" class="btn btn-secondary">
  << Back</a>
</div>
<form action="{{ route('education.store') }}" method="POST">
  @csrf
  <div class="mb-3">
    <label for="judul" class="form-label">Universitas / sekolah</label>
    <input type="text"
      class="form-control form-control-sm" name="judul" id="judul" aria-describedby="helpId"
       placeholder="Universitas / sekolah" value="{{ Session::get('judul') }}">
  </div>
  <div class="mb-3">
    <label for="info1" class="form-label">Nama Fakultas / jurusan</label>
    <input type="text"
      class="form-control form-control-sm" name="info1" id="info1" aria-describedby="helpId"
       placeholder="Nama Fakultas / jurusan" value="{{ Session::get('info1') }}">
  </div>
  <div class="mb-3">
    <label for="info2" class="form-label">Nama Prodi / jurusan</label>
    <input type="text"
      class="form-control form-control-sm" name="info2" id="info2" aria-describedby="helpId"
       placeholder="Nama Prodi / jurusan" value="{{ Session::get('info2') }}">
  </div>
  <div class="mb-3">
    <label for="info3" class="form-label">IPK / NILAI AKHIR</label>
    <input type="text"
      class="form-control form-control-sm" name="info3" id="info3" aria-describedby="helpId"
       placeholder="IPK / NILAI AKHIR" value="{{ Session::get('info3') }}">
  </div>
  <div class="mb-3">
  <div class="row">
    <div class="col-auto">Tangal Mulai</div>
    <div class="col-auto"><input type="date" class="form-control
      form-control-sm" name="tgl_mulai" placeholder="dd/mm/yyy"
      value="{{ Session::get('tgl_mulai') }}"></div>
      
    <div class="col-auto">Tangal Akhir</div>
    <div class="col-auto"><input type="date" class="form-control
      form-control-sm" name="tgl_akhir" placeholder="dd/mm/yyy"
      value="{{ Session::get('tgl_akhir') }}"></div>
  </div>
  </div>
  <button class="btn btn-primary" name="simpan" type="submit">Save</button>
</form>
@endsection
