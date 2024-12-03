package system

type TechArticleType struct {
	Id       int    `json:"id" gorm:"index;comment:技术杂谈文章类型Id"`  // 技术杂谈文章类型Id
	TypeName string `json:"typeName"  gorm:"comment:技术杂谈文章类型名称"` // 技术杂谈文章类型名称
}

// 显示指定表名
func (TechArticleType) TableName() string {
	return "blog_tech_articles_types"
}
