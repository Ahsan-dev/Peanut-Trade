/// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation

import 'dart:convert';


class OpenTrade {
    OpenTrade({
        this.symbol,
        this.ticket,
        this.currentPrice,
        this.openPrice,
        this.login,
        this.swaps,
        this.type,
        this.volume,
        this.sl,
        this.digits,
        this.openTime,
        this.tp,
        this.profit,
    });

    String? symbol;
    int? ticket;
    double? currentPrice;
    double? openPrice;
    int? login;
    double? swaps;
    int? type;
    double? volume;
    double? sl;
    int? digits;
    DateTime? openTime;
    double? tp;
    double? profit;

    OpenTrade.fromJson(Map<String, dynamic> json){

        symbol = json["symbol"];
        ticket = json["ticket"];
        currentPrice = json["currentPrice"]?.toDouble();
        openPrice = json["openPrice"]?.toDouble();
        login = json["login"];
        swaps = json["swaps"]?.toDouble();
        type = json["type"];
        volume = json["volume"]?.toDouble();
        sl = json["sl"];
        digits = json["digits"];
        openTime = DateTime.parse(json["openTime"]);
        tp = json["tp"];
        profit = json["profit"]?.toDouble();

    }

}
