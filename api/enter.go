package api

import "example.com/vito-blog-server/service"

type ApiGroup struct {
	TechArticleApi
}

var (
	techArticleService = service.ServiceGroupApp.TechArticleService
)
