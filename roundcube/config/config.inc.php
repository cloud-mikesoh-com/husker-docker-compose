<?php
    $config['db_dsnw'] = 'sqlite:////var/roundcube/db/roundcube.db?mode=0646';
    $config['db_dsnr'] = '';
    $config['default_host'] = 'ssl://172.17.0.1:993';
    $config['smtp_server'] = 'tls://172.17.0.1:587';
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
    $config['smtp_conn_options'] = array(
          'ssl' => array(
            'verify_peer'  => false,
            'peer_name'    => 'husker.mikesoh.com',
          )
    );

