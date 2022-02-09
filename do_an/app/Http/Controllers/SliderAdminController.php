<?php

namespace App\Http\Controllers;

use App\Http\Requests\SliderAddRequest;
use App\Models\Slider;
use App\Traits\StorageImageTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class SliderAdminController extends Controller
{
    use StorageImageTrait;
    private $slider;
    public function __construct(Slider $slider)
    {
        $this->slider = $slider;
    }

    public function index(){
        $sliders = $this->slider->latest()->paginate(5);
        return view('admin.sliders.index', compact('sliders'));
    }
    public function  create(){
        return view ('admin.sliders.add');
    }
    public function store(SliderAddRequest $request){
        try {
            $dataInsert = [
                'name' => $request->name,
                'description' => $request->description,

            ];
            $dataImageSlider = $this->storageTraitUpload($request, 'image_path', 'slider');
            if(!empty($dataImageSlider)){
                $dataInsert['image_name'] =$dataImageSlider['file_name'];
                $dataInsert['image_path'] =$dataImageSlider['file_path'];
            }
            $this->slider->create($dataInsert);
            return redirect()->route('slider.index');
        } catch (\Exception $exception){

            Log::error('Lỗi : '.$exception->getMessage(). '--line : '. $exception->getFile() );
        }

    }
    public function edit($id){
        $slider = $this->slider->find($id);
        return view('admin.sliders.edit', compact('slider'));
    }
    public function update(Request $request, $id){
        try {
            $dataUpdate = [
                'name' => $request->name,
                'description' => $request->description,

            ];
            $dataImageSlider = $this->storageTraitUpload($request, 'image_path', 'slider');
            if(!empty($dataImageSlider)){
                $dataUpdate['image_name'] =$dataImageSlider['file_name'];
                $dataUpdate['image_path'] =$dataImageSlider['file_path'];
            }
            $this->slider->find($id)->update($dataUpdate);
            return redirect()->route('slider.index');
        } catch (\Exception $exception){

            Log::error('Lỗi : '.$exception->getMessage(). '--line : '. $exception->getFile() );
        }

    }
    public function delete($id){
        try {
            $this->slider->find($id)->delete();
            return response()->json([
                'code' => 200,
                'message' => 'Delete succsess'
            ], 200);
        }catch (\Exception $exception){
            Log::error('Lỗi : '.$exception->getMessage(). '--line : '. $exception->getFile() );
            return response()->json([
               'code' => 500,
               'message' => 'Delete fail'
            ], 500);
        }
    }
}
