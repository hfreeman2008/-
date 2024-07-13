# 鸿蒙开发从零开始之UIAbility浅析

<img src="../image/flower_003.png">


---

这篇文章主要目的是学习点击一个Button，实现界面的跳转；

这个就是鸿蒙开发的官网的第一个例子：

构建第一个ArkTS应用（Stage模型）：

https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V5/start-with-ets-stage-V5

---

#  显示效果

在第一个界面点击一个button，跳转到第二个界面；在第二个界面点击返回的button，返回到第一个界面。

- 图片效果为：


<img src="界面1.png" alt="描述文字" width="206"  height="409"> <img src="界面2.png" alt="描述文字" width="264"  height="409">



- 动画效果为：

<img src="./page_jump.gif">


# 核心代码


## 第一个界面布局 -- Index.ets

添加一个Text，以标识第一个布局文件。添加一个Button，以响应用户跳转到第二个界面的点击事件。

```java

```

## 第二个界面布局 -- Second.ets

添加一个Text，以标识第二个布局文件。添加一个Button，以响应用户跳转返回到第一个界面的点击事件。

```java

```


## 定义二个布局文件 -- main_pages.json

```java


```

---

# 小结


- 确认鸿蒙系统与android系统的相似之处



- 确认鸿蒙系统与android系统的不同之处

(1)对于page跳转，鸿蒙开发就一行代码搞定，只是再新建一个布局文件，不需要再新建一个UIAbility。更简单，代码量更少；

(2)对于page跳转，android开发需要新建一个activity，还要再新建一个布局文件，再对应添加跳转软件，更复杂，代码量更多；



- 比较鸿蒙系统与android系统的优劣势

对于page跳转这个角度来说，鸿蒙开发确实是比android开发要更灵活，更方便，更简单，代码量更少。


<font face='黑体' color=#ff0000 size=10>鸿蒙系统胜</font>



- 回答一下鸿蒙系统到底是不是android系统的套皮疑惑？

当前还无结论；

---

# 参考资料

1.构建第一个ArkTS应用（Stage模型）：

https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V5/start-with-ets-stage-V5

---

# Demo源码

HelloWorld2.rar

---

[<font face='黑体' color=#ff0000 size=40 >跳转到文章开始</font>](#鸿蒙开发从零开始之UIAbility浅析)

---

<img src="../image/harmony_os_001.png">

---

