package initialize

import (
	"example.com/vito-blog-server/global"
	"go.uber.org/zap"
)

func LogInit() {
	global.BLOG_LOG = zap.NewExample()
	defer global.BLOG_LOG.Sync()
	global.BLOG_LOG.Info("日志初始化成功")
}
