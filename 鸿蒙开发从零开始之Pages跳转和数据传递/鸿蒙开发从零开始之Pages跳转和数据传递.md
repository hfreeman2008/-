# 鸿蒙开发从零开始之Pages跳转和数据传递

<img src="../image/flower_009.png">

---


[跳转到readme](https://github.com/hfreeman2008/Harmony-from-zero/blob/main/README.md)


---

这篇文章主要目的是初步学习Ability Pages跳转和数据传递；


参考：

鸿蒙HarmonyOS应用开发入门  柳伟卫 清华大学出版社  2.4 实战：Ability内页面的跳转和数据传递

基于SDK 12(5.0.0)版本，完成调试，可以运行。


---

# 核心代码


- 转到Second page页面，并传递数据

在第一个page：

```java
import router from '@ohos.router';

......
    .onClick(() => {
      //跳转到Second page页面，并传递数据：
      router.pushUrl({
        url: 'pages/Second',
        params:{
          src:'Indext 页面传来的数据',
        }
      },router.RouterMode.Single)
    })

```


- 接收第一个page传递过来的数据

在Second页面，接收第一个page传递过来的数据，并显示出来：

```java
import router from '@ohos.router';
......
//接收第一个page传递过来的数据
@State data: string = (router.getParams() as Record<string,string>)['src']
......
//将传递过来的数据显示出来
Text(this.data)
  .fontSize(30)
  .fontWeight(FontWeight.Bold)
  .margin({
    top: 10
  })

```

# 效果为：

<div align="center"> <img src="page_jump_with_data.gif" /> </div>


---

# 小结

Ability Pages跳转和数据传递，接口使用还是非常友好的。


---

# 参考资料

1.鸿蒙HarmonyOS应用开发入门  柳伟卫 清华大学出版社  2.4 实战：Ability内页面的跳转和数据传递

---

# Demo源码

AbilityRouter02.rar

---

[<font face='黑体' color=#ff0000 size=40 >跳转到文章开始</font>](#鸿蒙开发从零开始之Pages跳转和数据传递)

---

<img src="../image/harmony_os_001.png">

---

