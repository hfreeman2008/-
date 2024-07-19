@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  scroller: Scroller = new Scroller();

  build() {

    Scroll(this.scroller) {
      Column() {

        //1.Text
        Text('我是一段文本')
          .fontSize(25)
          .margin(10)

        //2.Text-引用Resource资源
        Text($r('app.string.module_desc'))
          .baselineOffset(0)
          .fontSize(30)
          .border({ width: 1 })
          .padding(10)
          .width(300)
          .margin(10)

        //3.创建Span
        Text('我是Text') {
          Span('我是Span')
        }
        .fontSize(30)
        .padding(10)
        .borderWidth(1)
        .margin(10)

        //4.设置文本装饰线及颜色
        Text() {
          Span('我是Span1，').fontSize(16).fontColor(Color.Grey).fontSize(30)
            .decoration({ type: TextDecorationType.LineThrough, color: Color.Red })
          Span('我是Span2').fontColor(Color.Blue).fontSize(30)
            .fontStyle(FontStyle.Italic)
            .decoration({ type: TextDecorationType.Underline, color: Color.Black })
          Span('，我是Span3').fontSize(30).fontColor(Color.Grey)
            .decoration({ type: TextDecorationType.Overline, color: Color.Green })
        }
        .borderWidth(1)
        .padding(10)

        //5.通过textCase设置文字一直保持大写或者小写状态
        Text() {
          Span('I am Upper-span').fontSize(30)
            .textCase(TextCase.UpperCase)
        }
        .borderWidth(1)
        .padding(10)

        //6.添加事件
        Text() {
          Span('I am Upper-span').fontSize(30)
            .textCase(TextCase.UpperCase)
            .onClick(()=>{
              console.info('我是Span——onClick')
            })
        }
        .padding(10)

        //7.通过textAlign属性设置文本对齐样式
        Text('左对齐')
          .width(300)
          .textAlign(TextAlign.Start)
          .border({ width: 1 })
          .padding(10)
          .fontSize(30)
        Text('中间对齐')
          .width(300)
          .textAlign(TextAlign.Center)
          .border({ width: 1 })
          .padding(10)
          .fontSize(30)
        Text('右对齐')
          .width(300)
          .textAlign(TextAlign.End)
          .border({ width: 1 })
          .padding(10)
          .fontSize(30)

        //8.通过textOverflow属性控制文本超长处理，textOverflow需配合maxLines一起使用
        Text('This is the setting of textOverflow to Clip text content This is the setting of textOverflow to None text content. This is the setting of textOverflow to Clip text content This is the setting of textOverflow to None text content.')
          .width(250)
          .textOverflow({ overflow: TextOverflow.None })
          .maxLines(1)
          .fontSize(30)
          .border({ width: 1 })
          .padding(10)
        Text('我是超长文本，超出的部分显示省略号。I am an extra long text, with ellipses displayed for any excess。')
          .width(250)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(1)
          .fontSize(30)
          .border({ width: 1 })
          .padding(10)
        Text('当文本溢出其尺寸时，文本将滚动显示。When the text overflows its dimensions, the text will scroll for displaying.')
          .width(250)
          .textOverflow({ overflow: TextOverflow.MARQUEE })
          .maxLines(1)
          .fontSize(30)
          .border({ width: 1 })
          .padding(10)

        //9.通过lineHeight属性设置文本行高
        Text('This is the text with the line height set. This is the text with the line height set.')
          .width(300).fontSize(30).border({ width: 1 }).padding(10)
        Text('This is the text with the line height set. This is the text with the line height set.')
          .width(300).fontSize(30).border({ width: 1 }).padding(10)
          .lineHeight(20)

        //10.通过decoration属性设置文本装饰线样式及其颜色
        Text('This is the text')
          .decoration({
            type: TextDecorationType.LineThrough,
            color: Color.Red
          })
          .borderWidth(1).padding(10).margin(5).fontSize(30)
        Text('This is the text')
          .decoration({
            type: TextDecorationType.Overline,
            color: Color.Red
          })
          .borderWidth(1).padding(10).margin(5).fontSize(30)
        Text('This is the text')
          .decoration({
            type: TextDecorationType.Underline,
            color: Color.Red
          })
          .borderWidth(1).padding(10).margin(5).fontSize(30)

        //11.通过baselineOffset属性设置文本基线的偏移量
        Text('This is the text content with baselineOffset 0.')
          .baselineOffset(0)
          .fontSize(30)
          .border({ width: 1 })
          .padding(10)
          .width('100%')
          .margin(5)
        Text('This is the text content with baselineOffset 30.')
          .baselineOffset(30)
          .fontSize(30)
          .border({ width: 1 })
          .padding(10)
          .width('100%')
          .margin(5)

        Text('This is the text content with baselineOffset -20.')
          .baselineOffset(-20)
          .fontSize(30)
          .border({ width: 1 })
          .padding(10)
          .width('100%')
          .margin(5)

        //12.通过letterSpacing属性设置文本字符间距
        Text('This is the text content with letterSpacing 0.')
          .letterSpacing(0)
          .fontSize(30)
          .border({ width: 1 })
          .padding(10)
          .width('100%')
          .margin(5)
        Text('This is the text content with letterSpacing 3.')
          .letterSpacing(3)
          .fontSize(30)
          .border({ width: 1 })
          .padding(10)
          .width('100%')
          .margin(5)
        Text('This is the text content with letterSpacing -1.')
          .letterSpacing(-1)
          .fontSize(30)
          .border({ width: 1 })
          .padding(10)
          .width('100%')
          .margin(5)

        //13.通过minFontSize与maxFontSize自适应字体大小
        Text('我的最大字号为30，最小字号为5，宽度为250，maxLines为1')
          .width(250)
          .maxLines(1)
          .maxFontSize(30)
          .minFontSize(5)
          .border({ width: 1 })
          .padding(10)
          .margin(5)
        Text('我的最大字号为30，最小字号为5，宽度为250，maxLines为2')
          .width(250)
          .maxLines(2)
          .maxFontSize(30)
          .minFontSize(5)
          .border({ width: 1 })
          .padding(10)
          .margin(5)
        Text('我的最大字号为30，最小字号为15，宽度为250,高度为50')
          .width(250)
          .height(50)
          .maxFontSize(30)
          .minFontSize(15)
          .border({ width: 1 })
          .padding(10)
          .margin(5)
        Text('我的最大字号为30，最小字号为15，宽度为250,高度为100')
          .width(250)
          .height(100)
          .maxFontSize(30)
          .minFontSize(15)
          .border({ width: 1 })
          .padding(10)
          .margin(5)

        //14.通过textCase属性设置文本大小写
        Text('This is the text content with textCase set to Normal.')
          .textCase(TextCase.Normal)
          .padding(10)
          .border({ width: 1 })
          .padding(10)
          .margin(5)
          .fontSize(30)

        // 文本全小写展示
        Text('This is the text content with textCase set to LowerCase.')
          .textCase(TextCase.LowerCase)
          .border({ width: 1 })
          .padding(10)
          .margin(5)
          .fontSize(30)

        // 文本全大写展示
        Text('This is the text content with textCase set to UpperCase.')
          .textCase(TextCase.UpperCase)
          .border({ width: 1 })
          .padding(10)
          .margin(5)
          .fontSize(30)

        //15.通过copyOption属性设置文本是否可复制粘贴
        Text("这是一段可复制文本")
          .fontSize(30)
          .copyOption(CopyOptions.InApp)

        //16.添加事件
        Text('点我--我是Text的点击响应事件')
          .onClick(()=>{
            console.info('我是Text的点击响应事件');
          })
          .fontSize(30)
          .margin(20)

        //17.场景示例
        Row() {
          Text("1").fontSize(30).fontColor(Color.Red).margin({ left: 10, right: 10 })
          Text("我是热搜词条1")
            .fontSize(30)
            .fontColor(Color.Blue)
            .maxLines(1)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
            .fontWeight(300)
          Text("爆")
            .margin({ left: 6 })
            .textAlign(TextAlign.Center)
            .fontSize(30)
            .fontColor(Color.White)
            .fontWeight(600)
            .backgroundColor(0x770100)
            .borderRadius(5)
            .width(15)
            .height(14)
        }.width('100%').margin(5)

        Row() {
          Text("2").fontSize(30).fontColor(Color.Red).margin({ left: 10, right: 10 })
          Text("我是热搜词条2 我是热搜词条2 我是热搜词条2 我是热搜词条2 我是热搜词条2")
            .fontSize(30)
            .fontColor(Color.Blue)
            .fontWeight(300)
            .constraintSize({ maxWidth: 200 })
            .maxLines(1)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
          Text("热")
            .margin({ left: 6 })
            .textAlign(TextAlign.Center)
            .fontSize(30)
            .fontColor(Color.White)
            .fontWeight(600)
            .backgroundColor(0xCC5500)
            .borderRadius(5)
            .width(15)
            .height(14)
        }.width('100%').margin(5)

        Row() {
          Text("3").fontSize(30).fontColor(Color.Orange).margin({ left: 10, right: 10 })
          Text("我是热搜词条3")
            .fontSize(30)
            .fontColor(Color.Blue)
            .fontWeight(300)
            .maxLines(1)
            .constraintSize({ maxWidth: 200 })
            .textOverflow({ overflow: TextOverflow.Ellipsis })
          Text("热")
            .margin({ left: 6 })
            .textAlign(TextAlign.Center)
            .fontSize(30)
            .fontColor(Color.White)
            .fontWeight(600)
            .backgroundColor(0xCC5500)
            .borderRadius(5)
            .width(15)
            .height(14)
        }.width('100%').margin(5)

        Row() {
          Text("4").fontSize(30).fontColor(Color.Grey).margin({ left: 10, right: 10 })
          Text("我是热搜词条4 我是热搜词条4 我是热搜词条4 我是热搜词条4 我是热搜词条4")
            .fontSize(30)
            .fontColor(Color.Blue)
            .fontWeight(300)
            .constraintSize({ maxWidth: 200 })
            .maxLines(1)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
        }.width('100%').margin(5)

      }.width('100%')
    }
    .backgroundColor(0xDCDCDC)
    .scrollable(ScrollDirection.Vertical) // 滚动方向为垂直方向
    .scrollBar(BarState.On) // 滚动条常驻显示
    .scrollBarColor(Color.Gray) // 滚动条颜色
    .scrollBarWidth(10) // 滚动条宽度
    .edgeEffect(EdgeEffect.Spring) // 滚动到边沿后回弹
  }
}