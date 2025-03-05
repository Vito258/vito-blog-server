package api

import (
	"example.com/vito-blog-server/models/common/response"
	"github.com/gin-gonic/gin"
)

type UserApi struct{}

//	在 Go 语言中，结构体字段名必须以大写字母开头才能被外部包（如 Gin 框架的 JSON 解析器）通过反射访问
//
// 。如果字段名为小写（如 account 和 password），Gin 将无法将 JSON 数据绑定到结构体，导致 req 为空对象
type LoginReq struct {
	Account  string `json:"account"` // 注意首字母大写和标签
	Password string `json:"password"`
}

// 用户登录的方法
func (b *UserApi) UserLogin(c *gin.Context) {
	var req LoginReq
	if err := c.ShouldBindJSON(&req); err != nil {
		response.FailWithMessage("参数错误", c)
		return
	}
	// 调用 service 层的 UserLogin 方法
	user, err := userService.UserLogin(req.Account, req.Password)
	if err != nil {
		response.FailWithMessage("用户名或密码错误", c)
		return
	}
	response.OkWithData(user, c)
}
