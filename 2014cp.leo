<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<?xml-stylesheet ekr_test?>
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="lee.20141224110313.40"><vh>Computer Programming Note</vh>
<v t="lee.20141227235536.46"><vh>關於此專案</vh></v>
<v t="lee.20141227235536.47"><vh>關於個人</vh></v>
</v>
<v t="lee.20141227235536.48" a="E"><vh>Develop Note</vh>
<v t="lee.20141227235536.51"><vh>參考</vh></v>
<v t="lee.20141227235536.50"><vh>專案網址</vh></v>
<v t="lee.20141227235536.49"><vh>將 python source code encoding to utf-8</vh></v>
<v t="lee.20141227235536.54"><vh>確認程式運行OS</vh></v>
</v>
<v t="lee.20141227235536.52" a="E"><vh>Buttons</vh>
<v t="lee.20141227235536.53"><vh>@button run env</vh></v>
</v>
<v t="lee.20141224110313.41" a="E"><vh>@path ./</vh>
<v t="lee.20141224110313.42"><vh>@edit requirements.txt</vh></v>
<v t="lee.20141224110313.43"><vh>@edit __init__.py</vh></v>
<v t="lee.20141224110313.44"><vh>@edit .gitignore</vh></v>
<v t="lee.20141224110313.45"><vh>@edit setup.py</vh></v>
<v t="lee.20141224110313.46" a="E"><vh>@file wsgi.py</vh></v>
<v t="lee.20141224110313.47"><vh>@edit readme.md</vh></v>
</v>
<v t="lee.20141224110313.55"><vh>@path std</vh>
<v t="lee.20141224110313.58"><vh>@file asciisymbol.py</vh></v>
<v t="lee.20141224110313.59"><vh>@file example1.py</vh></v>
<v t="lee.20141224110313.60"
expanded="lee.20141215164031.96,"><vh>@file example.py</vh></v>
<v t="lee.20141224110313.61"
expanded="lee.20141223114246.41,"><vh>@file example2.py</vh></v>
</v>
<v t="lee.20141224110313.56"><vh>@path templates</vh>
<v t="lee.20141224110313.131"><vh>@edit 404.html</vh></v>
<v t="lee.20141224110313.132"><vh>@edit index.html</vh></v>
<v t="lee.20141224110313.133"><vh>@edit base.html</vh></v>
<v t="lee.20141224110313.134"><vh>@edit form.html</vh></v>
<v t="lee.20141224110313.135"><vh>@edit nav.html</vh></v>
<v t="lee.20141224110313.136"><vh>@edit personal_page.html</vh></v>
</v>
<v t="lee.20141224110313.57"><vh>@path static/css</vh>
<v t="lee.20141224110313.189"><vh>@edit custom.css</vh></v>
<v t="lee.20141224110313.190"><vh>@edit skeleton.css</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="lee.20141224110313.40"># 這是 Computer Programming 期末專案

</t>
<t tx="lee.20141224110313.41"></t>
<t tx="lee.20141224110313.55"></t>
<t tx="lee.20141224110313.56"></t>
<t tx="lee.20141224110313.57"></t>
<t tx="lee.20141227235536.46">##  關於此專案

這是 Computer Programming 期末專案

目標是將所有人的自評(自我評量) 以及 心得(對於這門課, 有什麼想法)

學員們要提供自己 app url, github repository url, bitbucket repository url

以供評分時檢視

本專案採用

    1. python 34
    2. cherrypy(micro framework)
    3. skeleton(css framework)(option)

每個學員應有頁面

    Index 首頁
    
        列出
            1. 學員個人基本資料
            2. 專案自評分數
    
    Remark 心得頁面
    
        列出
            心得</t>
<t tx="lee.20141227235536.47">## 關於個人

每個學員要自行建立自己的 application on openshift, 並將程式碼同步於 github and bitbucket

about application

    1. application 採用 python33
    2. framework 採用 cherrypy(微型框架)
    
application 內必須建立

    1. 猜數字
    2. 其餘自行發揮(maybe, 詳情請看課程網頁)</t>
<t tx="lee.20141227235536.48">這是開發筆記</t>
<t tx="lee.20141227235536.49">@language md

[Working with utf-8 encoding in Python source](https://stackoverflow.com/questions/6289474/working-with-utf-8-encoding-in-python-source)

```python
#!/usr/bin/env python
# -*- coding: utf-8 -*-
```</t>
<t tx="lee.20141227235536.50">[openshift app](http://cp-nfumde.rhcloud.com/)

[github repo](https://github.com/mdeta/2014-cp-ab)</t>
<t tx="lee.20141227235536.51">[python doc](https://docs.python.org/3/)

[cherrypy doc](http://docs.cherrypy.org/en/latest/index.html)

[CherryPy3 Doc/概念](http://zh.cuihao.wikia.com/wiki/CherryPy3_Doc/%E6%A6%82%E5%BF%B5?variant=zh-hant)

[skeleton doc](http://getskeleton.com/)</t>
<t tx="lee.20141227235536.52"></t>
<t tx="lee.20141227235536.53">@language python
# -*- coding: utf-8 -*-
 
import subprocess
import os

# 確認運行OS
# 用不同的方式去運行

if os.name == 'nt':
    # in windows
    p = subprocess.Popen('start cmd /c v:\ide\python34\python wsgi.py', shell=True)
elif os.name == 'posix':
    # in ubuntu
    #p = subprocess.Popen('/usr/bin/python3 wsgi.py', shell=True)
    # todo 需要開啟另外一個 command 去執行
    pass
try:
    p.wait()
    print ('done')
except:
    pass
</t>
<t tx="lee.20141227235536.54">[How do I check if I'm running on Windows in Python? [duplicate]](https://stackoverflow.com/questions/1325581/how-do-i-check-if-im-running-on-windows-in-python)

`os.name` The name of the operating system dependent module imported. 
The following names have currently been registered: 'posix', 'nt', 'mac', 'os2', 'ce', 'java', 'riscos'.</t>
</tnodes>
</leo_file>
