# 鸿蒙开发从零开始之UIAbility组件与UI的数据同步

<img src="../image/flower_013.png">


---


[跳转到readme](https://github.com/hfreeman2008/Harmony-from-zero/blob/main/README.md)

---

[<font face='黑体' color=#ff0000 size=40 >跳转到文章结尾</font>](#Demo源码)

---

这篇文章主要目的是了解UIAbility组件与UI的数据同步的方法；

---



# UIAbility组件与UI的数据同步

基于当前的应用模型，可以通过以下几种方式来实现UIAbility组件与UI之间的数据同步。

- 使用EventHub进行数据通信：

在基类Context中提供了EventHub对象，可以通过发布订阅方式来实现事件的传递。在事件传递前，订阅者需要先进行订阅，当发布者发布事件时，订阅者将接收到事件并进行相应处理。

- 使用AppStorage/LocalStorage进行数据同步：

ArkUI提供了AppStorage和LocalStorage两种应用级别的状态管理方案，可用于实现应用级别和UIAbility级别的数据同步。

---

# 两个UIAbility之间可通过哪些方法实现数据传递

两个UIAbility之间数据传递的方法如下，推荐优先使用排序靠前的方法。

- 方法一：调用startAbility接口启动另外一个UIAbility时，通过wantInfo添加启动参数。也可通过startAbilityForResult接口，获取被调用方UIAbility在关闭时返回的信息。
- 方法二：使用应用级别的状态管理AppStorage、PersistentStorage、Environment，实现应用级或者多个页面的状态数据共享。
- 方法三：同一个应用中UIAbility和UIAbility之间的数据传递，可以使用AppStorage/LocalStorage进行数据同步。
- 方法四：使用线程间通信工具Emitter、Worker进行通信。
- 方法五：使用进程间通信工具CES（公共事件服务）进行通信。
- 其他方法（系统应用）：通过Call调用实现UIAbility交互。


---

# EventHub

---

# PersistentStorage



---

# 运行效果

<div align="center"> <img src="Basic_Services_Kit.gif" /> </div>

---

# 参考资料

1.两个UIAbility之间可通过哪些方法实现数据传递

https://developer.huawei.com/consumer/cn/doc/harmonyos-faqs-V5/faqs-ability-31-V5

2.UIAbility组件与UI的数据同步

https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V5/uiability-data-sync-with-ui-V5

3.EventHub

https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V5/js-apis-inner-application-eventhub-V5#eventhubon

4.从AppStorage中访问PersistentStorage初始化的属性

https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V5/arkts-persiststorage-V5#%E4%BB%8Eappstorage%E4%B8%AD%E8%AE%BF%E9%97%AEpersistentstorage%E5%88%9D%E5%A7%8B%E5%8C%96%E7%9A%84%E5%B1%9E%E6%80%A7

---

# Demo源码

Demo:

基于SDK 12(5.0.0)版本，完成调试，可以运行。

.rar

---





---

[<font face='黑体' color=#ff0000 size=40 >跳转到文章开始</font>](#鸿蒙开发从零开始之UIAbility组件与UI的数据同步)

---

<img src="../image/harmony_os_001.png">

---

