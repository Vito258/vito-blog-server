package api

import (
	"example.com/vito-blog-server/global"
	"example.com/vito-blog-server/models/common/response"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type TechArticleApi struct{}

func (b *TechArticleApi) GetTechArticleList(c *gin.Context) {

	ReqArticleList, err := techArticleService.GetTechArticleList()
	if err != nil {
		global.BLOG_LOG.Error("获取失败!", zap.Error(err))
		response.FailWithMessage("获取失败", c)
		return
	}
	response.OkWithDetailed(gin.H{"article": ReqArticleList}, "获取成功", c)
}
