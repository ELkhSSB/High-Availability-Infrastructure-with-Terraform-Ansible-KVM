- name: Installer nginx
  apt:
    name: nginx
    state: present
    update_cache: yes

- name: Supprimer le site nginx par défaut
  file:
    path: /etc/nginx/sites-enabled/default
    state: absent

- name: Déployer la config load balancer
  template:
    src: lb.conf.j2
    dest: /etc/nginx/conf.d/loadbalancer.conf
  notify: restart nginx
