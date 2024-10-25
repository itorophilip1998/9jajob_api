<?php
namespace App\Http\services;

use Illuminate\Support\Facades\Storage;

// use Intervention\Image\ImageManager;

class Upload
{
    public function image($item,$url)
    {
        $main_file_ext = $item->extension();
        $main_mime_type = $item->getMimeType();
        $rand_value = md5(mt_rand(11111111, 99999999));
        $imageName = $rand_value . '.' . $main_file_ext;
        // Upload to DigitalOcean Spaces
        Storage::disk('do_spaces')->put($url . $imageName, file_get_contents($item), 'public');
        return $imageName;
    }
    public function document($item,$url)
    {
        $main_file_ext = $item->extension();
        $main_mime_type = $item->getMimeType();
        $rand_value = md5(mt_rand(11111111, 99999999));
        $docName = $rand_value . '.' . $main_file_ext;
        // Upload to DigitalOcean Spaces
        Storage::disk('do_spaces')->put($url . $docName, file_get_contents($item), 'public');
        return $docName;
    }
    public function video($item,$url)
    {
        $main_file_ext = $item->extension();
        $main_mime_type = $item->getMimeType();
        $rand_value = md5(mt_rand(11111111, 99999999));
        $videoName = $rand_value . '.' . $main_file_ext;
        // Upload to DigitalOcean Spaces
        Storage::disk('do_spaces')->put($url . $videoName, file_get_contents($item), 'public');
        return $videoName;
    }

    public function unlinkFile($url)
    {
        // Extract the filename from the URL
        $filename = basename($url);

        // Delete the file from DigitalOcean Spaces
        Storage::disk('do_spaces')->delete($url);

        return "File '$filename' deleted successfully.";
    }

}

