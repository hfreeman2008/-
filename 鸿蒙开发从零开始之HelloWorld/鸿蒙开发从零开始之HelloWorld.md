# 鸿蒙开发从零开始之HelloWorld

<img src="../image/flower_001.png">

---




[跳转到readme](https://github.com/hfreeman2008/Harmony-from-zero/blob/main/README.md)


---

[<font face='黑体' color=#ff0000 size=40 >跳转到文章结尾</font>](#Demo源码)



---

老规矩，第一篇文章就是Helloworld，以完成开发环境的配置，鸿蒙开发的基础入门。

# 必备

你需要且只需要一台PC电脑；


# 前期准备


(1)打开鸿蒙开发官方网址：

https://developer.huawei.com/consumer/cn/develop

(2)下载鸿蒙集成开发环境(IDE) DevEco Studio：

https://developer.huawei.com/consumer/cn/deveco-studio/

我下载的版本是：

DevEco Studio NEXT Developer Beta1

Build #DS-233.14475.28.36.503403

构建版本：5.0.3.403, built on June 20, 2024


(3)正常安装DevEco Studio：


(4)阅读鸿蒙开发快速入门二篇官方文档：

- 开发准备

https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V5/start-overview-V5

- 构建第一个ArkTS应用（Stage模型） 

https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V5/start-with-ets-stage-V5


(5)按照鸿蒙开发快速入门二篇官方文档，完成HelloWorld的开发和运行，查看效果。

我大概花了极短的时间就把HelloWorld的Demo跑起来了，中间没有任何问题；

这说明鸿蒙的开发工具DevEco Studi是下了功夫的，对于开发者来说是非常友好的。


备注：

如果我们没有鸿蒙设备，我们选择在模拟器上运行Demo：

<div align="center"> <img src="image_priviewer.png" /> </div>


---


# 项目的目录结构介绍

<div align="center"> <img src="项目的目录结构.png" /> </div>



1.module.json5

模块配置文件。
主要包含HAP包的配置信息、应用/服务在具体设备上的配置信息以及应用/服务的全局配置信息。

--类似android系统的AndroidManifest.xml

2.entryability.ets

应用/服务的入口

--类似android系统的Activity.java

3.Index.ets

应用/服务包含的页面

--类似android系统的xml布局文件

4.resources/zh_CN

中文字符串

--类似android系统的中文字符串


5.resources/en_US

英文字符串

--类似android系统的英文字符串

6.resources/base/media

多媒体资源，包括图片等

--类似android系统的drawable资源

7.resources/base/element

其他资源，包括color等

--类似android系统的value目录下的资源

---

# HelloWorld 显示效果

界面显示一个Button，一个Text，点击一次Button，Text显示点击Button次数；

<div align="center"> <img src="helloworld_demo_show.png" /> </div>



# Index.ets--界面显示文件

```java
import { hilog } from '@kit.PerformanceAnalysisKit';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  @State num: number = 0 //点击Button次数

  build() {
    RelativeContainer() {
      Text(this.message)//显示点击Button次数的Text
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
      Divider()
      //Button(`click me num 的值为：${this.num}`)
      Button(`click me`)//Button组件
        .onClick(()=>{//Button click方法
          this.num =  this.num + 1
          this.message='click me :'.toString() + this.num.toString() //调整点击Button次数显示
        })
        .height(100)
        .width('100%')
        .fontSize(30)
        .margin({top:20})
    }
    .height('100%')
    .width('100%')
  }
}
```

---

# 小结


- 确认鸿蒙系统与android系统的相似之处

看项目的结构，鸿蒙系统与android系统是非常相似的，有一种熟悉的感觉；


- 确认鸿蒙系统与android系统的不同之处

(1)开发语言不同；

鸿蒙系统使用ets，android系统使用java+xml；

这对于android开发者来说，不是一个好消息啊，需要多学习一门开发语言，宝宝心里苦啊；

(2)接口api全部不同

因为开发语言的不同，导致开发接口api全部不一样了；


(3)其他的不同处，还待发现；


- 比较鸿蒙系统与android系统的优劣势

待发现；


---

# 参考资料

1.鸿蒙开发官方网址：

https://developer.huawei.com/consumer/cn/develop

---

# Demo源码

HelloWorld.rar

---

[<font face='黑体' color=#ff0000 size=40 >跳转到文章开始</font>](#鸿蒙开发从零开始之helloworld)

---

<img src="../image/harmony_os_001.png">


