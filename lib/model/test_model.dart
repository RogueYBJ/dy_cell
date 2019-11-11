/*
 * Author: Bangjin Yu
 * CreateTime: 2019-11-11 19:23:18.433719
 * Email: 1227169416@qq.com
 * Address: 梦想小镇互联网村
 */
class TestModel {
	final String name; 
	final int age; 
	final double height; 
	TestModel({this.name = '',this.age = 0,this.height = 0.0,});
	factory TestModel.fromMap(Map data) {
		return TestModel(name:data['name'],age:data['age'],height:data['height'],);
	}

}