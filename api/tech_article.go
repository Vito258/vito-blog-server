package api

import (
	"strconv"

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
	response.OkWithDetailed(gin.H{"articles": ReqArticleList}, "获取成功", c)
}

func (b *TechArticleApi) GetTechArticleListByType(c *gin.Context) {
	typeIdStr := c.Query("typeId")
	typeId, err := strconv.Atoi(typeIdStr)
	if err != nil {
		global.BLOG_LOG.Error("类型ID转换失败!", zap.Error(err))
		response.FailWithMessage("类型ID无效", c)
		return
	}
	ReqArticleList, err := techArticleService.GetTechArticleListByType(typeId)
	if err != nil {
		global.BLOG_LOG.Error("获取失败!", zap.Error(err))
		response.FailWithMessage("获取失败", c)
		return
	}
	response.OkWithDetailed(gin.H{"articles": ReqArticleList}, "获取成功", c)
}

func (b *TechArticleApi) GetTechArticleById(c *gin.Context) {

	idStr := c.Query("id")
	id, err := strconv.Atoi(idStr)
	if err != nil {
		global.BLOG_LOG.Error("文章ID转换失败!", zap.Error(err))
		response.FailWithMessage("文章ID无效", c)
		return
	}
	ReqArticle, err := techArticleService.GetTechArticleById(id)
	if err != nil {
		global.BLOG_LOG.Error("获取失败!", zap.Error(err))
		response.FailWithMessage("获取失败", c)
		return
	}
	response.OkWithDetailed(gin.H{"article": ReqArticle}, "获取成功", c)
}
