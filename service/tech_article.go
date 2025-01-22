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

func (techArticleService *TechArticleService) SaveTechArticle(article *system.TechArticle) (rowsAffected int64, err error) {
	// 新增一条 TechArticle记录
	result := global.BLOG_DB.Save(&article)

	if result.Error != nil {
		return result.RowsAffected, err
	}
	return result.RowsAffected, nil
}

func (techArticleService *TechArticleService) UpdateTechArticle(article *system.TechArticle) (rowsAffected int64, err error) {
	// 修改一条 TechArticle记录
	result := global.BLOG_DB.Model(article).Updates(article)

	if result.Error != nil {
		return result.RowsAffected, result.Error
	}
	return result.RowsAffected, nil
}

func (techArticleService *TechArticleService) DeleteTechArticle(id int) (rowsAffected int64, err error) {
	// 逻辑删除一条 TechArticle记录，将 delete_flag 设置为 true
	result := global.BLOG_DB.Model(&system.TechArticle{}).
		Where("id = ?", id).
		Update("delete_flag", true)

	if result.Error != nil {
		return result.RowsAffected, result.Error
	}
	return result.RowsAffected, nil
}
