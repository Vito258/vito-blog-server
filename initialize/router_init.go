package initialize

import (
	"fmt"

	"example.com/vito-blog-server/router"
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
		systemRouter.InitTestRouter(Router)
		systemRouter.InitTechArticleTypeRouter(Router)
		systemRouter.InitUserRouter(Router)
	}

	// 启动 HTTP 服务器
	fmt.Println("Server is running on :8080")
	if err := Router.Run(":8080"); err != nil {
		panic(err)
	}
}
