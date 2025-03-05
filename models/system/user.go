package system

import (
	"time"
)

type User struct {
	Id          int       `gorm:"column:id;comment:用户Id"`
	Account     string    `gorm:"column:account;comment:账户" binding:"required,alphanum,min=3,max=20"`
	Password    string    `gorm:"column:password;comment:密码" binding:"required,min=8"`
	NickName    string    `gorm:"column:nickname;comment:用户昵称"`
	CreatedDate time.Time `json:"createdDate"  gorm:"default:CURRENT_TIMESTAMP;comment:创建日期"`
	UpdatedDate time.Time `json:"updatedDate"  gorm:"default:CURRENT_TIMESTAMP;comment:更新日期"`
	DeleteFlag  bool      `json:"deleteFlag" gorm:"default:false;comment:删除标志"`
}

// 显示指定表名
func (User) TableName() string {
	return "blog_users"
}
