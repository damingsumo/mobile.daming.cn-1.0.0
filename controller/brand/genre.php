<?php
class Controller_Brand_Genre extends Controller_Base {
    /**
     * 首页
     */
    public function actionList() {
        $brandId = isset($_GET['brand_id']) ? $_GET['brand_id'] : 0;
        $params = array();
        $params['brand_id'] = $brandId;
        $Relevances = array();
        $Relevances = WebApi_Brand_Genre_Relevance::instance()->getRelevancesByParams($params);
        $data = array();
        foreach ($Relevances as $k => &$v) {
            $v['genre'] = WebApi_Genre::instance()->row('*',$v['genre_id']);
            $data[$v['genre']['category']][] = $v;
        }
        $parmas['genres'] = $data;
        $parmas['brandId'] = $brandId;
        return $this->display('list',$parmas);
    }
}