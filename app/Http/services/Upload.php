<?php
namespace App\Http\services;

use Intervention\Image\ImageManager;

class Upload
{
    public function image($item,$url)
    {
        $main_file_ext = $item->extension();
        $main_mime_type = $item->getMimeType();
        $rand_value = md5(mt_rand(11111111, 99999999));
        $imageName = $rand_value . '.' . $main_file_ext;
        $item->move(public_path($url), $final_photo_name); 
        return $imageName;
    }

}