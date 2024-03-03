<?php

$params = require __DIR__ . '/params.php';
$db = require __DIR__ . '/db.php';
use \kartik\datecontrol\Module;
$config = [
    'id' => 'basic',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm'   => '@vendor/npm-asset',
    ],
    'components' => [
        'cart' => [
            'class' => 'devanych\cart\Cart',
            'storageClass' => 'devanych\cart\storage\SessionStorage',
            'calculatorClass' => 'devanych\cart\calculators\SimpleCalculator',
            'params' => [
                'key' => 'cart',
                'expire' => 604800,
                'productClass' => 'app\models\Produk',
                'productFieldId' => 'ProdukID',
                'productFieldPrice' => 'harga',
            ],
        ],
       
        'request' => [
            // !!! insert a secret key in the following (if it is empty) - this is required by cookie validation
            'cookieValidationKey' => 'HFmDv_40ZKtx0smUydC8GXMTMP1HRofK',
        ],
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],/*
        'user' => [
            'identityClass' => 'app\models\User',
            'enableAutoLogin' => true,
        ],*/
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'mailer' => [
            'class' => \yii\symfonymailer\Mailer::class,
            'viewPath' => '@app/mail',
            // send all mails to a file by default.
            'useFileTransport' => true,
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'db' => $db,

        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
                'cart/add/<id:\d+>' => 'cart/add',
            ],
        ],
        'authManager' => [
            'class' => 'yii\rbac\DBManager', // or use 'yii\rbac\DbManager'
        ]

    ],
    'params' => $params,
    'modules' => [
        'gridview' => [
            'class' => '\kartik\grid\Module',
            // see settings on http://demos.krajee.com/grid#module
        ],
        'datecontrol' => [
            'class' => '\kartik\datecontrol\Module',
            // see settings on http://demos.krajee.com/datecontrol#module
            'displaySettings' => [
                Module::FORMAT_DATE => 'dd-MM-yyyy',
                Module::FORMAT_TIME => 'hh:mm:ss a',
                Module::FORMAT_DATETIME => 'dd-MM-yyyy hh:mm:ss a', 
            ],
            
            // format settings for saving each date attribute (PHP format example)
            'saveSettings' => [
                Module::FORMAT_DATE => 'yyyy-MM-dd', // saves as unix timestamp
                Module::FORMAT_TIME => 'php:H:i:s',
                Module::FORMAT_DATETIME => 'php:Y-m-d H:i:s',
            ],
     
            // set your display timezone
            'displayTimezone' => 'Asia/Jakarta',
     
            // set your timezone for date saved to db
            'saveTimezone' => 'UTC',
            
            // automatically use kartik\widgets for each of the above formats
            'autoWidget' => true,
     
            // default settings for each widget from kartik\widgets used when autoWidget is true
            'autoWidgetSettings' => [
                Module::FORMAT_DATE => ['type'=>2, 'pluginOptions'=>['autoclose'=>true]], // example
                Module::FORMAT_DATETIME => [], // setup if needed
                Module::FORMAT_TIME => [], // setup if needed
            ],
            
            // custom widget settings that will be used to render the date input instead of kartik\widgets,
            // this will be used when autoWidget is set to false at module or widget level.
            'widgetSettings' => [
                Module::FORMAT_DATE => [
                    'class' => 'yii\jui\DatePicker', // example
                    'options' => [
                        'dateFormat' => 'php:d-M-Y',
                        'options' => ['class'=>'form-control'],
                    ]
                ]
           ]
        ],
        'user' => [
            'class' => 'dektrium\user\Module',
            'enableUnconfirmedLogin' => true,
            'admins' => ['admin', 'admin12'],
        ],
        'admin' => [
            'class' => 'mdm\admin\Module',
            'mainLayout' => '@app/views/layouts/main.php',
            'layout' => 'left-menu',
        ]
    ],
    'as access' => [
        'class' => 'mdm\admin\components\AccessControl',
        'allowActions' => [
            //'site/*',
            //'*',
            'user/security/login',
            'user/security/logout',
            // The actions listed here will be allowed to everyone including guests.
            // So, 'admin/*' should not appear here in the production, of course.
            // But in the earlier stages of your development, you may probably want to
            // add a lot of actions here until you finally completed setting up rbac,
            // otherwise you may not even take a first step.
        ]
    ],
];

if (YII_ENV_DEV) {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][] = 'debug';
    $config['modules']['debug'] = [
        'class' => 'yii\debug\Module',
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];

    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = [
        'class' => 'yii\gii\Module',
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];
}

return $config;
