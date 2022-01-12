import {apis} from '../api/api'

const RecommendData = {
  "success": true,
  "message": "success",
  "code": 200,
  "result": [{
    "id": 6,
    "name": "热门推荐",
    "type": 2,
    "sortOrder": 6,
    "position": 1,
    "limitNum": 2,
    "status": 1,
    "remark": "热门推荐",
    "panelContentItems": [{
      "id": 47,
      "panelId": 6,
      "type": 0,
      "productId": 100046401,
      "sortOrder": 1,
      "fullUrl": "",
      "picUrl": "https://resource.smartisan.com/resource/17f254e6f809355d8fe66260ccb48fb0.png",
      "picUrl2": null,
      "picUrl3": null,
      "created": "2018-04-19T11:15:35.000+0000",
      "updated": "2018-04-19T11:15:35.000+0000",
      "productName": "坚果 R1",
      "salePrice": 2999.00,
      "subTitle": "骁龙 845 处理器 · 光学防抖双摄像头 · 6.17 英寸压力感应屏幕 · 10W快速无线充电功能"
    }, {
      "id": 48,
      "panelId": 6,
      "type": 0,
      "productId": 100046401,
      "sortOrder": 2,
      "fullUrl": null,
      "picUrl": "https://resource.smartisan.com/resource/06c2253354096f5e9ebf0616f1af2086.png",
      "picUrl2": null,
      "picUrl3": null,
      "created": "2018-04-19T11:18:16.000+0000",
      "updated": "2018-04-19T11:18:18.000+0000",
      "productName": "坚果 R1",
      "salePrice": 2999.00,
      "subTitle": "骁龙 845 处理器 · 光学防抖双摄像头 · 6.17 英寸压力感应屏幕 · 10W快速无线充电功能"
    }, {
      "id": 49,
      "panelId": 6,
      "type": 0,
      "productId": 100051701,
      "sortOrder": 3,
      "fullUrl": "",
      "picUrl": "https://resource.smartisan.com/resource/b07b9765e272f866da6acda4ee107d88.png",
      "picUrl2": "",
      "picUrl3": "",
      "created": "2018-04-19T11:18:16.000+0000",
      "updated": "2018-04-19T11:18:18.000+0000",
      "productName": "坚果 Pro 2S",
      "salePrice": 1798.00,
      "subTitle": "双系统，无限屏，骁龙 ™ 710 处理器 · 前置 1600 万像素摄像头 · 6.01 英寸全高清全面屏 · AI 通话降噪 · 人脸解锁 + 指纹解锁 "
    }, {
      "id": 50,
      "panelId": 6,
      "type": 0,
      "productId": 100040607,
      "sortOrder": 4,
      "fullUrl": "",
      "picUrl": "https://resource.smartisan.com/resource/718bcecced0df1cd23bbdb9cc1f70b7d.png",
      "picUrl2": "",
      "picUrl3": "",
      "created": "2018-04-19T11:18:16.000+0000",
      "updated": "2018-04-19T11:18:18.000+0000",
      "productName": "坚果 3",
      "salePrice": 2999.00,
      "subTitle": "坚果 3 意外碎屏保修服务（碎屏险）"
    }]
  }],
  "timestamp": 1638867291695
}

export default {
  bootstrap (mock) {
    mock.onGet(apis.recommend).reply(config => {
      return new Promise((resolve, reject) => {
        resolve([200, RecommendData])
      })
    })
  }
}
