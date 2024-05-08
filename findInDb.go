/*
 * @Author       : Symphony zhangleping@cezhiqiu.com
 * @Date         : 2024-05-08 20:38:44
 * @LastEditors  : Symphony zhangleping@cezhiqiu.com
 * @LastEditTime : 2024-05-08 20:39:04
 * @FilePath     : /v2/go-common-v2-dh-validator-manual/findInDb.go
 * @Description  :
 *
 * Copyright (c) 2024 by 大合前研, All Rights Reserved.
 */
package dh_validator_manual

import (
	"strings"

	"github.com/go-playground/validator/v10"
	dhlog "github.com/lepingbeta/go-common-v2-dh-log"
	mongodb "github.com/lepingbeta/go-common-v2-dh-mongo"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/bson/primitive"
)

func findInDb(needExists, collectionName, field, val string) bool {
	// dhlog.Info(needExists)
	// dhlog.Info(collectionName)
	// dhlog.Info(field)
	// dhlog.Info(val)

	filter := bson.M{field: val}
	if field == "_id" {
		objUserId, _ := primitive.ObjectIDFromHex(val)
		filter = bson.M{"_id": objUserId}
	}
	count, err := mongodb.Count(collectionName, filter)

	if err != nil {
		dhlog.Error(err.Error())
		return false
	}

	isExits := false
	if count > 0 {
		isExits = true
	}

	switch needExists {
	case "yes":
		return isExits
	case "no":
		return !isExits
	}

	return false
}

func IsValidfindInDb(fl validator.FieldLevel) bool {
	params := fl.Param()
	if params == "" {
		return true // 如果没有指定参数，不执行任何操作
	}

	parts := strings.Fields(params) // 使用 Fields 而不是 Split
	needExists := parts[0]
	collectionName := parts[1]
	field := parts[2]

	val := fl.Field().String()

	// 从参数中获取所有字段名
	// fieldNames := split(params)

	return findInDb(needExists, collectionName, field, val)
}