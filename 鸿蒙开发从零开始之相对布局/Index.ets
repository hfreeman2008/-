import text from '@ohos.graphics.text';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';



  build() {


    // //Demo 1
    // RelativeContainer() {
    //
    //   Row().width(100).height(100)
    //     .backgroundColor('#ff3339ff')
    //     .alignRules({
    //       top: {anchor: "__container__", align: VerticalAlign.Top},
    //       left: {anchor: "__container__", align: HorizontalAlign.Start}
    //     })
    //     .id("row1")
    //
    //   Row().width(100)
    //     .backgroundColor('#ff298e1e')
    //     .alignRules({
    //       top: {anchor: "__container__", align: VerticalAlign.Top},
    //       right: {anchor: "__container__", align: HorizontalAlign.End},
    //       bottom: {anchor: "row1", align: VerticalAlign.Center},
    //     })
    //     .id("row2")
    //
    //   Row().height(100)
    //     .backgroundColor('#ffff6a33')
    //     .alignRules({
    //       top: {anchor: "row1", align: VerticalAlign.Bottom},
    //       left: {anchor: "row1", align: HorizontalAlign.Start},
    //       right: {anchor: "row2", align: HorizontalAlign.Start}
    //     })
    //     .id("row3")
    //
    //   Row()
    //     .backgroundColor('#ffff33fd')
    //     .alignRules({
    //       top: {anchor: "row3", align: VerticalAlign.Bottom},
    //       left: {anchor: "row1", align: HorizontalAlign.Center},
    //       right: {anchor: "row2", align: HorizontalAlign.End},
    //       bottom: {anchor: "__container__", align: VerticalAlign.Bottom}
    //     })
    //     .id("row4")
    //
    // }
    // .width(300).height(300)
    // .margin({left: 50})
    // .border({width:2, color: "#6699FF"})



    // //Demo 2
    // RelativeContainer() {
    //   Row(){
    //     Text('row1')
    //   }.width(100).height(100)
    //     .backgroundColor("#FF3333")
    //     .alignRules({
    //       top: {anchor: "__container__", align: VerticalAlign.Top},
    //       left: {anchor: "__container__", align: HorizontalAlign.Start}
    //     })
    //     .id("row1")
    //
    //   Row(){
    //     Text('row2')
    //   }.width(100)
    //     .backgroundColor("#FFCC00")
    //     .alignRules({
    //       top: {anchor: "__container__", align: VerticalAlign.Top},
    //       right: {anchor: "__container__", align: HorizontalAlign.End},
    //       bottom: {anchor: "row1", align: VerticalAlign.Center},
    //     })
    //     .offset({
    //       x:-40,
    //       y:-20
    //     })
    //     .id("row2")
    //
    //   Row(){
    //     Text('row3')
    //   }
    //   .height(100)
    //     .backgroundColor("#FF6633")
    //     .alignRules({
    //       top: {anchor: "row1", align: VerticalAlign.Bottom},
    //       left: {anchor: "row1", align: HorizontalAlign.End},
    //       right: {anchor: "row2", align: HorizontalAlign.Start}
    //     })
    //     .offset({
    //       x:-10,
    //       y:-20
    //     })
    //     .id("row3")
    //
    //   Row(){
    //     Text('row4')
    //   }
    //     .backgroundColor("#FF9966")
    //     .alignRules({
    //       top: {anchor: "row3", align: VerticalAlign.Bottom},
    //       bottom: {anchor: "__container__", align: VerticalAlign.Bottom},
    //       left: {anchor: "__container__", align: HorizontalAlign.Start},
    //       right: {anchor: "row1", align: HorizontalAlign.End}
    //     })
    //     .offset({
    //       x:-10,
    //       y:-30
    //     })
    //     .id("row4")
    //
    //   Row(){
    //     Text('row5')
    //   }
    //     .backgroundColor("#FF66FF")
    //     .alignRules({
    //       top: {anchor: "row3", align: VerticalAlign.Bottom},
    //       bottom: {anchor: "__container__", align: VerticalAlign.Bottom},
    //       left: {anchor: "row2", align: HorizontalAlign.Start},
    //       right: {anchor: "row2", align: HorizontalAlign.End}
    //     })
    //     .offset({
    //       x:10,
    //       y:20
    //     })
    //     .id("row5")
    //
    //   Row(){
    //     Text('row6')
    //   }
    //     .backgroundColor('#ff33ffb5')
    //     .alignRules({
    //       top: {anchor: "row3", align: VerticalAlign.Bottom},
    //       bottom: {anchor: "row4", align: VerticalAlign.Bottom},
    //       left: {anchor: "row3", align: HorizontalAlign.Start},
    //       right: {anchor: "row3", align: HorizontalAlign.End}
    //     })
    //     .offset({
    //       x:-15,
    //       y:10
    //     })
    //     .backgroundImagePosition(Alignment.Bottom)
    //     .backgroundImageSize(ImageSize.Cover)
    //     .id("row6")
    // }
    // .width(300).height(300)
    // .margin({left: 50})
    // .border({width:2, color: "#6699FF"})


    // //Demo 3
    // RelativeContainer() {
    //   Row(){}.width(100).height(100)
    //     .backgroundColor('#ff33ffcc')
    //     .alignRules({
    //       top: {anchor: "__container__", align: VerticalAlign.Top},
    //       left: {anchor: "__container__", align: HorizontalAlign.Start}
    //     })
    //     .id("row1")
    //
    //   Column(){
    //     Text('row2')
    //   }.width('50%').height(30).backgroundColor(0xAFEEEE)
    //     .alignRules({
    //       top: {anchor: "__container__", align: VerticalAlign.Top},
    //       left: {anchor: "__container__", align: HorizontalAlign.Center}
    //     }).id("row2")
    //
    //   Flex({ direction: FlexDirection.Row }) {
    //     Text('1').width('20%').height(50).backgroundColor(0xF5DEB3)
    //     Text('2').width('20%').height(50).backgroundColor(0xD2B48C)
    //     Text('3').width('20%').height(50).backgroundColor(0xF5DEB3)
    //     Text('4').width('20%').height(50).backgroundColor(0xD2B48C)
    //   }
    //   .padding(10)
    //   .backgroundColor('#ffedafaf')
    //   .alignRules({
    //     top: {anchor: "row2", align: VerticalAlign.Bottom},
    //     left: {anchor: "__container__", align: HorizontalAlign.Start},
    //     bottom: {anchor: "__container__", align: VerticalAlign.Center},
    //     right: {anchor: "row2", align: HorizontalAlign.Center}
    //   })
    //   .id("row3")
    //
    //   Stack({ alignContent: Alignment.Bottom }) {
    //     Text('First child, show in bottom').width('90%').height('100%').backgroundColor(0xd2cab3).align(Alignment.Top)
    //     Text('Second child, show in top').width('70%').height('60%').backgroundColor(0xc1cbac).align(Alignment.Top)
    //   }
    //   .margin({ top: 5 })
    //   .alignRules({
    //     top: {anchor: "row3", align: VerticalAlign.Bottom},
    //     left: {anchor: "__container__", align: HorizontalAlign.Start},
    //     bottom: {anchor: "__container__", align: VerticalAlign.Bottom},
    //     right: {anchor: "row3", align: HorizontalAlign.End}
    //   })
    //   .id("row4")
    //
    // }
    // .width(300).height(300)
    // .margin({left: 20})
    // .border({width:2, color: "#6699FF"})


    //Demo 4
    RelativeContainer() {
      Row(){
        Text('row1').fontSize(30)
      }.width(100).height(100)
        .backgroundColor("#FF3333")
        .alignRules({
          top: {anchor: "__container__", align: VerticalAlign.Top},
          left: {anchor: "__container__", align: HorizontalAlign.Start}
        })
        .id("row1")

      Row(){
        Text('row2').fontSize(30)
      }.width(100)
        .backgroundColor("#FFCC00")
        .alignRules({
          top: {anchor: "__container__", align: VerticalAlign.Top},
          right: {anchor: "__container__", align: HorizontalAlign.End},
          bottom: {anchor: "row1", align: VerticalAlign.Center},
        })
        .id("row2")

      Row(){
        Text('row3').fontSize(30)
      }.height(100)
        .backgroundColor("#FF6633")
        .alignRules({
          top: {anchor: "row1", align: VerticalAlign.Bottom},
          left: {anchor: "row1", align: HorizontalAlign.End},
          right: {anchor: "row2", align: HorizontalAlign.Start}
        })
        .id("row3")

      Row(){
        Text('row4').fontSize(30)
      }
        .backgroundColor("#FF9966")
        .alignRules({
          top: {anchor: "row3", align: VerticalAlign.Bottom},
          bottom: {anchor: "__container__", align: VerticalAlign.Bottom},
          left: {anchor: "__container__", align: HorizontalAlign.Start},
          right: {anchor: "row1", align: HorizontalAlign.End}
        })
        .id("row4")

      Row(){
        Text('row5').fontSize(30)
      }
        .backgroundColor("#FF66FF")
        .alignRules({
          top: {anchor: "row3", align: VerticalAlign.Bottom},
          bottom: {anchor: "__container__", align: VerticalAlign.Bottom},
          left: {anchor: "row2", align: HorizontalAlign.Start},
          right: {anchor: "row2", align: HorizontalAlign.End}
        })
        .id("row5")

      Row(){
        Text('row6').fontSize(30)
      }
        .backgroundColor('#ff33ffb5')
        .alignRules({
          top: {anchor: "row3", align: VerticalAlign.Bottom},
          bottom: {anchor: "row4", align: VerticalAlign.Bottom},
          left: {anchor: "row3", align: HorizontalAlign.Start},
          right: {anchor: "row3", align: HorizontalAlign.End}
        })
        .id("row6")
        .backgroundImagePosition(Alignment.Bottom)
        .backgroundImageSize(ImageSize.Cover)
    }
    .width(300).height(300)
    .margin({left: 10})
    .border({width:2, color: "#6699FF"})




  }
}