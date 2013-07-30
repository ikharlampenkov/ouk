<?php

/**
 * class TM_User_AttributeMapper
 *
 */
class TM_User_AttributeMapper extends TM_Attribute_AttributeMapper
{

    public function __construct()
    {
        parent::__construct();
    }

    /**
     *
     *
     * @param TM_Attribute_Attribute $attribute
     *
     * @throws Exception
     * @return void
     * @access public
     */
    public function insertToDb(TM_Attribute_Attribute $attribute)
    {
        try {
            if (!empty($attribute->value)) {
                $isFill = 1;
            } else {
                $isFill = 0;
            }

            $sql = 'INSERT INTO tm_user_attribute(user_id, attribute_key, type_id, attribute_value, is_fill)
                    VALUES (:user_id, :attribute_key, :type_id, :attribute_value, :is_fill)';
            $this->_db->query($sql, array('user_id' => $attribute->task->getId(), 'attribute_key' => $attribute->attribyteKey, 'type_id' => $attribute->type->getId(), 'attribute_value' => $attribute->value, 'is_fill' => $isFill));
        } catch (Exception $e) {
            throw new Exception($e->getMessage());
        }
    } // end of member function insertToDb

    /**
     *
     * @param $attribute
     * @return void
     * @access public
     */
    public function updateToDb($attribute)
    {
        try {
            if (!empty($attribute->value)) {
                $isFill = 1;
            } else {
                $isFill = 1;
            }

            $sql = 'UPDATE tm_user_attribute
                    SET type_id=:type_id, attribute_value=:attribute_value, is_fill=:is_fill
                    WHERE user_id=:user_id AND attribute_key=:attribute_key';
            $this->_db->query($sql, array('user_id' => $attribute->task->getId(), 'attribute_key' => $attribute->attribyteKey, 'type_id' => $attribute->type->getId(), 'attribute_value' => $attribute->value, 'is_fill' => $isFill));
        } catch (Exception $e) {
            throw new Exception($e->getMessage());
        }
    } // end of member function updateToDb

    /**
     *
     * @param $attribute
     * @return void
     * @access public
     */
    public function deleteFromDb($attribute)
    {
        try {
            $sql = 'DELETE FROM tm_user_attribute
                    WHERE user_id=:user_id AND attribute_key=:attribute_key';
            $this->_db->query($sql, array('user_id' => $attribute->task->getId(), 'attribute_key' => $attribute->attribyteKey));
        } catch (Exception $e) {
            throw new Exception($e->getMessage());
        }
    } // end of member function deleteFromDb

    /**
     *
     *
     * @param $object
     * @param string $key
     *
     * @return Attribute::TM_Attribute_Attribute
     * @static
     * @access public
     */
    public function getInstanceByKey($object, $key)
    {
        try {
            $db = Zend_Registry::get('db');
            $sql = 'SELECT * FROM tm_user_attribute WHERE user_id=:user_id AND attribute_key=:attribute_key';
            $result = $db->query($sql, array('user_id' => $object->getId(), 'attribute_key' => $key))->fetchAll();

            if (isset($result[0])) {
                $o = new TM_Attribute_Attribute($object, $this);
                $o->fillFromArray($result[0]);
                return $o;
            } else {
                return false;
            }
        } catch (Exception $e) {
            throw new Exception($e->getMessage());
        }
    } // end of member function getInstanceByKey

    /**
     *
     *
     * @param $object

     * @return array
     * @static
     * @access public
     */
    public function getAllInstance($object)
    {
        try {
            $db = Zend_Registry::get('db');
            $sql = 'SELECT * FROM tm_user_attribute WHERE user_id=:user_id';
            $result = $db->query($sql, array('user_id' => $object->getId()))->fetchAll();

            if (isset($result[0])) {
                $retArray = array();
                foreach ($result as $res) {
                    $retArray[] = TM_Attribute_Attribute::getInstanceByArray($this, $object, $res);
                }
                return $retArray;
            } else {
                return false;
            }
        } catch (Exception $e) {
            throw new Exception($e->getMessage());
        }
    } // end of member function getAllInstance


    /**
     *
     * @param TM_User_User $object
     * @param array $values
     *
     * @return TM_Attribute_Attribute
     * @access public
     */
    public function getInstanceByArray($object, $values)
    {
        try {
            $o = new TM_Attribute_Attribute($this, $object);
            $o->fillFromArray($values);
            return $o;
        } catch (Exception $e) {
            throw new Exception($e->getMessage());
        }
    }
} // end of TM_User_AttributeMapper
?>
