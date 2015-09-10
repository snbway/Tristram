##地铁帮官网

###1.环境搭建
####1.1 virtualenv
```
$ sudo pip install virtualenv==1.11.6
```

####1.2virtualenvwrapper
```
$ sudo pip install virtualenvwrapper
$ mkdir $HOME/.virtualenvs
$ echo export WORKON_HOME=$HOME/.virtualenvs>>~/.bashrc
$ echo source /usr/local/bin/virtualenvwrapper.sh>>~/.bashrc
$ source ~/.bashrc
$ echo export DJANGO_SETTINGS_MODULE=settings.local>>~/.virtualenvs/tristram/bin/postactivate 
```

####1.3 clone 项目到本地
 1. fork https://github.com/snbway/Tristram 到自己的仓库(没有github 账号要先注册哦)
 ```
 $ cd ~
 $ mkdir snbway
 $ cd snbway
 $ git clone https://github.com/youName/Tristram.git
 ```

####1.4 解决项目依赖
 ```
 $ mkvirtualenv tristram
 $ cd snbway
 (tristram)yourname@yourhost:~/snbway/Tristram $
 $ cp requirements/local.txt.simple  requirements/local.txt
 $ pip install -r requirements/local.txt
 ```
 如果没有异常，环境就配置好了。如果有什么异常可以尝试在`requirements/base.txt` 里删除相应依赖，单独安装。`pip`不行可以用`easy_install`。总之安装好`requirements/base.txt` 里所有依赖就是了.

####1.5 运行项目
 ```
 $ cp settings/local.py.simple  settings/local.py
 ```
 配置数据库
 你可以选择用sqlite,或者mysql以及其他任意一种django支持的Database。更多信息 [戳这里][1]。

 ```
 $ python manage.py migrate
 $ ./manage.py runserver 0.0.0.0:8090
### 开始hack吧 ~ 骚年
 ```

 [1]: https://docs.djangoproject.com/en/1.8/ref/settings/#databases

