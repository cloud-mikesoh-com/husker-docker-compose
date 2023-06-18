<?php
    $config['db_dsnw'] = 'sqlite:////var/roundcube/db/roundcube.db?mode=0646';
    $config['db_dsnr'] = '';
    $config['des_key'] = 'somekey';
    $config['temp_dir'] = '/tmp/roundcube-temp';
    $config['zipdownload_selection'] = true;
    $config['log_driver'] = 'stdout';
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

