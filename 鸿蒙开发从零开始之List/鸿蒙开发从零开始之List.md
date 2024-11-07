# 鸿蒙开发从零开始之List

<img src="../image/flower_010.png">


---

这篇文章主要目的是初步学习列表 (List)组件的使用；



基于SDK 12(5.0.0)版本，完成调试，可以运行。


---

# 核心代码


## List 1

```java
//List 1
Text("List 1")
    .fontSize(20)
    .fontColor(Color.Red)
    .margin({top:20})
List() {
    ListItem() {
    Text('北京').fontSize(24)
    }
    ListItem() {
    Text('杭州').fontSize(24)
    }
    ListItem() {
    Text('上海').fontSize(24)
    }
}
.backgroundColor('#FFF1F3F5')
.alignListItem(ListItemAlign.Center)
```



UI显示效果：

![list1](list1.png)




- 接收第一个page传递过来的数据



```java


```

# 效果为：

<div align="center"> <img src="list_demo.gif" /> </div>


---

# 小结




---

# 参考资料

1.创建列表 (List)

https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V5/arkts-layout-development-create-list-V5

---

# Demo源码

ListDemo.rar

---

[<font face='黑体' color=#ff0000 size=40 >跳转到文章开始</font>](#鸿蒙开发从零开始之List)

---

<img src="../image/harmony_os_001.png">

---

