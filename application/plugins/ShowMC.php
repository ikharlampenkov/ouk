<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Moris
 * Date: 16.12.11
 * Time: 22:07
 * To change this template use File | Settings | File Templates.
 */
class ShowMC extends Zend_Controller_Plugin_Abstract
{
    public function postDispatch(Zend_Controller_Request_Abstract $request)
    {
        $view = Zend_Controller_Front::getInstance()->getParam('bootstrap')->getResource('View');
        $link = SM_Menu_Item::getInstanceByLink('ree_uk');

        $registerList = array();
        $cityList = SM_Module_City::getAllInstance();

        foreach ($cityList as $city) {
            $registerList[$city->code] = SM_Module_Register::getAllInstance($link, $city);
        }

        $view->assign('cityMapList', $cityList);
        $view->assign('mcMapList', $registerList);


    }

}
