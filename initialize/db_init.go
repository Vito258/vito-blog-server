package initialize

import (
	"fmt"

	"example.com/vito-blog-server/global"
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

func DbInit() {
	dsn := fmt.Sprintf("%s:%s@tcp(%s:%d)/%s?%s",
		global.BLOG_CONFIG.Database.Username,
		global.BLOG_CONFIG.Database.Password,
		global.BLOG_CONFIG.Database.Path,
		global.BLOG_CONFIG.Database.Port,
		global.BLOG_CONFIG.Database.DBName,
		global.BLOG_CONFIG.Database.Config,
	)
	db, err := gorm.Open(mysql.New(mysql.Config{
		DriverName: global.BLOG_CONFIG.Database.DriverName,
		DSN:        dsn, // data source name, 详情参考：https://github.com/go-sql-driver/mysql#dsn-data-source-name
	}), &gorm.Config{})
	if err != nil {
		panic("failed to connect database")
	}

	// 设置全局的 BLOG_DB
	global.BLOG_DB = db

	// 迁移 schema
	// db.AutoMigrate(&system.BlogUser{})
}
