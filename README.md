# 简单Java应用 - AWS CodePipeline部署示例

这是一个简单的Java应用程序，用于演示如何使用AWS CodePipeline将应用程序部署到EC2实例。

## 项目结构

```
.
├── src/                    # Java源代码
├── scripts/                # 部署脚本
├── appspec.yml             # AWS CodeDeploy配置文件
├── buildspec.yml           # AWS CodeBuild配置文件
└── pom.xml                 # Maven项目配置
```

## 部署流程

1. 代码推送到GitHub仓库
2. AWS CodePipeline检测到代码变更并启动流水线
3. CodeBuild阶段使用Maven构建Java应用
4. CodeDeploy阶段将应用部署到EC2实例

## AWS CodePipeline设置步骤

1. 在AWS管理控制台中创建CodePipeline
2. 配置源阶段为GitHub仓库
3. 配置构建阶段使用CodeBuild和buildspec.yml
4. 配置部署阶段使用CodeDeploy和appspec.yml
5. 启动流水线

## EC2实例要求

- Amazon Linux 2
- IAM角色附加了适当的权限
- 已安装CodeDeploy代理

## 部署脚本说明

- `before_install.sh`: 安装必要的依赖
- `after_install.sh`: 设置文件权限
- `start_application.sh`: 启动Java应用
- `stop_application.sh`: 停止Java应用
