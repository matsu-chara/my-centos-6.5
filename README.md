git, vim, zshをまともにしたcentos6.5

epel rpforge remi登録済み

nginx1.6(apache2.2), mysql5.5, php5.5入り

インストール
```sh
git clone https://github.com/matsu-chara/my-centos-6.5
cd my-centos-6.5
vagrant up
```

イメージ作成
```sh
vagrant vbguest
vagrant ssh -c "sudo ln -s -f /dev/null /etc/udev/rules.d/70-persistent-net.rules"
vagrant package
vagrant box add my-centos-6.5 package.box
```

イメージ利用
```sh
vagrant init my-centos-6.5
vagrant up
```

テスト
```sh
rake spec
```
