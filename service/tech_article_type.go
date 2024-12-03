package service

import (
	"example.com/vito-blog-server/global"
	"example.com/vito-blog-server/models/system"
)

type TechArticleTypeService struct{}

func (techArticleTypeService *TechArticleTypeService) GetTechArticleTypeList() (list []system.TechArticleType, err error) {
	// 查询所有 TechArticleType 记录
	err = global.BLOG_DB.Find(&list).Error
	if err != nil {
		return nil, err
	}
	return list, nil
}
