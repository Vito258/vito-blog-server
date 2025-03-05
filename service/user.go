package service

import (
	"errors"

	"example.com/vito-blog-server/global"
	"example.com/vito-blog-server/models/system"
	"golang.org/x/crypto/bcrypt"
)

var (
	ErrUserNotFound    = errors.New("用户不存在")
	ErrInvalidPassword = errors.New("密码错误")
)

type UserService struct{}

// 查询所有用户
func (userService *UserService) GetUserList() (list []system.User, err error) {
	// 查询所有 User 记录
	err = global.BLOG_DB.Find(&list).Error

	if err != nil {
		return nil, err
	}
	return list, nil
}

// 用户登录
func (userService *UserService) UserLogin(account, password string) (system.User, error) {
	var user system.User
	// 查询 User 记录
	if err := global.BLOG_DB.Where("account = ?", account).First(&user).Error; err != nil {
		return system.User{}, ErrUserNotFound
	}
	// 检查密码是否正确
	if err := bcrypt.CompareHashAndPassword([]byte(user.Password), []byte(password)); err != nil {
		return system.User{}, ErrInvalidPassword
	}
	return user, nil
}

// 用户注册
func (userService *UserService) UserRegister(user system.User) (err error) {
	// 检查账户是否已存在
	var existingUser system.User
	err = global.BLOG_DB.Where("account =?", user.Account).First(&existingUser).Error

	if err == nil {
		return err
	}

	// 进行密码加密
	hashedPassword, err := bcrypt.GenerateFromPassword([]byte(user.Password), bcrypt.DefaultCost)

	if err != nil {
		return err
	}
	user.Password = string(hashedPassword)

	// 创建 User 记录

	return global.BLOG_DB.Create(&user).Error
}
