git, vim, zshをまともにしたcentos6.5

epel rpforge remi登録済み

nginx1.6(apache2.2), mysql5.5, php5.5入り

イメージ作成
```sh
vagrant package --base `cat .vagrant/machines/default/virtualbox/id`
```

イメージ利用
```sh
vagrant box add --name my-centos-6.5 package.box
vagrant init my-centos-6.5
vagrant up
```
