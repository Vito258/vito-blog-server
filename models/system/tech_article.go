package system

import "time"

type TechArticle struct {
	Id            int       `json:"id" gorm:"index;comment:技术杂谈文章Id"`                                                              // 技术杂谈文章Id
	TypeId        int       `json:"typeId" gorm:"index;comment:技术杂谈文章类型Id"`                                                        // 技术杂谈文章类型Id
	Title         string    `json:"title"  gorm:"comment:技术杂谈文章标题"`                                                                // 技术杂谈文章标题
	Content       string    `json:"content" gorm:"comment:用户昵称"`                                                                   // 技术杂谈文章内容
	CoverImageUrl string    `json:"coverImageUrl" gorm:"default:https://qmplusimg.henrongyi.top/BLOG_header.jpg;comment:技术杂谈文章封面"` // 技术杂谈文章封面
	CreatedDate   time.Time `json:"createdDate"  gorm:"comment:创建日期"`                                                              // 创建日期
	UpdatedDate   time.Time `json:"updatedDate"  gorm:"comment:更新日期"`                                                              // 更新日期
}

// 显示指定表名
func (TechArticle) TableName() string {
	return "blog_tech_articles"
}
