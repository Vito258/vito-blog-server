package initialize

import (
	"fmt"
	"os"

	"example.com/vito-blog-server/global"
	"example.com/vito-blog-server/models/common"
	"gopkg.in/yaml.v3"
)

func DecoderYaml() {
	// 打开 YAML 文件
	file, err := os.Open("config.yaml")
	if err != nil {
		fmt.Println("Error opening file:", err)
		return
	}
	defer file.Close()

	// 创建解析器
	decoder := yaml.NewDecoder(file)

	// 配置对象
	var config common.Config

	// 解析 YAML 数据
	err = decoder.Decode(&config)
	if err != nil {
		fmt.Println("Error decoding YAML:", err)
		return
	}

	// 将配置项赋予给全局变量
	global.BLOG_CONFIG = config
}
