<?php
class Controller_Brand extends Controller_Base {
    public function actionList() {
        $params = array();
        $total = WebApi_Brand::instance()->getBrandsCountByParams($params);
        $brands = array();
        if($total > 0 ) {
            $brands = WebApi_Brand::instance()->getBrandsByParams($params);
        }
        $params['brands'] = $brands;
        foreach ($brands as &$brand) {
            $brand['picture_url'] = MGR_DOMIAN.$brand['picture_url'];
        }
        $params['total'] = $total;
        return $this->display('list', $params);
    }
}