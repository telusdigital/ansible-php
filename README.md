# ansible-php

[PHP](https://php.net/) is a popular general-purpose scripting language that is popular in web development.

[![Platforms](http://img.shields.io/badge/platforms-ubuntu-lightgrey.svg?style=flat)](#)

Tunables
--------
* `php_user` (string) - User to run php-fpm as
* `php_runtime_root` (string) - Directory for runtime data
* `php_fpm_pidfile_path` (string) - Path for FPM pidfile
* `php_fpm_socket_path` (string) - Path for FPM socket
* `php_log_root` (string) - Directory for logs
* `php_fpm_log_path` (string) - Path for FPM log
* `php_error_log_path` (string) - Path for error log
* `php_slow_log_path` (string) - Path for slow log
* `php_slow_threshold` (string) - Threshold for script execution to be considered 'slow'
* `php_hide_version` (string) - Do not expose version data.
* `php_max_children` (integer) - Maximum worker processes
* `php_start_servers` (integer) - Start this many workers initially
* `php_min_spare_servers` (integer) - Keep at least this many workers available
* `php_max_spare_servers` (integer) - Keep no more than this many workers idle
* `php_max_requests` (integer) - Maximum requests a worker can serve before being killed and replaced.
* `php_short_open_tag` (boolean) - Enable short open tags. Conflicts with XML headers. Deprecated, removal targeted for PHP6+. <?= style short ECHO tags are always enabled in 5.4+
* `php_display_errors` (boolean) - Display errors?
* `php_post_max_size` (string) - Maximum POST size
* `php_upload_max_filesize` (string) - Maximum upload filesize (must be < `php_post_max_size`)
* `php_cgi_fix_pathinfo` (string) - Enable cgi.fix_pathinfo. Enabled by default and required to conform to PHP spec. Fx your code to use `SCRIPT_FILENAME` rather than `PATH_TRANSLATED` if you need to disable this.
* `php_memory_limit` (string) - Memory limit for PHP workers (should be > `php_post_max_size`)
* `php_max_execution_time` (integer) - Upper bound on script execution time
* `php_request_terminate_timeout` (integer) - The timeout for serving a single request after which the worker process will be killed.
* `php_max_input_vars` (integer) - How many input variables may be accepted.
* `php_fpm` (boolean) - Enable FPM?
* `php_composer` (boolean) - Install Composer?
* `php_documentor` (boolean) - Install PHP Documentor?
* `php_phpunit` (boolean) - Install PHPUnit?
* `php_sodium` (boolean) - Install libsodium bindings?
* `php_modules` (list) - Additional PHP modules to install

Dependencies
------------
* [telusdigital.apt-repository](https://github.com/telusdigital/ansible-apt-repository/)
* [telusdigital.fluentd](https://github.com/telusdigital/ansible-fluentd/)
* [telusdigital.logrotate](https://github.com/telusdigital/ansible-logrotate/)

Example Playbook
----------------
    - hosts: servers
      roles:
         - role: telusdigital.php
           php_modules:
             - php5-curl
             - php5-redis
          php_phpunit: yes

License
-------
[MIT](https://tldrlegal.com/license/mit-license)

Contributors
------------
* [Chris Olstrom](https://colstrom.github.io/) | [e-mail](mailto:chris@olstrom.com) | [Twitter](https://twitter.com/ChrisOlstrom)
* Aaron Pederson
* Ben Visser
* Justin Scott
* Steven Harradine
