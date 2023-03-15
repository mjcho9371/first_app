class ProductData {
  final String title;
  final String description;
  final String code;
  final String thumbnail;
  ProductData(this.title, this.description, this.code, this.thumbnail);
}

class ProductDatas {
  late final List<ProductData> datas;

  ProductDatas() {
    List<Map> items = dummyDatas['items']!;
    datas = items.map((e) {
      return ProductData(
          e['title']!, e['description']!, e['code'], e['thumbnail']['uri']);
    }).toList();
  }
}

Map<String, dynamic> dummyDatas = {
  "items": [
    {
      "id": 1111,
      "code": "P006106066R000100003",
      "title": "LG 70인치 스마트 4KUHDTV 70UN6950 (수도권 / 벽걸이 설치 포함) [다온]",
      "description": "복사대상: P006106066R000100002\n복사대상: P006106066R000100001\n",
      "installmentPrice": 1080000,
      "installmentPeriod": null,
      "applyCoupon": true,
      "customTag": "INIT",
      "rating": 5,
      "condition": "S",
      "serialNo": "1A",
      "offeringCode": "RE-1111-20230220-001",
      "residual": 10,
      "reviewCnt": 0,
      "isSoldOut": false,
      "normalPrice": 1547000,
      "price": 1080000,
      "productId": 2774,
      "productCode": "P006106066",
      "productName": "70UN6950",
      "productDescription": null,
      "productModelNo": "70UN6950",
      "productCreatedAt": "2022-12-29T02:48:15.912Z",
      "brandId": 6,
      "brandCode": "LGELECTRONICS",
      "brandName": "LG전자",
      "brandDescription": "가전은 역시, 엘지",
      "brandCreatedAt": "2021-01-28T00:27:59.210Z",
      "productMedia": [],
      "category": {
        "createdAt": "2022-08-17T07:11:10.242Z",
        "updatedAt": "2022-08-17T07:11:10.242Z",
        "deletedAt": null,
        "id": 106,
        "code": "S00083",
        "name": "TV",
        "description": null,
        "type": "S",
        "isActive": true,
        "priority": 0,
        "parentId": 94,
        "alias": null
      },
      "priority": 0,
      "thumbnail": {
        "uuid": "89d57bce-c7aa-4c79-ad99-ee6a66c38271",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/REFURBISHED/89d57bce-c7aa-4c79-ad99-ee6a66c38271.jpeg",
        "mimeType": "image/jpeg",
        "deviceType": null,
        "refurbishedId": 1111,
        "seq": 0,
        "createdAt": "2023-01-11T01:14:25.579Z"
      },
      "taggings": [],
      "createdAt": "2023-01-11T01:14:27.333Z"
    },
    {
      "id": 2284,
      "code": "P008023882S000100000",
      "title": "공식인증점 삼성전자 갤럭시탭 S8 SM-X700 WiFi 128GB",
      "offeringCode": null,
      "productOfferingCode": "PR-882-20221012-001",
      "description": "복사대상: P008023882S001200154\n갤럭시 탭 S8",
      "price": 839000,
      "applyCoupon": true,
      "customTag": "INIT",
      "normalPrice": 849200,
      "trialPrice": 59500,
      "installmentPrice": 839000,
      "installmentPeriod": null,
      "trialPeriod": 1,
      "rating": 4.9,
      "residual": 11981,
      "reviewCnt": 12,
      "isSoldOut": false,
      "createdAt": "2022-09-27T07:55:22.148Z",
      "productId": 882,
      "productCode": "P008023882",
      "productName": "갤럭시탭 S8 WiFi 128GB",
      "productDescription": null,
      "productCreatedAt": "2022-02-07T05:10:28.868Z",
      "brandId": 8,
      "brandCode": "SAMSUNG",
      "brandName": "삼성",
      "brandDescription": "",
      "brandCreatedAt": "2021-01-28T01:29:35.884Z",
      "productMedia": [],
      "category": {
        "createdAt": "2022-08-17T07:11:46.005Z",
        "updatedAt": "2022-08-17T07:11:46.005Z",
        "deletedAt": null,
        "id": 140,
        "code": "S000117",
        "name": "태블릿",
        "description": null,
        "type": "S",
        "isActive": true,
        "priority": 0,
        "parentId": 48,
        "alias": null
      },
      "thumbnail": {
        "uuid": "43460568-8981-406e-8dcf-d03b56fdca58",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/PUBLICATION/43460568-8981-406e-8dcf-d03b56fdca58.jpeg",
        "mimeType": "image/jpeg",
        "deviceType": null,
        "publicationId": 2284,
        "seq": 0,
        "createdAt": "2023-02-14T00:15:39.009Z"
      },
      "taggings": [
        {
          "createdAt": "2023-03-02T04:08:03.084Z",
          "updatedAt": "2023-03-02T04:08:03.084Z",
          "deletedAt": null,
          "publicationId": 2284,
          "tagId": 90531,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-02T04:08:03.064Z",
            "updatedAt": "2023-03-02T04:08:03.064Z",
            "deletedAt": null,
            "id": 90531,
            "code": "cxcKhFSHCYPURCEyEPijb",
            "name": "태블릿",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-02T04:08:03.086Z",
          "updatedAt": "2023-03-02T04:08:03.086Z",
          "deletedAt": null,
          "publicationId": 2284,
          "tagId": 90532,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-02T04:08:03.077Z",
            "updatedAt": "2023-03-02T04:08:03.077Z",
            "deletedAt": null,
            "id": 90532,
            "code": "aA-twshhmZVHl0FSi7etB",
            "name": "삼성",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-02T04:08:03.087Z",
          "updatedAt": "2023-03-02T04:08:03.087Z",
          "deletedAt": null,
          "publicationId": 2284,
          "tagId": 90533,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-02T04:08:03.078Z",
            "updatedAt": "2023-03-02T04:08:03.078Z",
            "deletedAt": null,
            "id": 90533,
            "code": "WoKa82_a4m7p0CiNVlKk5",
            "name": "갤럭시탭",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-02T04:08:03.090Z",
          "updatedAt": "2023-03-02T04:08:03.090Z",
          "deletedAt": null,
          "publicationId": 2284,
          "tagId": 90534,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-02T04:08:03.078Z",
            "updatedAt": "2023-03-02T04:08:03.078Z",
            "deletedAt": null,
            "id": 90534,
            "code": "Xf5ga8t1YbKcckeciqOHU",
            "name": "S8",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-02T04:08:03.091Z",
          "updatedAt": "2023-03-02T04:08:03.091Z",
          "deletedAt": null,
          "publicationId": 2284,
          "tagId": 90535,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-02T04:08:03.079Z",
            "updatedAt": "2023-03-02T04:08:03.079Z",
            "deletedAt": null,
            "id": 90535,
            "code": "va8hnwpNN9u2Ie0oGL-kw",
            "name": "갤럭시탭S8",
            "description": null,
            "type": "A"
          }
        }
      ],
      "seller": {
        "createdAt": "2021-08-06T04:29:27.000Z",
        "updatedAt": "2021-08-06T04:29:27.000Z",
        "deletedAt": null,
        "id": 12,
        "name": "다담아이엔씨",
        "displayName": null,
        "code": "S2021012",
        "status": "ACTIVE"
      },
      "coupons": [
        {
          "name": "갤럭시탭 상시 9% 다운쿠폰",
          "calcMethod": "RATE",
          "value": "0.09",
          "expiresIn": null,
          "activeFrom": "2023-02-28T15:00:00.000Z",
          "activeTo": "2023-04-30T14:59:59.000Z"
        }
      ]
    },
    {
      "id": 4081,
      "code": "P010148001S000200001",
      "title": "ZV-1F",
      "offeringCode": null,
      "productOfferingCode": "PR-2993-20230227-001",
      "description": "",
      "price": 800000,
      "applyCoupon": true,
      "customTag": "INIT",
      "normalPrice": 800000,
      "trialPrice": 15900,
      "installmentPrice": 800000,
      "installmentPeriod": null,
      "trialPeriod": 1,
      "rating": 5,
      "residual": 16,
      "reviewCnt": 0,
      "isSoldOut": false,
      "createdAt": "2023-01-19T02:17:02.627Z",
      "productId": 2993,
      "productCode": "P010148001",
      "productName": "ZV-1F",
      "productDescription": null,
      "productCreatedAt": "2023-01-19T02:14:39.896Z",
      "brandId": 10,
      "brandCode": "SONY",
      "brandName": "소니",
      "brandDescription": null,
      "brandCreatedAt": "2021-01-28T04:26:29.407Z",
      "productMedia": [],
      "category": {
        "createdAt": "2022-08-17T07:11:54.437Z",
        "updatedAt": "2022-08-17T07:11:54.437Z",
        "deletedAt": null,
        "id": 148,
        "code": "S000125",
        "name": "미러리스",
        "description": null,
        "type": "S",
        "isActive": true,
        "priority": 0,
        "parentId": 4,
        "alias": null
      },
      "thumbnail": {
        "uuid": "4a562a5f-a6d5-4669-9ef4-6c445b99be67",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/PUBLICATION/4a562a5f-a6d5-4669-9ef4-6c445b99be67.jpeg",
        "mimeType": "image/jpeg",
        "deviceType": null,
        "publicationId": 4081,
        "seq": 0,
        "createdAt": "2023-01-19T02:15:18.420Z"
      },
      "taggings": [
        {
          "createdAt": "2023-02-20T12:07:36.531Z",
          "updatedAt": "2023-02-20T12:07:36.531Z",
          "deletedAt": null,
          "publicationId": 4081,
          "tagId": 78117,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-02-20T12:07:36.524Z",
            "updatedAt": "2023-02-20T12:07:36.524Z",
            "deletedAt": null,
            "id": 78117,
            "code": "3rOryNqMDYJILf4plcDkf",
            "name": "ZV-1F",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-02-20T12:07:36.532Z",
          "updatedAt": "2023-02-20T12:07:36.532Z",
          "deletedAt": null,
          "publicationId": 4081,
          "tagId": 78118,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-02-20T12:07:36.527Z",
            "updatedAt": "2023-02-20T12:07:36.527Z",
            "deletedAt": null,
            "id": 78118,
            "code": "irlYFVab8lWTAV96KJ3UD",
            "name": "소니",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-02-20T12:07:36.533Z",
          "updatedAt": "2023-02-20T12:07:36.533Z",
          "deletedAt": null,
          "publicationId": 4081,
          "tagId": 78119,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-02-20T12:07:36.528Z",
            "updatedAt": "2023-02-20T12:07:36.528Z",
            "deletedAt": null,
            "id": 78119,
            "code": "LzcA5dLq9JQ5g6gDOfcvn",
            "name": "zv",
            "description": null,
            "type": "A"
          }
        }
      ],
      "seller": {
        "createdAt": "2021-01-26T12:59:59.529Z",
        "updatedAt": "2021-01-26T12:59:59.529Z",
        "deletedAt": null,
        "id": 2,
        "name": "클락스토어",
        "displayName": "에스비스토어",
        "code": "S2021002",
        "status": "ACTIVE"
      }
    },
    {
      "id": 4356,
      "code": "P088143038S005000001",
      "title": "플레오맥스 PM-Z15 Z플립지원 무선고속충전거치대",
      "offeringCode": "PU-4356-P088143038S005000001-20230209-001",
      "productOfferingCode": "PR-3284-20230209-000",
      "description":
          "복사대상: P088143037S005000001\n복사대상: P088143036S005000000\n복사대상: P088143035S005000001\n복사대상: P088143034S005000001\n복사대상: P088143033S005000001\n복사대상: P088143032S005000000\n복사대상: P088143030S005000001\n복사대상: P088143028S005000001\n복사대상: P088143027S005000001\n복사대상: P08814",
      "price": 28400,
      "applyCoupon": true,
      "customTag": "INIT",
      "normalPrice": 28400,
      "trialPrice": null,
      "installmentPrice": 28400,
      "installmentPeriod": null,
      "trialPeriod": null,
      "rating": 5,
      "residual": 100,
      "reviewCnt": 0,
      "isSoldOut": false,
      "createdAt": "2023-02-09T06:50:46.272Z",
      "productId": 3284,
      "productCode": "P088143038",
      "productName": "플레오맥스 PM-Z15 Z플립지원 무선고속충전거치대",
      "productDescription": null,
      "productCreatedAt": "2023-02-09T05:49:24.410Z",
      "brandId": 88,
      "brandCode": "GGOON",
      "brandName": "지군",
      "brandDescription": null,
      "brandCreatedAt": "2022-06-30T07:08:23.247Z",
      "productMedia": [],
      "category": {
        "createdAt": "2022-08-17T07:11:49.171Z",
        "updatedAt": "2022-08-17T07:11:49.171Z",
        "deletedAt": null,
        "id": 143,
        "code": "S000120",
        "name": "스마트폰 액세서리",
        "description": null,
        "type": "S",
        "isActive": true,
        "priority": 0,
        "parentId": 49,
        "alias": null
      },
      "thumbnail": {
        "uuid": "6d02e31d-0c41-4ab1-ad95-4b842a2d1b56",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/PUBLICATION/6d02e31d-0c41-4ab1-ad95-4b842a2d1b56.jpeg",
        "mimeType": "image/jpeg",
        "deviceType": null,
        "publicationId": 4356,
        "seq": 0,
        "createdAt": "2023-02-09T06:51:05.960Z"
      },
      "taggings": [
        {
          "createdAt": "2023-02-09T06:51:15.930Z",
          "updatedAt": "2023-02-09T06:51:15.930Z",
          "deletedAt": null,
          "publicationId": 4356,
          "tagId": 62911,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-02-09T06:51:15.923Z",
            "updatedAt": "2023-02-09T06:51:15.923Z",
            "deletedAt": null,
            "id": 62911,
            "code": "IyRfq_IEk57HF3wGOhiaF",
            "name": "무선충전기",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-02-09T06:51:15.932Z",
          "updatedAt": "2023-02-09T06:51:15.932Z",
          "deletedAt": null,
          "publicationId": 4356,
          "tagId": 62912,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-02-09T06:51:15.925Z",
            "updatedAt": "2023-02-09T06:51:15.925Z",
            "deletedAt": null,
            "id": 62912,
            "code": "H0VKrr9pM7agSW_ghePUV",
            "name": "충전기",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-02-09T06:51:15.933Z",
          "updatedAt": "2023-02-09T06:51:15.933Z",
          "deletedAt": null,
          "publicationId": 4356,
          "tagId": 62913,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-02-09T06:51:15.925Z",
            "updatedAt": "2023-02-09T06:51:15.925Z",
            "deletedAt": null,
            "id": 62913,
            "code": "REUdEOPF9HYSY62zK9xwY",
            "name": "무선",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-02-09T06:51:15.934Z",
          "updatedAt": "2023-02-09T06:51:15.934Z",
          "deletedAt": null,
          "publicationId": 4356,
          "tagId": 62914,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-02-09T06:51:15.926Z",
            "updatedAt": "2023-02-09T06:51:15.926Z",
            "deletedAt": null,
            "id": 62914,
            "code": "lSUewnaH8UCC-U79mg7Lh",
            "name": "차량용충전기",
            "description": null,
            "type": "A"
          }
        }
      ],
      "seller": {
        "createdAt": "2022-10-05T06:12:51.143Z",
        "updatedAt": "2022-10-05T06:12:51.143Z",
        "deletedAt": null,
        "id": 50,
        "name": "지군코리아",
        "displayName": null,
        "code": "S2021049",
        "status": "ACTIVE"
      }
    }
  ],
  "count": 4,
  "timestamp": 1677834077.6333992,
  "metadata": "{}"
};
