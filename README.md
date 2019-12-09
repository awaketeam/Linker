# Linker

## 项目介绍

## 快速上手

### 基础环境
本项目基于 `Flutter` 开发，请自行安装 `Flutter` 环境。
- 可以参考以下教程
    - https://flutter.dev/docs/get-started/install
    - https://flutterchina.club/get-started/install/

环境持续更新. 请定期更新各依赖包.

```dart
// 运行如下命令
flutter --version

// 正确环境如下
// Flutter 1.9.1+hotfix.6 • channel stable • https://github.com/flutter/flutter.git
// Framework • revision 68587a0916 (3 months ago) • 2019-09-13 19:46:58 -0700
// Engine • revision b863200c37
// Tools • Dart 2.5.0
```

### 运行方式
```
// 进入App目录
cd app

// 运行App
flutter run
```

## 开发文档
### 项目目录
- Linker
    - app // 项目代码
        - lib // Flutter代码
            - view // 业务视图
            - component // 业务组件
            - controller // 业务控制器
            - config // 配置
            - route // 路由
            - api // 服务接口
            - service // 服务逻辑
            - model // 底层数据访问
            - util // 工具类库
            main.dart // 项目入口
    - docs 文档
    - plugins 插件代码

### 项目架构
#### 架构分层
项目从上至下分为四大层
- 业务表现层
- 服务接口层
- 服务逻辑层
- 数据访问层

#### 业务表现层
`业务表现层` 通常以页面为粒度定义业务视图，里面可以包含多个业务组件，通过业务控制器控制数据读写
- 业务视图 view
- 业务组件 component
- 业务控制器 controller

#### 服务接口层
`服务接口层` 主要用于对上层屏蔽底层的服务实现，使得底层可以灵活选择本地服务`service`或者插件服务`plugin`
- 服务接口 api

#### 服务逻辑层
`服务逻辑层` 主要对读写服务或者复杂的计算服务进行定义
- 服务逻辑 service

#### 数据访问层
`数据访问层` 主要对`网络`和`存储`进行封装，统一对网络质量和存储异常进行上报或者打印
- 底层数据访问 model

## 贡献说明
### 内部协作
#### 流程
1. 创建开发分支feat_yourbranch，进行开发
1. 创建 `pull request`，选择 `base:dev` `compare:feat_yourbranch`，并指定 `Reviewers`
1. 经过代码审核后会被合并到 `dev` 分支
1. 经过多轮迭代以及充分测试后会被合入 `master` 分支

#### 分支说明
`master` 版本发布分支
`dev` 开发主分支，用于版本迭代，持续集成
`feat_xxx_xxx` 特性（feature）开发分支，命名方式 `feat_模块` 或 `feat_模块_子模块`
`fix_xxx_xxx` bug修复分支，命名方式 `fix_模块` 或 `fix_issue_问题id`

### 第三方共建