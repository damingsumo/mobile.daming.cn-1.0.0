<?php
class WebApi_Bodycomputing extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    private static $height = 164;
    private static $weight = 53;
    private static $chestCircumference = 3;
    private static $cupSize = 2;
    private static $europeChestCircumference = 3;
    private static $waist = 3;
    private static $belly = 3;
    private static $sternType = 3;
    private static $hipType = 3;
    private static $shoulder = 3;
    private static $arm = 3;
    private static $armCircumference = 3;
    private static $hip = 3;
    private static $thigh = 3;
    private static $leg = 3;
    private static $bodyThick = 3;
    private static $bodyLength = 3;
    
    
    
    public function computing($params) {
        if(empty($params)) {
            return array();
        }
        $height = isset($params['height']) ? $params['height'] : 164;
        $weight = isset($params['weight']) ? $params['weight'] : 53;
        $chestCircumference = isset($params['chestCircumference']) ? $params['chestCircumference'] : 0;
        $cupSize = isset($params['middleCupSize']) ? $params['middleCupSize'] : 2;
        $europeChestCircumference = isset($params['europeChestCircumference']) ? $params['europeChestCircumference'] : 0;
        $chestCircumferenceType = isset($params['chest_circumference_type']) ? $params['chest_circumference_type'] : 0;
        
        $waist = isset($params['waist']) ? $params['waist'] : 3;
        $belly = isset($params['belly']) ? $params['belly'] : 3;
        $sternType = isset($params['stern_type']) ? $params['stern_type'] : 3;
        $hipType = isset($params['hip_type']) ? $params['hip_type'] : 3;
        $shoulder = isset($params['shoulder']) ? $params['shoulder'] : 3;
        $arm = isset($params['arm']) ? $params['arm'] : 3;
        $armCircumference = isset($params['arm_circumference']) ? $params['arm_circumference'] : 3;
        $hip = isset($params['hip']) ? $params['hip'] : 3;
        $thigh = isset($params['thigh']) ? $params['thigh'] : 3;
        $leg = isset($params['leg']) ? $params['leg'] : 3;
        $bodyThick = isset($params['body_thick']) ? $params['body_thick'] : 3;
        $bodyLength = isset($params['body_length']) ? $params['body_length'] : 3;
        if($chestCircumferenceType == 2) {
            $chestCircumference = $europeChestCircumference;
        }
        
        
        $data = array();
        //臀围
        $data['hipline'] = round(90+($height-self::$height)*(-8/37)+($weight-self::$weight)*(32/55)+($sternType-self::$sternType)*(2/5)+($hipType-self::$hipType)*(2/5)+($armCircumference-self::$armCircumference)*(-2/5)+($hip-self::$hip)*(4/5)+($thigh-self::$thigh)*(2/5)+($leg-self::$leg)*(-2/5)+($bodyThick-self::$bodyThick)*(2/5));
        //上胸围
        $data['upper_chest_circumference'] = round(84+($height-self::$height)*(-4/37)+($weight-self::$weight)*(32/55)+($chestCircumference-self::$chestCircumference)*(5/9)+($cupSize-self::$cupSize)*(5/6)+($waist-self::$waist)*(2/5)+($belly-self::$belly)*(1/5)+($sternType-self::$sternType)*(-1/5)+($hipType-self::$hipType)*(-2/5)+($shoulder-self::$shoulder)*(-1/5)+($armCircumference-self::$armCircumference)*(3/5)+($hip-self::$hip)*(1/5)+($thigh-self::$thigh)*(-1/5)+($bodyThick-self::$bodyThick)*(-4/5)+($bodyLength-self::$bodyLength)*(-1/5));
        //下胸围
        $data['lower_chest_circumference'] = round(74+($height-self::$height)*(-3/37)+($weight-self::$weight)*(33/55)+($chestCircumference-self::$chestCircumference)*(1/3)+($cupSize-self::$cupSize)*(-1/6)+($waist-self::$waist)*(-3/5)+($belly-self::$belly)*(-3/5)+($hipType-self::$hipType)*(-4/5)+($shoulder-self::$shoulder)*(-1/5)+($arm-self::$arm)*(1/5)+($armCircumference-self::$armCircumference)*(-1/5)+($thigh-self::$thigh)*(2/5)+($leg-self::$leg)*(-1/5)+($bodyThick-self::$bodyThick)*(-4/5)+($bodyLength-self::$bodyLength)*(-2/5));
        //腰围
        $data['kummerbund'] = round(69+($height-self::$height)*(-7/37)+($weight-self::$weight)*(42/55)+($waist-self::$waist)*(-6/5)+($belly-self::$belly)*(2/5)+($sternType-self::$sternType)*(-2/5)+($hipType-self::$hipType)*(-4/5)+($armCircumference-self::$armCircumference)*(-2/5)+($hip-self::$hip)*(2/5)+($thigh-self::$thigh)*(2/5)+($leg-self::$leg)*(-3/5)+($bodyThick-self::$bodyThick)*(-2/5));
        //臂围
        $data['arm_circumference'] = round(27+($height-self::$height)*(-3/37)+($weight-self::$weight)*(13/55)+($armCircumference-self::$armCircumference)*(4/5));
        //臂长
        $data['arm_length'] = round(52+($height-self::$height)*(11/37)+($weight-self::$weight)*(1/55)+($arm-self::$arm)*(4/5));
        //肩宽
        $data['s_width'] = round(38+($height-self::$height)*(-1/37)+($weight-self::$weight)*(4/55)+($waist-self::$waist)*(1/5)+($sternType-self::$sternType)*(1/5)+($shoulder-self::$shoulder)*(4/5)+($armCircumference-self::$armCircumference)*(-1/5)+($bodyThick-self::$bodyThick)*(-1/5));
        //大腿围
        $data['thigh_girth'] = round(53+($height-self::$height)*(-6/37)+($weight-self::$weight)*(24/55)+($belly-self::$belly)*(-1/5)+($sternType-self::$sternType)*(1/5)+($hipType-self::$hipType)*(1/5)+($shoulder-self::$shoulder)*(-1/5)+($armCircumference-self::$armCircumference)*(1/5)+($hip-self::$hip)*(1/5)+($thigh-self::$thigh)*(3/5)+($leg+self::$leg)*(-1/5)+($bodyThick-self::$bodyThick)*(3/5)+($bodyLength-self::$bodyLength)*(1/5));
        //小腿围
        $data['calf_girth'] = round(34+($height-self::$height)*(-3/37)+($weight-self::$weight)*(12/55)+($waist-self::$waist)*(1/5)+($belly-self::$belly)*(-1/5)+($shoulder-self::$shoulder)*(1/5)+($hip-self::$hip)*(-1/5)+($thigh-self::$thigh)*(-1/5)+($leg+self::$leg)*1+($bodyThick-self::$bodyThick)*(1/5)+($bodyLength-self::$bodyLength)*(1/5));
        //腿长
        $data['long_legs'] = round(86+($height-self::$height)*(20/37)+($weight-self::$weight)*(2/55)+($waist-self::$waist)*(-1/5)+($belly-self::$belly)*(1/5)+($sternType-self::$sternType)*(-1/5)+($hipType-self::$hipType)*(1/5)+($shoulder-self::$shoulder)*(-1/5)+($arm-self::$arm)*(1/5)+($armCircumference-self::$armCircumference)*(1/5)+($hip-self::$hip)*(-1/5)+($thigh-self::$thigh)*(1/5)+($leg-self::$leg)*(-1/5)+($bodyThick-self::$bodyThick)*(1/5)+($bodyLength-self::$bodyLength)*1);
        //身长
        $data['body_length'] = round($height*0.282);
        return $data;
    }
    
}