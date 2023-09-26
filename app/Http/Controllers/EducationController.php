<?php

namespace App\Http\Controllers;

use App\Models\riwayat;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Http\Controllers\Controller;

class EducationController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = riwayat::where('tipe', 'education')->orderBy('tgl_akhir', 'desc')->get();
        return view('dashboard.education.index')->with('data', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.education.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Session::flash('judul', $request->judul);
        Session::flash('info1', $request->info1);
        Session::flash('info2', $request->info2);
        Session::flash('info3', $request->info3);
        Session::flash('tgl_mulai', $request->tgl_mulai);
        Session::flash('tgl_akhir', $request->tgl_akhir);

        $request->validate(
            [
                'judul' => 'required',
                'info1' => 'required',
                'info2' => 'required',
                'info3' => 'required',
                'tgl_mulai' => 'required',
            ],
            [
                'judul.required' => 'Universitas wajib diisi',
                'info1.required' => 'Nama Fakultas wajib diisi',
                'info2.required' => 'Nama Prodi wajib diisi',
                'info3.required' => 'IPK wajib diisi',
                'tgl_mulai.required' => 'Tanggal mulai wajib diisi',
            ]
        );

        $data = [
            'judul' => $request->judul,
            'info1' => $request->info1,
            'info2' => $request->info2,
            'info3' => $request->info3,
            'tipe' => 'education',
            'tgl_mulai' => $request->tgl_mulai,
            'tgl_akhir' => $request->tgl_akhir,
        ];
        riwayat::create($data);

        return redirect()->route('education.index')->with('success', 'Berhasil menambahkan data education');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = riwayat::where('id', $id)->where('tipe', 'education')->first();
        return view('dashboard.education.edit')->with('data', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        Session::flash('judul', $request->judul);
        Session::flash('info1', $request->info1);
        Session::flash('tgl_mulai', $request->tgl_mulai);
        Session::flash('tgl_akhir', $request->tgl_akhir);


        $request->validate(
            [
                'judul' => 'required',
                'info1' => 'required',
                'info2' => 'required',
                'info3' => 'required',
                'tgl_mulai' => 'required',
            ],
            [
                'judul.required' => 'Universitas wajib diisi',
                'info1.required' => 'Nama Fakultas wajib diisi',
                'info2.required' => 'Nama Prodi wajib diisi',
                'info3.required' => 'IPK wajib diisi',
                'tgl_mulai.required' => 'Tanggal mulai wajib diisi',

            ]
        );

        $data = [
            'judul' => $request->judul,
            'info1' => $request->info1,
            'info2' => $request->info2,
            'info3' => $request->info3,
            'tipe' => 'education',
            'tgl_mulai' => $request->tgl_mulai,
            'tgl_akhir' => $request->tgl_akhir,

        ];
        riwayat::where('id', $id)->where('tipe', 'education')->update($data);

        return redirect()->route('education.index')->with('success', 'Berhasil melakukan update 
        data education');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        riwayat::where('id', $id)->where('tipe', 'education')->delete();
        return redirect()->route('education.index')->with('success', 'Berhasil delete data');
    }
}
