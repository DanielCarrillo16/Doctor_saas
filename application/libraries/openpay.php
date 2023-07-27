<?php

namespace App\Libraries;

class Openpay {

    private $api_route;
    private $project_id;

    public function __construct() {
        
        //  API ROUTE
        $this->api_route = "https://yocontigo-it.com.mx/pasarelaYC/";

        // SHOW THE PROJECT ID
        $this->project_id = "1";

        require_once(APPPATH . "third_party/http_request2/HTTP/Request2.php");
    }

    function get_array_value($array, $key) {
        if (is_array($array) && array_key_exists($key, $array)) {
            return $array[$key];
        }
    }

    public function listener(){
        $data = file_get_contents("php://input");
        $event = json_decode($data);

        if(isset($event)){
            return $event;
        }
    }

    public function getUrl($data = array()){
        $request = new \HTTP_Request2();
        $request->setUrl($this->api_route.'charge/createChargeDirect');
        $request->setMethod(\HTTP_Request2::METHOD_POST);
        $request->setConfig(array(
        'follow_redirects' => TRUE
        ));
        $request->setHeader(array(
            'Content-Type' => 'application/x-www-form-urlencoded'
        ));

        $request->addPostParameter(array(
            'projectId' => $this->project_id,
            'clientName' => $this->get_array_value($data, "first_name"),
            'clientLastName' => $this->get_array_value($data, "last_name"),
            'clientPhone' => $this->get_array_value($data, "phone"),
            'clientEmail' => $this->get_array_value($data, "email"),
            'amount' => $this->get_array_value($data, "amount"),
            'description' => $this->get_array_value($data, "description"),
            'redirect_url' => 'http://www.openpay.mx/',
        ));
        try {
            $response = $request->send();
            if ($response->getStatus() == 200) {
                return json_decode($response->getBody());
            }
            else {
                return json_decode($response->getBody());
            }
        }
        catch(\HTTP_Request2_Exception $e) {
            return json_decode($e->getMessage());
        }
    }

    function save_card($data = array()){
        $request = new \HTTP_Request2();
        $request->setUrl($this->api_route.'card/create');
        $request->setMethod(\HTTP_Request2::METHOD_POST);
        $request->setConfig(array(
        'follow_redirects' => TRUE
        ));
        $request->setHeader(array(
            'Content-Type' => 'application/x-www-form-urlencoded'
        ));
        
        $request->addPostParameter(array(
            'customerId' => $this->get_array_value($data, "customer_id"),
            'projectId' => $this->project_id,
            'token_id' => $this->get_array_value($data, "token_id"),
            'deviceSession_id' => $this->get_array_value($data, "session_id"),
        ));
        try {
            $response = $request->send();
            if ($response->getStatus() == 200) {
                return json_decode($response->getBody());
            }
            else {
                return json_decode($response->getBody());
            }
        }
        catch(\HTTP_Request2_Exception $e) {
            return json_decode($e->getMessage());
        }
    }

    function delete_card($data = array()){
        $request = new \HTTP_Request2();
        $request->setUrl($this->api_route.'card/delete');
        $request->setMethod(\HTTP_Request2::METHOD_POST);
        $request->setConfig(array(
        'follow_redirects' => TRUE
        ));
        $request->setHeader(array(
            'Content-Type' => 'application/x-www-form-urlencoded'
        ));
        
        $request->addPostParameter(array(
            'customerId' => $this->get_array_value($data, "customer_id"),
            'projectId' => $this->project_id,
            'cardId' => $this->get_array_value($data, "id_card"),
        ));
        try {
            $response = $request->send();
            if ($response->getStatus() == 200) {
                return json_decode($response->getBody());
            }
            else {
                return json_decode($response->getBody());
            }
        }
        catch(\HTTP_Request2_Exception $e) {
            return json_decode($e->getMessage());
        }
    }

    function save_plan($data = array()){
        $request = new \HTTP_Request2();
        $request->setUrl($this->api_route.'plans/create');
        $request->setMethod(\HTTP_Request2::METHOD_POST);
        $request->setConfig(array(
        'follow_redirects' => TRUE
        ));
        $request->setHeader(array(
            'Content-Type' => 'application/x-www-form-urlencoded'
        ));
        $request->addPostParameter(array(
            'amount' => $this->get_array_value($data, "rate"),
            'retry_times' => '3',
            'name' => $this->get_array_value($data, "title"),
            'sequence' => 'month',
            'trial_days' => '0',
            'sequence_times' => '1',
            'currency' => 'MXN',
            'projectId' => $this->project_id
        ));
        try {
            $response = $request->send();
            if ($response->getStatus() == 200) {
                return json_decode($response->getBody());
            }
            else {
                return json_decode($response->getBody());
            }
        }
        catch(\HTTP_Request2_Exception $e) {
            return json_decode($e->getMessage());
        }
    }

    function save_client($data_bussiness = array(), $data_user = array()){
        $request = new \HTTP_Request2();
        $request->setUrl($this->api_route.'client/create');
        $request->setMethod(\HTTP_Request2::METHOD_POST);
        $request->setConfig(array(
        'follow_redirects' => TRUE
        ));
        $request->setHeader(array(
            'Content-Type' => 'application/x-www-form-urlencoded'
        ));
        
        $request->addPostParameter(array(
            'externalId' => 'CHAMB_COMPANY_' . $this->get_array_value($data_bussiness, "external_id") . '_' . rand(),
            'clientName' => $this->get_array_value($data_user, "first_name"),
            'lastName' => $this->get_array_value($data_user, "last_name"),
            'clientEmail' => $this->get_array_value($data_user, "email"),
            'clientPhone' => $this->get_array_value($data_user, "phone"),
            'calle_num' => $this->get_array_value($data_bussiness, "direccion"),
            'colonia' => $this->get_array_value($data_bussiness, "colonia"),
            'referencia' => $this->get_array_value($data_bussiness, "referencia"),
            'estado' => $this->get_array_value($data_bussiness, "estado"),
            'ciudad' => $this->get_array_value($data_bussiness, "municipio"),
            'postal_code' => $this->get_array_value($data_bussiness, "codigo_postal"),
            'country_code' => 'MX',
            'projectId' => $this->project_id
        ));
        try {
            $response = $request->send();
            if ($response->getStatus() == 200) {
                return json_decode($response->getBody());
            }
            else {
                return json_decode($response->getBody());
            }
        }
        catch(\HTTP_Request2_Exception $e) {
            return json_decode($e->getMessage());
        }
    }

    function create_subscription($data = array()){
        $request = new \HTTP_Request2();
        $request->setUrl($this->api_route.'suscription/create');
        $request->setMethod(\HTTP_Request2::METHOD_POST);
        $request->setConfig(array(
        'follow_redirects' => TRUE
        ));
        $request->setHeader(array(
            'Content-Type' => 'application/x-www-form-urlencoded'
        ));
        $request->addPostParameter(array(
            'planId' => $this->get_array_value($data, "plan_id"),
            'customerId' => $this->get_array_value($data, "customerId"),
            'projectId' => $this->project_id,
            'token_id' => $this->get_array_value($data, "token_id")
        ));
        try {
            $response = $request->send();
            if ($response->getStatus() == 200) {
                return json_decode($response->getBody());
            }
            else {
                return json_decode($response->getBody());
            }
        }
        catch(\HTTP_Request2_Exception $e) {
            return json_decode($e->getMessage());
        }
    }


    function cancel_subscription($data = array()){
        $request = new \HTTP_Request2();
        $request->setUrl($this->api_route.'suscription/cancel');
        $request->setMethod(\HTTP_Request2::METHOD_POST);
        $request->setConfig(array(
        'follow_redirects' => TRUE
        ));
        $request->setHeader(array(
            'Content-Type' => 'application/x-www-form-urlencoded'
        ));
        $request->addPostParameter(array(
            'subscriptionId' => $this->get_array_value($data, "plan_id"),
            'customerId' => $this->get_array_value($data, "customerId"),
            'projectId' => $this->project_id
        ));

        try {
            $response = $request->send();
            if ($response->getStatus() == 200) {
                return json_decode($response->getBody());
            }
            else {
                return json_decode($response->getBody());
            }
        }
        catch(\HTTP_Request2_Exception $e) {
            return json_decode($e->getMessage());
        }
    }
}
