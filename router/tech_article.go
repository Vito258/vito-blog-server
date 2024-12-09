package router

import (
	"example.com/vito-blog-server/api"
	"github.com/gin-gonic/gin"
)

type TechArticleRouter struct{}

func (r *TechArticleRouter) InitTechArticleRouter(Router *gin.Engine) {
	//techArticleRouter := Router.Group("techArticle").Use(middleware.OperationRecord())
	techArticleRouterWithoutRecord := Router.Group("/techArticles")
	{
		//techArticleRouter.POST("createTechArticle", CreateTechArticle)
		//techArticleRouter.POST("deleteTechArticle", DeleteTechArticle)
		//techArticleRouter.POST("updateTechArticle", UpdateTechArticle)
		//techArticleRouter.POST("getTechArticleList", GetTechArticleList)
	}
	{
		//techArticleRouterWithoutRecord.POST("createTechArticle", CreateTechArticle)
		techArticleRouterWithoutRecord.GET("getTechArticleList", (&api.TechArticleApi{}).GetTechArticleList)
		techArticleRouterWithoutRecord.GET("getTechArticleListByType", (&api.TechArticleApi{}).GetTechArticleListByType)
		techArticleRouterWithoutRecord.GET("getTechArticleById", (&api.TechArticleApi{}).GetTechArticleById)
	}
}
