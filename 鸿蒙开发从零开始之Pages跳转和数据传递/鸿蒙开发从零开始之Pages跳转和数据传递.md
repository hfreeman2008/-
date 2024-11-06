# 鸿蒙开发从零开始之Pages跳转和数据传递

<img src="../image/flower_009.png">


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


---








---

# 小结


- 确认鸿蒙系统与android系统的相似之处

这个生命周期，鸿蒙系统与android系统不能说完成一模一样，但是相似度确实是非常高啊；

这对于android开发者来说，是非常友好的，学习成本不高。


- 确认鸿蒙系统与android系统的不同之处

整体来说生命周期差不多的，但是鸿蒙系统中的生命周期涉及到一个新的对象WindowStage，需要关注。


- 比较鸿蒙系统与android系统的优劣势

当前还无结论；


- 回答一下鸿蒙系统到底是不是android系统的套皮疑惑？

当前还无结论；

---

# 参考资料

1.鸿蒙HarmonyOS应用开发入门  柳伟卫 清华大学出版社  2.4 实战：Ability内页面的跳转和数据传递

---

# Demo源码

UIAbilityDemo03.rar

---

[<font face='黑体' color=#ff0000 size=40 >跳转到文章开始</font>](#鸿蒙开发从零开始之Pages跳转和数据传递)

---

<img src="../image/harmony_os_001.png">

---

