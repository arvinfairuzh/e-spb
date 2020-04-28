<?php
class Curl
{

    function access_api($fields)
    {
        $url = 'https://fcm.googleapis.com/fcm/send';

        $headers = array(
            'Authorization:key = AAAAwCVgGV0:APA91bE6C_fdc5vVfVrSr5zPX8pQG93hRFsfEtU_VXQCDTryatk1OzkGHBwH4W9L4TX2pTmkIo5aRbrnf2GXIF-z1PgMm22PSl6Sx6L_Y_C6_exqG2PthjkN-eL9mEq7Mb69gGkK-5ap',
            'Content-Type: application/json'
        );
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));

        $response = curl_exec($ch);
        $err = curl_error($ch);
        curl_close($ch);

        if ($err) {
            return "cURL Error #:" . $err;
        } else {
            return json_decode($response);
        }
    }
}
