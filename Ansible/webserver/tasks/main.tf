- name: Installer nginx
  apt:
    name: nginx
    state: present
    update_cache: yes

- name: Démarrer nginx
  service:
    name: nginx
    state: started
    enabled: yes

- name: Page HTML personnalisée
  template:
    src: index.html.j2
    dest: /var/www/html/index.html
