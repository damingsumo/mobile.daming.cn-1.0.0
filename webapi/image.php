<?php
class WebApi_Image extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    
    public function getImagesByParams($params, $page = 1, $pageSize = -1) {
        if(!is_array($params)) {
            return array();
        }
        return CoreApi_Image::instance()->getImagesByParams($params, $page, $pageSize);
    }
    
    
    public function getImagesCountByParams($params) {
        if(!is_array($params)) {
            return false;
        }
        return CoreApi_Image::instance()->getImagesCountByParams($params);
    }
    
    public function add($data) {
        $params = array();
        $params['uid'] = isset($data['uid']) ? $data['uid'] : 0;
        $params['face_id'] = isset($data['face_id']) ? $data['face_id'] : 0;
        $params['complexion_id'] = isset($data['complexion_id']) ? $data['complexion_id'] : 0;
        $params['hair_color_id'] = isset($data['hair_color_id']) ? $data['hair_color_id'] : 0;
        $params['hair_style_id'] = isset($data['hair_style_id']) ? $data['hair_style_id'] : 0;
        $params['create_time'] = date('Y-m-d H:i:s');
        $params['update_time'] = date('Y-m-d H:i:s');
        return CoreApi_Image::instance()->insert($params);
    }
    
    
    public function update($data, $imageId) {
        $params = array();
        $params['hair_color_id'] = isset($data['hair_color_id']) ? $data['hair_color_id'] : 0;
        $params['hair_style_id'] = isset($data['hair_style_id']) ? $data['hair_style_id'] : 0;
        $params['update_time'] = date('Y-m-d H:i:s');
        return CoreApi_Image::instance()->update($params, $imageId);
    }
}