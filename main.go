package main

import (
	"fmt"

	"example.com/vito-blog-server/initialize"
	_ "github.com/go-sql-driver/mysql"
)

func init() {
	// 解析config.yaml配置文件
	initialize.DecoderYaml()

	// 数据库的初始化
	initialize.DbInit()

	// 路由引擎的初始化
	initialize.RouterInit()
}

func main() {
	fmt.Println("Main function is running.")
}
