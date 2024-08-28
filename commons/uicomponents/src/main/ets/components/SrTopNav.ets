import { CommonConstants, ResManager, MyBuilderFunction } from '@sr/utils'

@Component
export struct SrTopNav {
  @State hasMsg: boolean = true
  @BuilderParam
  leftIconBuilder: () => void = MyBuilderFunction
  title: string = ''

  build() {
    Row({ space: 20 }) {
      if (this.leftIconBuilder) {
        this.leftIconBuilder()
      }
      Text(this.title)
        .fontSize(ResManager.TOP_TAB_TEXT_SIZE)
        .fontColor(ResManager.COLOR_DEFAULT)
        .fontWeight(FontWeight.Medium)
      Blank()

      Stack({ alignContent: Alignment.TopEnd }) {
        Image($r('app.media.ic_message')).width(28).aspectRatio(1)
        Text()
          .width(6)
          .aspectRatio(1)
          .backgroundColor('#e34960')
          .borderRadius(3)
          .margin({ top: 3, right: 5 })
          .visibility(this.hasMsg ? Visibility.Visible : Visibility.None)
      }
      .onClick(() => {
        this.hasMsg = !this.hasMsg
      })


      Image($r('app.media.ic_rubbish'))
        .width(28).aspectRatio(1)
    }
    .width(CommonConstants.FULL_PERCENT)
    .height(CommonConstants.TOP_BAR_HEIGHT)
    .backgroundColor(Color.White)
  }
}