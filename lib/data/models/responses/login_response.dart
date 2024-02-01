/// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation

import 'dart:convert';

// LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));
//
// String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
    LoginResponse({
        this.result,
        this.token,
    });

    bool? result;
    String? token;

    LoginResponse.fromJson(Map<dynamic, dynamic> json) {
        result = json["result"];
        token = json["token"];
    }

    Map<dynamic, dynamic> toJson() => {
        "result": result,
        "token": token,
    };
}
