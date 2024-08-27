import { Home } from '@sr/home'
import { ResManager } from '@sr/utils/src/main/ets/utils/ResManager'

import { TabBarItem } from '../model/TabBar'

@Entry
@Component
struct Index {
  bottomHeight: number = 0
  @State
  activeIndex: number = 0
  tabBars: TabBarItem[] = [
    { label: 'Home' },
    { label: 'Profile' },
  ]

  @Builder
  TabBarBuilder(item: TabBarItem, index: number) {
    Column() {
      // 文字
      Text(item.label)
        .fontSize(ResManager.TAB_TEXT_SIZE)
        .fontWeight(FontWeight.Medium)
        .fontColor(this.activeIndex === index ? ResManager.COLOR_PRIMARY : ResManager.COLOR_DEFAULT)
    }
  }

  build() {
    Tabs({
      index: $$this.activeIndex
    }) {
      ForEach(this.tabBars, (item: TabBarItem, index: number) => {
        TabContent() {
          if (index === 0) {
            Home()
          } else if (index === 1) {
            Home()
          }
        }
        .tabBar(this.TabBarBuilder(item, index))
        .backgroundColor(ResManager.MAIN_COLOR)
      })
    }
    .barPosition(BarPosition.End)
    .barBackgroundColor('#fff')
    .scrollable(false)
    .padding({ bottom: this.bottomHeight })
  }
}