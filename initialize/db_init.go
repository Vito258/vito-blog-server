package initialize

import (
	"example.com/vito-blog-server/global"
	"example.com/vito-blog-server/models/system"
	"fmt"
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

func DbInit() {
	db, err := gorm.Open(mysql.New(mysql.Config{
		DriverName: "mysql",
		DSN:        "root:123456@tcp(localhost:3306)/blog?charset=utf8&parseTime=True&loc=Local", // data source name, 详情参考：https://github.com/go-sql-driver/mysql#dsn-data-source-name
	}), &gorm.Config{})
	if err != nil {
		panic("failed to connect database")
	}

	// 设置全局的 BLOG_DB
	global.BLOG_DB = db

	// 迁移 schema
	db.AutoMigrate(&system.BlogUser{})

	// Create
	db.Create(&system.BlogUser{Id: 1})

	// Read
	var user system.BlogUser
	db.First(&user, 1) // 根据整型主键查找\

	fmt.Printf("username: %s\n", user.UserName)
}
