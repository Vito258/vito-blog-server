package initialize

import (
	"example.com/vito-blog-server/router"
	"fmt"
	"github.com/gin-gonic/gin"
)

// 初始化总路由
func RouterInit() {

	Router := gin.New()
	Router.Use(gin.Recovery())
	if gin.Mode() == gin.DebugMode {
		Router.Use(gin.Logger())
	}

	systemRouter := router.RouterGroup{}

	// 注册路由
	{
		systemRouter.InitTechArticleRouter(Router)
	}

	// 启动 HTTP 服务器
	fmt.Println("Server is running on :8080")
	if err := Router.Run(":8080"); err != nil {
		panic(err)
	}
}
