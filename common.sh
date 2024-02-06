cd /root/mainnet/docs/
 mkdocs build && rm -rf /home/docs/site && cp -avr /root/mainnet/docs/site /home/docs && chcon -Rt httpd_sys_content_t /home/docs