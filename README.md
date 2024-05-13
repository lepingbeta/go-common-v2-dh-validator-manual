## FindInDb 使用说明

举例：当登录接口，需要判断account账号是否存在时，可使用
~~~
findInDb=yes/needExists collectionName fieldName error_msg_key delete_status(one/zero/other)
~~~
* 这里 findInDb=yes/needExists时，指当前验证器需要存在这个值，当为no/needNotExists时，指当前需要不存在这个值（比如注册时，需要不存在对应的account值）。
* collectionName 表示查询集合名。
* fieldName 表示查询字段名。
* error_msg_key 这里改为对应的错误消息msg_key，填写auto_msg_key时，由系统自动生成，否则就是用户自定义。
* delete_status 表示删除状态：one 表示状态为已删除（is_delete=1），zero 表示状态为未删除（is_delete=0），other 查询时不带状态

