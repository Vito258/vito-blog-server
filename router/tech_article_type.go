package router

import (
	"example.com/vito-blog-server/api"
	"github.com/gin-gonic/gin"
)

type TechArticleTypeRouter struct{}

func (r *TechArticleRouter) InitTechArticleTypeRouter(Router *gin.Engine) {
	//techArticleRouter := Router.Group("techArticle").Use(middleware.OperationRecord())
	techArticleTypeRouterWithoutRecord := Router.Group("/techArticleTypes")
	{
		//techArticleRouter.POST("createTechArticle", CreateTechArticle)
		//techArticleRouter.POST("deleteTechArticle", DeleteTechArticle)
		//techArticleRouter.POST("updateTechArticle", UpdateTechArticle)
		//techArticleRouter.POST("getTechArticleList", GetTechArticleList)
	}
	{
		//techArticleRouterWithoutRecord.POST("createTechArticle", CreateTechArticle)
		techArticleTypeRouterWithoutRecord.GET("getTechArticleTypeList", (&api.TechArticleTypeApi{}).GetTechArticleTypeList)
	}
}
