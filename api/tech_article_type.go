package api

import (
	"example.com/vito-blog-server/global"
	"example.com/vito-blog-server/models/common/response"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type TechArticleTypeApi struct{}

func (b *TechArticleTypeApi) GetTechArticleTypeList(c *gin.Context) {

	ReqArticleTypeList, err := techArticleTypeService.GetTechArticleTypeList()
	if err != nil {
		global.BLOG_LOG.Error("获取失败!", zap.Error(err))
		response.FailWithMessage("获取失败", c)
		return
	}
	response.OkWithDetailed(gin.H{"articleTypes": ReqArticleTypeList}, "获取成功", c)
}
