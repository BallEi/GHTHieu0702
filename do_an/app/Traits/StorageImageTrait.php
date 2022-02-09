<?php
namespace App\Traits;


 use Illuminate\Http\Request;
 use Illuminate\Support\Facades\Storage;
 use Illuminate\Support\Str;

 trait StorageImageTrait{
     public function storageTraitUpload( $request, $fieldName, $foderName ){
         if ($request->hasFile($fieldName)) {
             $file = $request->$fieldName;
             $filenameOrigin = $file->getClientOriginalName();
             $filenameHash = str::random(20). '.' . $file->getClientOriginalExtension();
             $filepath = $request->file($fieldName)->storeAs('public/' . $foderName . '/' . auth()->id(), $filenameHash );
             $dataUploadTrait = [
                 'file_name' => $filenameOrigin,
                 'file_path' => Storage::url($filepath)
             ];
             return $dataUploadTrait;
         }
            return null;

     }

     public function storageTraitUploadMutiple( $file,  $foderName ){


             $filenameOrigin = $file->getClientOriginalName();
             $filenameHash = str::random(20). '.' . $file->getClientOriginalExtension();
             $filepath = $file->storeAs('public/' . $foderName . '/' . auth()->id(), $filenameHash );
             $dataUploadTrait = [
                 'file_name' => $filenameOrigin,
                 'file_path' => Storage::url($filepath)
             ];
             return $dataUploadTrait;



     }

 }
