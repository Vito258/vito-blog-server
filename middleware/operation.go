package middleware

import (
	"github.com/gin-gonic/gin"
	"log"
	"time"
)

func OperationRecord() gin.HandlerFunc {
	return func(c *gin.Context) {
		// 记录操作前的时间
		start := time.Now()

		// 继续处理请求
		c.Next()

		// 记录操作后的信息
		latency := time.Since(start)
		user := c.MustGet("user").(string)
		operation := c.Request.Method + " " + c.Request.URL.Path
		log.Printf("User: %s, Operation: %s, Latency: %v", user, operation, latency)
	}
}
