package router

import (
	"example.com/vito-blog-server/api"
	"github.com/gin-gonic/gin"
)

type TestRouter struct{}

func (r *TestRouter) InitTestRouter(Router *gin.Engine) {
	techArticleRouterWithoutRecord := Router.Group("/test")
	{
		techArticleRouterWithoutRecord.GET("getMsg", (&api.TestApi{}).GetMsg)
	}
}
