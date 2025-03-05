package service

var ServiceGroupApp = new(ServiceGroup)

type ServiceGroup struct {
	TechArticleService
	TechArticleTypeService
	UserService
}

type EnterRequest struct {
	UserName string `json:"user_name"`
}
type EnterResponse struct {
	UserName string `json:"user_name"`
}
type EnterService interface {
	Enter(request EnterRequest) (EnterResponse, error)
}
