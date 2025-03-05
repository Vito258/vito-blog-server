package api

import "example.com/vito-blog-server/service"

type ApiGroup struct {
	TechArticleApi
	TechArticleTypeApi
	UserApi
}

var (
	techArticleService     = service.ServiceGroupApp.TechArticleService
	techArticleTypeService = service.ServiceGroupApp.TechArticleTypeService
	userService            = service.ServiceGroupApp.UserService
)
