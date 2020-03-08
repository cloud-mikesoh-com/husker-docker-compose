<?php
    $config['db_dsnw'] = 'mysql://someuser:somepassword@172.17.0.1:3306/roundcubemail';
    $config['db_dsnr'] = '';
    $config['default_host'] = 'ssl://172.17.0.1:993';
    $config['smtp_server'] = 'ssl://172.17.0.1:465';
    $config['des_key'] = 'somekey';
    $config['temp_dir'] = '/tmp/roundcube-temp';
    $config['plugins'] = ['archive', 'zipdownload'];
    $config['zipdownload_selection'] = true;
    $config['log_driver'] = 'stdout';
    $config['skin'] = 'larry';
    $config['imap_conn_options'] = array(
          'ssl' => array(
            'verify_peer'  => false,
            'peer_name'    => 'husker.mikesoh.com',
          )
    );

