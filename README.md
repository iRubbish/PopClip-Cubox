## Popclip Cubox 插件

### 使用说明

1. 下载包 [👉🏻](https://github.com/iRubbish/PopClip-Cubox/releases/download/0.0.1/Cubox.popclipext.zip)
2. 解压软件包
3. 双击`Cubox.popclipext`，安装插件；
4. 在稍后提示的`Cubox API 链接`参数框中填入你的Cubox的完整API链接，例如`https://cubox.pro/c/api/save/YOUR_CUBOX_API`；
5. 好了。

### 其他

原作者是合并了，然后我在增加URL判断逻辑的时候一直无法正常判断（😂能力有限），所我又拆分了`yaml`与`sh`，然后增加了URL判断逻辑，经测试正常，但仍有不足。
不足之处： 1. 浏览器调用则识别成文本（因URL判断逻辑采用的是开头是否为http或者https，浏览器默认无。需手动开启，**目前可通过cubox开发者提供的插件解决**）

### 参考链接🔗

https://github.com/Redwinam/PopClip-Cubox
