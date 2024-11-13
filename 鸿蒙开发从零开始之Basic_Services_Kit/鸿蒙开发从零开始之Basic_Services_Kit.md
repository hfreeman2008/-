# 鸿蒙开发从零开始之Basic_Services_Kit

<img src="../image/flower_012.png">


---


[跳转到readme](https://github.com/hfreeman2008/Harmony-from-zero/blob/main/README.md)

---

[<font face='黑体' color=#ff0000 size=40 >跳转到文章结尾</font>](#Demo源码)

---

这篇文章主要目的是初步学习Basic Services Kit（基础服务）的使用；


# 为什么要了解Basic Services Kit

- 功能常用

Basic Services Kit（基础服务）作为基础服务套件，为应用开发者提供常用的基础能力。

比如常用的剪贴板读写、文件上传下载、文件压缩、文件打印、进程间/线程间通信、设备管理、应用账号管理等能力都由本Kit提供。

- 了解系统的第一个服务

前面我们了解的基本上都是应用框架部分的开发，但是对于HarmonyOS的系统的服务，我们基本上还没有了解。

那就从Basic Services Kit开始的。

![系统的第一个服务](系统的第一个服务.png)

---


# Basic Services Kit的主要功能

根据不同使用场景分类，本Kit主要包含如下能力：

- 数据文件处理：

1. 剪贴板：提供内容复制粘贴能力，支持多种数据类型包括文本、HTML数据、URI、PixelMap等。
2. 压缩：提供文件压缩解压缩的能力。
3. 打印：提供基础文件打印的能力，比如传入文件进行打印、设置打印参数等。
4. 上传下载：提供文件上传下载、后台传输代理的基础能力。

- 进程间/线程间通信：

1. 公共事件：提供进程间通信的能力，包括订阅、发布、退订公共事件等，相关开发指南请参考公共事件简介。
2. Emitter：提供线程内通信的能力，包括订阅、发布、退订自定义事件等，相关开发指南请参考使用Emitter进行线程间通信。

- 设备管理：

1. 设备信息：提供查询产品信息的能力，比如查询设备类型、设备品牌名称、产品系列、产品版本号等。
2. 设置数据项：提供查询系统设置数据项的能力，比如查询是否启用飞行模式、是否启用触摸浏览等。
电量信息查询：提供查询电量信息的能力。
3. 系统电源管理：提供系统电源管理相关的能力，比如查询屏幕状态能力等。
4. RunningLock锁操作：提供RunningLock锁相关操作的能力，包括创建、查询、持锁、释放锁等操作。
5. 热管理：提供热管理相关的能力，比如热档位查询等。
6. USB管理：提供USB设备管理相关的能力，比如查询USB设备列表、批量数据传输、控制命令传输、权限控制等，相关开发指南请参考USB服务开发概述。

- 其他：

1. 应用账号管理：提供应用账号的期管理以及数据管理的能力，相关开发指南请参考管理应用账号。
2. 公共回调：定义了HarmonyOS ArkTS接口的公共回调类型，包括接口调用时出现的公共回调和公共错误信息。
3. 时间时区：提供获取系统时间以及系统时区的能力。



# 核心代码


## 关键逻辑说明


1.

```java

```

2.

```java

```


1.

```java

```

2.

```java

```


---

# 参考资料

1.Basic Services Kit简介

https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V5/basic-services-kit-overview-V5

2.Basic Services Kit（基础服务）
https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V5/basic-services-arkts-V5

---

# Demo源码

Demo:

基于SDK 12(5.0.0)版本，完成调试，可以运行。

.rar

---

[<font face='黑体' color=#ff0000 size=40 >跳转到文章开始</font>](#鸿蒙开发从零开始之Basic_Services_Kit)

---

<img src="../image/harmony_os_001.png">

---

