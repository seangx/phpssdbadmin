all: build push clean
	
TAG = 0.1

build:
	docker build -t registry.cn-hangzhou.aliyuncs.com/marvingod/phpssdbadmin:$(TAG) .

push:
	docker push registry.cn-hangzhou.aliyuncs.com/marvingod/phpssdbadmin:$(TAG)
clean:
	docker rmi registry.cn-hangzhou.aliyuncs.com/marvingod/phpssdbadmin:$(TAG)