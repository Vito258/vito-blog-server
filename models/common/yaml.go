package common

type Config struct {
	Database DatabaseConfig `yaml:"mysql"`
}

type DatabaseConfig struct {
	Port            int    `yaml:"port"`
	Username        string `yaml:"username"`
	Password        string `yaml:"password"`
	Config          string `yaml:"config"`
	DBName          string `yaml:"db-name"`
	DriverName      string `yaml:"driver-name"`
	Path            string `yaml:"path"`
	Engine          string `yaml:"engine"`
	LogMode         string `yaml:"log-mode"`
	MaxIdleConnects int    `yaml:"max-idle-conns"`
	MaxOpenConnects int    `yaml:"max-open-conns"`
	Singular        bool   `yaml:"singular"`
	LogZap          bool   `yaml:"log-zap"`
}
