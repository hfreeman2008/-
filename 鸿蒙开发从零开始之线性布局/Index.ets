@Entry
@Component
struct Index {
  @State message: string = 'RowColumn Demo';

  scroller: Scroller = new Scroller();
  private arr: number[] = [0, 1, 2, 3, 4];

  build() {

    Scroll(this.scroller) {
      Column() {
        //1.Column
        Column({ space: 20 }) {
          Text('1.Column space: 20').fontSize(25).fontColor(Color.Gray).width('90%')
          Row().width('90%').height(20).backgroundColor(0xF5DEB3)
          Row().width('90%').height(20).backgroundColor(0xD2B48C)
          Row().width('90%').height(20).backgroundColor(0xF5DEB3)
        }.width('100%').margin(10)

        //2.Row
        Row({ space: 35 }) {
          Text('2.Row space: 35').fontSize(25).fontColor(Color.Gray)
          Row().width('10%').height(50).backgroundColor(0x0000FF)
          Row().width('10%').height(50).backgroundColor(0x871F78)
          Row().width('10%').height(50).backgroundColor(0x0000FF)
        }.width('90%').margin(20)

        //3.Column alignItems HorizontalAlign.Start
        Column({}) {
          Column() {
            Text('3.Column alignItems HorizontalAlign.Start').fontSize(18).fontColor(Color.Gray).width('100%')
          }.width('80%').height(50).backgroundColor(0xF5DEB3)

          Column() {
          }.width('80%').height(50).backgroundColor(0xD2B48C)

          Column() {
          }.width('80%').height(50).backgroundColor(0xF5DEB3)
        }.width('100%').alignItems(HorizontalAlign.Start).backgroundColor('rgb(242,242,242)').margin(20)


        //4.Column alignItems HorizontalAlign.Center
        Column({}) {
          Column() {
            Text('4.Column alignItems HorizontalAlign.Center').fontSize(18).fontColor(Color.Gray).width('100%')
          }.width('80%').height(50).backgroundColor(0x0000FF)

          Column() {
          }.width('80%').height(50).backgroundColor(0x871F78)

          Column() {
          }.width('80%').height(50).backgroundColor(0x0000FF)
        }.width('100%').alignItems(HorizontalAlign.Center).backgroundColor('rgb(242,242,242)').margin(20)

        //5.Column alignItems HorizontalAlign.End
        Column({}) {
          Column() {
            Text('5.Column alignItems HorizontalAlign.End').fontSize(18).fontColor(Color.Gray).width('100%')
          }.width('80%').height(50).backgroundColor(0xF5DEB3)

          Column() {
          }.width('80%').height(50).backgroundColor(0xD2B48C)

          Column() {
          }.width('80%').height(50).backgroundColor(0xF5DEB3)
        }.width('100%').alignItems(HorizontalAlign.End).backgroundColor('rgb(242,242,242)').margin(20)

        //6.Row alignItems VerticalAlign.Top
        Row({}) {
          Column() {
            Text('6.Column alignItems VerticalAlign.Top').fontSize(18).fontColor(Color.Gray).width('100%')
          }.width('20%').height(30).backgroundColor(0x0000FF)

          Column() {
          }.width('20%').height(30).backgroundColor(0x871F78)

          Column() {
          }.width('20%').height(30).backgroundColor(0x0000FF)
        }.width('100%').height(100).alignItems(VerticalAlign.Top).backgroundColor('rgb(242,242,242)').margin(20)

        //7.Row alignItems VerticalAlign.Center
        Row({}) {
          Column() {
            Text('7.Column alignItems VerticalAlign.Center').fontSize(18).fontColor(Color.Gray).width('100%')
          }.width('20%').height(30).backgroundColor(0xF5DEB3)

          Column() {
          }.width('20%').height(30).backgroundColor(0xD2B48C)

          Column() {
          }.width('20%').height(30).backgroundColor(0xF5DEB3)
        }.width('100%').height(100).alignItems(VerticalAlign.Center).backgroundColor('rgb(242,242,242)').margin(20)

        //8.Row alignItems VerticalAlign.Bottom
        Row({}) {
          Column() {
            Text('8.Column alignItems VerticalAlign.Bottom').fontSize(18).fontColor(Color.Gray).width('100%')
          }.width('20%').height(30).backgroundColor(0x0000FF)

          Column() {
          }.width('20%').height(30).backgroundColor(0x871F78)

          Column() {
          }.width('20%').height(30).backgroundColor(0x0000FF)
        }.width('100%').height(100).alignItems(VerticalAlign.Bottom).backgroundColor('rgb(242,242,242)').margin(20)

        //9.Column justifyContent FlexAlign.Start
        Column({}) {
          Column() {
            Text('9.Column justifyContent FlexAlign.Start').fontSize(18).fontColor(Color.Gray).width('100%')
          }.width('80%').height(50).backgroundColor(0xF5DEB3)

          Column() {
          }.width('80%').height(50).backgroundColor(0xD2B48C)

          Column() {
          }.width('80%').height(50).backgroundColor(0xF5DEB3)
        }.width('100%').height(250).backgroundColor('rgb(242,242,242)').justifyContent(FlexAlign.Start).margin(20)




        //14.Column justifyContent FlexAlign.SpaceEvenly
        Column({}) {
          Column() {
            Text('14.Column justifyContent FlexAlign.SpaceEvenly').fontSize(18).fontColor(Color.Gray).width('100%')
          }.width('80%').height(50).backgroundColor(0x0000FF)

          Column() {
          }.width('80%').height(50).backgroundColor(0x871F78)

          Column() {
          }.width('80%').height(50).backgroundColor(0x0000FF)
        }.width('100%').height(250).backgroundColor('rgb(242,242,242)').justifyContent(FlexAlign.SpaceEvenly).margin(20)


        //15.Row justifyContent FlexAlign.Start
        Row({}) {
          Column() {
            Text('15.Row justifyContent FlexAlign.Start').fontSize(18).fontColor(Color.Gray).width('100%')
          }.width('20%').height(30).backgroundColor(0xF5DEB3)

          Column() {
          }.width('20%').height(30).backgroundColor(0xD2B48C)

          Column() {
          }.width('20%').height(30).backgroundColor(0xF5DEB3)
        }.width('100%').height(150).backgroundColor('rgb(242,242,242)').justifyContent(FlexAlign.Start).margin(20)



        //20.Row justifyContent FlexAlign.SpaceEvenly
        Row({}) {
          Column() {
            Text('20.Row justifyContent FlexAlign.SpaceEvenly').fontSize(18).fontColor(Color.Gray).width('100%')
          }.width('20%').height(30).backgroundColor(0x0000FF)

          Column() {
          }.width('20%').height(30).backgroundColor(0x871F78)

          Column() {
          }.width('20%').height(30).backgroundColor(0x0000FF)
        }.width('100%').height(200).backgroundColor('rgb(242,242,242)').justifyContent(FlexAlign.SpaceEvenly).margin(20)


        //21.Blank 自适应拉伸
        Row() {
          Text('21.自适应拉伸 Bluetooth').fontSize(18)
          Blank()
          Toggle({ type: ToggleType.Switch, isOn: true })
        }.backgroundColor(0xFFFFFF).borderRadius(15).padding({ left: 12 }).width('100%').margin(20)

        //22.自适应缩放 layoutWeight
        Column() {
          Text('22.自适应缩放 layoutWeight 1:2:3').width('100%')
          Row() {
            Column() {
              Text('layoutWeight(1)')
                .textAlign(TextAlign.Center)
            }.layoutWeight(1).backgroundColor(0xF5DEB3).height('100%')

            Column() {
              Text('layoutWeight(2)')
                .textAlign(TextAlign.Center)
            }.layoutWeight(2).backgroundColor(0xD2B48C).height('100%')

            Column() {
              Text('layoutWeight(3)')
                .textAlign(TextAlign.Center)
            }.layoutWeight(3).backgroundColor(0xF5DEB3).height('100%')

          }.backgroundColor(0xffd306).height('30%')

          Text('22.自适应缩放 layoutWeight 2:5:3').width('100%')
          Row() {
            Column() {
              Text('layoutWeight(2)')
                .textAlign(TextAlign.Center)
            }.layoutWeight(2).backgroundColor(0xF5DEB3).height('100%')

            Column() {
              Text('layoutWeight(5)')
                .textAlign(TextAlign.Center)
            }.layoutWeight(5).backgroundColor(0xD2B48C).height('100%')

            Column() {
              Text('layoutWeight(3)')
                .textAlign(TextAlign.Center)
            }.layoutWeight(3).backgroundColor(0xF5DEB3).height('100%')
          }.backgroundColor(0xffd306).height('30%')
        }.margin(20)

        //23.自适应缩放 width 百分比
        Column() {
          Row() {
            Column() {
              Text('23.自适应缩放 width 百分比 left width 20%')
                .textAlign(TextAlign.Center)
            }.width('20%').backgroundColor(0xF5DEB3).height('100%')

            Column() {
              Text('center width 50%')
                .textAlign(TextAlign.Center)
            }.width('50%').backgroundColor(0xD2B48C).height('100%')

            Column() {
              Text('right width 30%')
                .textAlign(TextAlign.Center)
            }.width('30%').backgroundColor(0xF5DEB3).height('100%')
          }.backgroundColor(0xffd306).height('30%')
        }.margin(20)


        //24.自适应延伸
        Column() {
          ForEach(this.arr, (item?:number|undefined) => {
            if(item){
              Text('24.自适应延伸' + item.toString())
                .width('90%')
                .height(50)
                .backgroundColor(0xFFFFFF)
                .borderRadius(15)
                .fontSize(16)
                .textAlign(TextAlign.Center)
                .margin({ top: 10 })
            }
          }, (item:number) => item.toString())
        }.width('100%').margin(20)






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