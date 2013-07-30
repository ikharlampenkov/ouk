<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Moris
 * Date: 30.05.13
 * Time: 23:11
 * To change this template use File | Settings | File Templates.
 */

class RegisterController extends Zend_Controller_Action
{
    /**
     * @var SM_Menu_Item
     */
    protected $_link;

    /**
     * @var SM_Module_City|null
     */
    protected $_city = null;

    public function init()
    {
        $this->_link = SM_Menu_Item::getInstanceByLink($this->getRequest()->getParam('link', 'ree_uk'));
        $this->view->assign('link', $this->_link->getLink());
        $this->view->assign('linkInfo', $this->_link);
        $this->view->assign('pathway', $this->_link->getPathWay());

        $cityId = $this->getRequest()->getParam('cityId', '');
        if ($cityId != '' && $cityId != 0) {
            $this->_city = SM_Module_City::getInstanceById($cityId);
        }

        $this->view->assign('city', $this->_city);

        /* Initialize action controller here */
    }

    public function indexAction()
    {
        $this->view->assign('registerList', SM_Module_Register::getAllInstance($this->_link, $this->_city));
        $this->view->assign('cityList', SM_Module_City::getAllInstance());
    }

    public function addAction()
    {
        $oRegister = new SM_Module_Register();

        if ($this->getRequest()->isPost()) {
            $data = $this->getRequest()->getParam('data');
            $oRegister->setLink($this->_link);
            $oRegister->setTitle($data['title']);
            $oRegister->setOgrn($data['ogrn']);
            $oRegister->setRegisteredAddress($data['registeredAddress']);
            $oRegister->setPostalAddress($data['postalAddress']);
            $oRegister->setPhone($data['phone']);
            $oRegister->setSite($data['site']);
            $oRegister->setDirector($data['director']);

            if ($data['city'] != 'null') {
                $oRegister->setCity(SM_Module_City::getInstanceById($data['city']));
            } else {
                $oRegister->setCity(null);
            }

            try {
                $oRegister->insertToDb();
                if ($this->_city != null) {
                    $this->redirect('/register/index/link/' . $this->_link->getLink() . '/cityId/' . $this->_city->getId());
                } else {
                    $this->redirect('/register/index/link/' . $this->_link->getLink());
                }
            } catch (Exception $e) {
                $this->view->assign('exception_msg', $e->getMessage());
            }

        }

        $this->view->assign('register', $oRegister);
        $this->view->assign('cityList', SM_Module_City::getAllInstance());
    }

    public function editAction()
    {
        $oRegister = SM_Module_Register::getInstanceById($this->getRequest()->getParam('id'));

        if ($this->getRequest()->isPost()) {
            $data = $this->getRequest()->getParam('data');
            $oRegister->setLink($this->_link);
            $oRegister->setTitle($data['title']);
            $oRegister->setOgrn($data['ogrn']);
            $oRegister->setRegisteredAddress($data['registeredAddress']);
            $oRegister->setPostalAddress($data['postalAddress']);
            $oRegister->setPhone($data['phone']);
            $oRegister->setSite($data['site']);
            $oRegister->setDirector($data['director']);

            if ($data['city'] != 'null') {
                $oRegister->setCity(SM_Module_City::getInstanceById($data['city']));
            } else {
                $oRegister->setCity(null);
            }

            try {
                $oRegister->updateToDB();
                if ($this->_city != null) {
                    $this->redirect('/register/index/link/' . $this->_link->getLink() . '/cityId/' . $this->_city->getId());
                } else {
                    $this->redirect('/register/index/link/' . $this->_link->getLink());
                }
            } catch (Exception $e) {
                $this->view->assign('exception_msg', $e->getMessage());
            }

        }

        $this->view->assign('register', $oRegister);
        $this->view->assign('cityList', SM_Module_City::getAllInstance());
    }

    public function deleteAction()
    {
        $oRegister = SM_Module_Register::getInstanceById($this->getRequest()->getParam('id'));
        try {
            $oRegister->deleteFromDB();
            if ($this->_city != null) {
                $this->_redirect('/register/index/link/' . $this->_link->getLink() . '/cityId/' . $this->_city->getId());
            } else {
                $this->_redirect('/register/index/link/' . $this->_link->getLink());
            }
        } catch (Exception $e) {
            $this->view->assign('exception_msg', $e->getMessage());
        }
    }

    public function addCityAction()
    {
        $oCity = new SM_Module_City();

        if ($this->getRequest()->isPost()) {
            $data = $this->getRequest()->getParam('data');
            $oCity->setTitle($data['title']);
            $oCity->setCode($data['code']);

            try {
                $oCity->insertToDb();
                $this->_redirect('/register/index/link/' . $this->_link->getLink());
            } catch (Exception $e) {
                $this->view->assign('exception_msg', $e->getMessage());
            }

        }

        $this->view->assign('city', $oCity);

    }

    public function editCityAction()
    {
        $oCity = SM_Module_City::getInstanceById($this->getRequest()->getParam('cityId'));

        if ($this->getRequest()->isPost()) {
            $data = $this->getRequest()->getParam('data');
            $oCity->setTitle($data['title']);
            $oCity->setCode($data['code']);

            try {
                $oCity->updateToDB();
                $this->_redirect('/register/index/link/' . $this->_link->getLink());
            } catch (Exception $e) {
                $this->view->assign('exception_msg', $e->getMessage());
            }

        }

        $this->view->assign('city', $oCity);
    }

    public function deleteCityAction()
    {
        $oCity = SM_Module_City::getInstanceById($this->getRequest()->getParam('cityId'));
        try {
            $oCity->deleteFromDB();
            $this->_redirect('/register/index/link/' . $this->_link->getLink());
        } catch (Exception $e) {
            $this->view->assign('exception_msg', $e->getMessage());
        }
    }
}