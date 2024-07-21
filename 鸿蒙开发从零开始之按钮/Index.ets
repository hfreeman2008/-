import { router } from '@kit.ArkUI';

@Entry
@Component

struct Index {
  @State message: string = 'Hello World';

  scroller: Scroller = new Scroller();

  @State FurL:router.RouterOptions = {'url':'pages/first_page'}
  @State SurL:router.RouterOptions = {'url':'pages/second_page'}
  @State TurL:router.RouterOptions = {'url':'pages/third_page'}

  build() {

    Scroll(this.scroller) {

      Column() {

        //1.创建不包含子组件的按钮
        Button('Ok_1', { type: ButtonType.Normal, stateEffect: true })
          .fontSize(30)
          .borderRadius(8)
          .backgroundColor(0x317aff)
          .width(250)
          .height(60)
          .margin(20)

        //2.创建包含子组件的按钮
        Button({ type: ButtonType.Normal, stateEffect: true }) {
          Row() {
            Image($r('app.media.startIcon')).width(60).height(50).margin({ left: 2 })
            Text('loading').fontSize(30).fontColor(0xffffff).margin({ left: 5, right: 12 })
          }.alignItems(VerticalAlign.Center)
        }.borderRadius(8).backgroundColor(0x317aff)
        .width(250)
        .height(60)
        .margin(20)

        //3.胶囊按钮（默认类型）
        Button('胶囊按钮', { type: ButtonType.Capsule, stateEffect: false })
          .backgroundColor(0x317aff)
          .fontSize(30)
          .width(250)
          .height(60)
          .margin(20)

        //4.圆形按钮
        Button('圆形按钮', { type: ButtonType.Circle, stateEffect: false })
          .backgroundColor(0x317aff)
          .fontSize(30)
          .width(250)
          .height(60)
          .margin(20)

        //5.普通按钮
        Button('普通按钮', { type: ButtonType.Normal, stateEffect: true })
          .borderRadius(8)
          .backgroundColor(0x317aff)
          .fontSize(30)
          .width(250)
          .height(60)
          .margin(20)

        //6.设置边框弧度
        Button('设置边框弧度', { type: ButtonType.Normal })
          .borderRadius(20)
          .fontSize(30)
          .width(250)
          .height(60)
          .margin(20)

        //7.设置文本样式。
        Button('设置文本样式', { type: ButtonType.Normal })
          .fontColor(Color.Pink)
          .fontSize(30)
          .width(250)
          .height(60)
          .margin(20)

        //8.设置背景颜色
        Button('设置背景颜色').backgroundColor(0xF55A42)
          .fontSize(30)
          .width(250)
          .height(60)
          .margin(20)

        //9.创建功能型按钮
        //let MarLeft: Record<string, number> = { 'left': 20 }
        Button({ type: ButtonType.Circle, stateEffect: true }) {
          Image($r('app.media.startIcon'))
            .width(50)
            .height(50)
        //}.width(55).height(55).margin(MarLeft).backgroundColor(0xF55A42)
        }.margin({ 'left': 20 }).backgroundColor(0xF55A42)
        .fontSize(30)
        .width(250)
        .height(60)
        .margin(20)

        //10.添加事件
        Button('添加事件', { type: ButtonType.Normal, stateEffect: true })
          .onClick(()=>{
            console.info('Button onClick')
          })
        .fontSize(30)
        .width(250)
        .height(60)
        .margin(20)

        //11.用于启动操作
        List({ space: 4 }) {
          ListItem() {
            Button("First").onClick(() => {
              router.pushUrl(this.FurL)
              console.info('First Button onClick')
            })
              .width('100%')
              .fontSize(30)
          }.margin(20)
          ListItem() {
            Button("Second").onClick(() => {
              router.pushUrl(this.SurL)
              console.info('Second Button onClick')
            })
              .width('100%')
              .fontSize(30)
          }.margin(20)
          ListItem() {
            Button("Third").onClick(() => {
              router.pushUrl(this.TurL)
              console.info('Third Button onClick')
            })
              .width('100%')
              .fontSize(30)
          }.margin(20)
        }
        .listDirection(Axis.Vertical)
        .backgroundColor(0xDCDCDC).padding(20)

        //12.提交表单
        Column() {
          TextInput({ placeholder: 'input your username' }).margin({ top: 10 }).fontSize(30)
          TextInput({ placeholder: 'input your password' }).type(InputType.Password).margin({ top: 20 })
          Button('提交表单').width(300).margin({ top: 20 }).fontSize(30)
            .onClick(() => {
              console.info('提交表单 Button onClick')
            })
        }.padding(10)

        //13.悬浮按钮
        Button() {
          Image($r('app.media.app_icon'))
            .width(50)
            .height(50)
        }
        .onClick(() => {
          console.info('悬浮按钮 Button onClick')
        })
        .width(80)
        .height(80)
        .position({x: '80%', y: 1500})
        .shadow({radius: 10})


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