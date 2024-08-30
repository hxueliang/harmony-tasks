# HarmonyTasks

鸿蒙任务项目。
所有人员拉取主分支后，创建新分支，新分支命名规则为姓名汉语拼音全拼，所有任务均只能在自己的分支上进行。勿合并到项目主分支。

## 第一天

1. git拉取、新建分支、提交代码（100%）
2. 以三层工程结构的方式，从0-1新建自己的项目（100%）
3. 在commons层，创建ResManager静态资源管理类。（100%）
4. 在commons层，创建CommonConstants公共常量管理类。（100%）
5. 实现product层引入commons层的方法、组件、静态资源文件。（100%）
6. 自建的项目上传到自己的git分支，每日提交。（100%）
7. readme文件里输出git相关学习内容。（100%）
8. 首页布局（100%）
    1. 使用Tabs组件，实现底部导航
    2. 封装顶部导航，实现左侧按钮动态传入
    3. 点击搜索，弹弱提示
    4. 使用常见的布局方式，首页总体样式
    5. 在features层，使用动态共享包，实现首页

## 第二天

1. 编写侧边栏UI（100%）
    1. 使用SideBarContainer实现侧边栏
    2. SideBarContainer控制按钮跟随侧边栏移
    3. 封装侧边栏列表组件
    4. 自宝义组件嵌套自宝义组件，及父子组件通信
    5. 条件渲染
    6. 点击切换列表项样式
2. 启动页UI（100%）
    1. 使用RelativeContainer相对布局
    2. 使用expandSafeArea属性扩展安全区域
    3. 实用应用子窗口实现启动页
    4. 点击按钮关闭子窗口，展示首页
3. 登录页UI
    1. 复用之前封装好的顶部导航，传左侧返回按钮和标题
    2. 在features层，使用hsp包，实现登录页

## 第三天

1. 登录页UI
    1. 使用策略模式优化分支结构：使用Record生成密码强度Map，从而设置强度样式
    2. 使用shadow实现阴影
    3. 使用import动态导入hsp登录页
    4. 模似未登录，使用命名路由跳转登录页
2. 个人中心页UI
    1. 复用之前封装好的顶部导航，传左侧返回按钮和标题
    2. 使用绝对定位，实现头像溢出效果
    3. 使用rotate，解决背景切图边缘不是90度的问题
    4. @Builder，复用数据统计项目
    5. 使用setWindowLayoutFullScreen，实现页面全屏
3. 其它工作
    1. 指导胡洪涛解决HAP无法跳转HSP页面的问题（100%）
    2. 指导李洪军解决模似器无法热更新的问题（100%）
    3. 参加一小时的入职培训会议（100%）

## 第四天

1. 完成登录数据持久化和退出登录
    1. 登录和注册相互切换
    2. 在commons层，创建datastore模块，统一管理首选项，用来持久化登录数据
    3. 创建无渲染组件，来进行登录页和首页的分发
    4. 使用setKeyboardAvoidMode，设置键盘避让
    5. 退出登录返回登录页，退出状态下杀死应用，再次打开展示登录页
    6. 登录状态下杀死应用，再次打开展示首页