package api

import (
	"example.com/vito-blog-server/models/common/response"
	"github.com/gin-gonic/gin"
)

type TestApi struct{}

func (b *TestApi) GetMsg(c *gin.Context) {
	response.OkWithDetailed(gin.H{"msg": "测试连接成功"}, "获取成功", c)
}
