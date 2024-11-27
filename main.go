package main

import (
	"example.com/vito-blog-server/initialize"
	"fmt"
	_ "github.com/go-sql-driver/mysql"
)

func init() {
	initialize.DbInit()

	// 路由引擎的初始化
	initialize.RouterInit()
}

func main() {
	fmt.Println("Main function is running.")
}
