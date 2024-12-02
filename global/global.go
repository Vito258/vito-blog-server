package global

import (
	"example.com/vito-blog-server/models/common"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
	"gorm.io/gorm"
)

var (
	BLOG_DB      *gorm.DB
	BLOG_ROUTERS gin.RoutesInfo
	BLOG_LOG     *zap.Logger
	BLOG_CONFIG  common.Config
	//BLOG_DBList              map[string]*gorm.DB
	//BLOG_REDIS               redis.UniversalClient
	//BLOG_REDISList           map[string]redis.UniversalClient
	//BLOG_MONGO               *qmgo.QmgoClient
	//BLOG_CONFIG              config.Server
	//BLOG_VP                  *viper.Viper
	//BLOG_Timer               timer.Timer = timer.NewTimerTask()
	//BLOG_Concurrency_Control             = &singleflight.Group{}
	//BLOG_ACTIVE_DBNAME       *string
	//BlackCache               local_cache.Cache
	//lock                     sync.RWMutex
)
