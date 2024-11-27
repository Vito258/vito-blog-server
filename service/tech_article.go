package service

import (
	"example.com/vito-blog-server/global"
	"example.com/vito-blog-server/models/system"
)

type TechArticleService struct{}

func (techArticleService *TechArticleService) GetTechArticleList() (list []system.TechArticle, err error) {
	// 查询所有 TechArticle 记录
	err = global.BLOG_DB.Find(&list).Error
	if err != nil {
		return nil, err
	}
	return list, nil
}
