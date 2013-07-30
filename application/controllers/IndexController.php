<?php

class IndexController extends Zend_Controller_Action
{
    /**
     * @var SM_Menu_Item
     */
    protected $_link;

    public function init()
    {
        /*
        $this->_link = SM_Menu_Item::getInstanceByLink('main_page');
        $this->view->assign('link', $this->_link->getLink());

        $this->view->assign('linkInfo', $this->_link);
        $this->view->assign('pathway', $this->_link->getPathWay());
        */
    }

    public function indexAction()
    {

        $oContentPage = SM_Module_ContentPage::getInstanceByTitle('main_page');

        if ($this->getRequest()->isPost()) {
            $data = $this->getRequest()->getParam('data');
            $oContentPage->setContent($data['content']);

            try {
                $oContentPage->updateToDb();
                $this->redirect('/');
            } catch (Exception $e) {
                $this->view->assign('exception_msg', $e->getMessage());
            }
        }

        $this->view->assign('contentPage', $oContentPage);


        $partnersList = SM_Module_Partners::getAllInstance(SM_Menu_Item::getInstanceByLink('pane'));
        $this->view->assign('partnersList', $partnersList);

        $this->view->assign('newsMainList', SM_Module_News::getAllInstance(SM_Menu_Item::getInstanceByLink('news')));

        $this->view->assign('newsMainMonitorList', SM_Module_News::getAllInstance(SM_Menu_Item::getInstanceByLink('smi')));

        /*
        $linkInfo = SM_Menu_Item::getInstanceById(53);
        $this->view->assign('newsList', SM_Module_News::getTopNewsInstance($linkInfo));
        $this->view->linkInfoNews = $linkInfo;

        $documentList = SM_Module_Document::getTopDocument(SM_Menu_Item::getInstanceByLink('nomaivnopavove_ak'));
        $this->view->assign('documentList', $documentList);
        */
    }


}

