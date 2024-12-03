package api

import "example.com/vito-blog-server/service"

type ApiGroup struct {
	TechArticleApi
	TechArticleTypeApi
}

var (
	techArticleService     = service.ServiceGroupApp.TechArticleService
	techArticleTypeService = service.ServiceGroupApp.TechArticleTypeService
)
