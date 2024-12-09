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

func (techArticleService *TechArticleService) GetTechArticleListByType(typeId int) (list []system.TechArticle, err error) {
	// 按照 typeId 查询 TechArticle 的所有记录
	err = global.BLOG_DB.Find(&list, "type_id = ?", typeId).Error
	if err != nil {
		return nil, err
	}
	return list, nil
}

func (techArticleService *TechArticleService) GetTechArticleById(id int) (article *system.TechArticle, err error) {
	// 按照 Id 查询 TechArticle 的单条记录
	err = global.BLOG_DB.First(&article, "id = ?", id).Error
	if err != nil {
		return nil, err
	}
	return article, nil
}
