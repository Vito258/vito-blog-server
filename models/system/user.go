package system

import "gorm.io/gorm"

type BlogUser struct {
	gorm.Model
	Id       int    `gorm:"column:id"`
	UserName string `gorm:"column:username"`
	PassWord string `gorm:"column:password"`
}
