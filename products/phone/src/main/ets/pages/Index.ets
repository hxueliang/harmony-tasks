import { add, CommonConstants, ResManager } from '@sr/utils'
import { SrTest } from '@sr/uicomponents'

@Entry
@Component
struct Index {
  @State one: number = 1
  @State two: number = 2
  @State count: number = 0

  build() {
    Column({ space: 20 }) {
      // 引入静态资源
      Image(ResManager.IC_HEADER)
        .width(ResManager.HEADER_WIDTH)
        .height(ResManager.HEADER_WIDTH)
        .borderRadius(ResManager.HEADER_WIDTH_RADIUS)

      // 引用commons层的add方法
      Text(`${this.one} + ${this.two} = ${this.count}`)
        .fontSize(50)
        .onClick(() => {
          this.count = add(this.one, this.two)
        })

      // 引用commons层的SrTest组件
      SrTest()
    }
    .justifyContent(FlexAlign.Center)
    .height(CommonConstants.FULL_PERCENT)
    .width(CommonConstants.FULL_PERCENT)
  }
}