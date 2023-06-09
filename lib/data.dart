class ProductData {
  final String title;
  final String description;
  final String code;
  final String thumbnail;
  final int rating;
  final String brandName;
  final String productName;
  final String sellerName;
  final int normalPrice;
  final int discountPrice;
  late final String searchString;

  ProductData({
    required this.title,
    required this.description,
    required this.code,
    required this.thumbnail,
    required this.rating,
    required this.productName,
    required this.brandName,
    required this.sellerName,
    required this.normalPrice,
    required this.discountPrice,
  }) {
    searchString = title.toLowerCase() +
        description.toLowerCase() +
        productName.toLowerCase() +
        brandName.toLowerCase() +
        sellerName.toLowerCase();
  }

  bool isMe(String keyword) {
    return searchString.contains(keyword.toLowerCase());
  }
}

class ProductDatas {
  final Map? initData;
  late final List<ProductData> datas;

  ProductDatas([this.initData]) {
    List<Map> items = [];
    if ((initData == null || initData!['items'] != null)) {
      items = (initData!['items']! as List<dynamic>)
          .map((e) => (e as Map))
          .toList();
    }

    datas = items.map((e) {
      print(e);
      return ProductData(
          title: e['title'] ?? '',
          description: e['description'] ?? '',
          code: e['code'] ?? '',
          thumbnail: e['thumbnail']['uri'],
          rating: 0,
          brandName: e['brandName'] ?? '',
          productName: e['productName'] ?? '',
          sellerName: e['sellerName'] ?? '',
          normalPrice: e['normalPrice'] ?? 0,
          discountPrice: e['discountPrice'] ?? 0);
    }).toList();
  }
}

Map<String, dynamic> dummyDatas = {
  "items": [
    {
      "id": 4657,
      "code": "P010148002S000200001",
      "title": "A9M2",
      "offeringCode": "PU-4657-P010148002S000200001-20230308-002",
      "productOfferingCode": "PR-3489-20230308-001",
      "description": "",
      "price": 5790000,
      "applyCoupon": true,
      "customTag": "INIT",
      "prdType": 1,
      "prdCondition": null,
      "discountPrice": 5250000,
      "normalPrice": 5790000,
      "trialPrice": 350000,
      "installmentPrice": 5790000,
      "installmentPeriod": null,
      "trialPeriod": 1,
      "rating": 5,
      "residual": 2,
      "reviewCnt": 0,
      "isSoldOut": false,
      "createdAt": "2023-02-24T08:32:51.214Z",
      "purchaseSource": null,
      "isAdult": 1,
      "preface": null,
      "productId": 3489,
      "productCode": "P010148002",
      "productName": "A9M2",
      "productDescription": null,
      "productCreatedAt": "2023-02-23T07:44:17.025Z",
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
        "uuid": "a7b5afd1-8e14-493f-aaac-44d35f42f19a",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/PUBLICATION/a7b5afd1-8e14-493f-aaac-44d35f42f19a.png",
        "mimeType": "image/png",
        "deviceType": null,
        "publicationId": 4657,
        "seq": 0,
        "createdAt": "2023-02-24T08:31:21.841Z"
      },
      "taggings": [
        {
          "createdAt": "2023-03-08T04:59:22.638Z",
          "updatedAt": "2023-03-08T04:59:22.638Z",
          "deletedAt": null,
          "publicationId": 4657,
          "tagId": 99420,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T04:59:22.625Z",
            "updatedAt": "2023-03-08T04:59:22.625Z",
            "deletedAt": null,
            "id": 99420,
            "code": "SXGrQEoPjyo_6RgQM8vhR",
            "name": "A9M2",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T04:59:22.639Z",
          "updatedAt": "2023-03-08T04:59:22.639Z",
          "deletedAt": null,
          "publicationId": 4657,
          "tagId": 99421,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T04:59:22.634Z",
            "updatedAt": "2023-03-08T04:59:22.634Z",
            "deletedAt": null,
            "id": 99421,
            "code": "qVOxdinaCJWCSvkom1vkM",
            "name": "카메라",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T04:59:22.640Z",
          "updatedAt": "2023-03-08T04:59:22.640Z",
          "deletedAt": null,
          "publicationId": 4657,
          "tagId": 99422,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T04:59:22.635Z",
            "updatedAt": "2023-03-08T04:59:22.635Z",
            "deletedAt": null,
            "id": 99422,
            "code": "Frr5kUUScC4KMfWOQM0gq",
            "name": "소니",
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
      },
      "discounts": [
        {
          "id": 9728,
          "name": null,
          "value": 540000,
          "calcMethod": "AMOUNT",
          "activeFrom": null,
          "activeTo": null,
          "qty": 0,
          "remain": null,
          "type": "INIT"
        }
      ]
    },
    {
      "id": 4651,
      "code": "P010150019S000200002",
      "title": "FE PZ 16-35mm F4 G (SELP1635G)",
      "offeringCode": "PU-4651-P010150019S000200002-20230308-002",
      "productOfferingCode": "PR-3503-20230308-001",
      "description": "복사대상: P010150019S000200001\n",
      "price": 2200000,
      "applyCoupon": true,
      "customTag": "INIT",
      "prdType": 1,
      "prdCondition": null,
      "normalPrice": 2200000,
      "trialPrice": 105000,
      "installmentPrice": 2200000,
      "installmentPeriod": null,
      "trialPeriod": 1,
      "rating": 5,
      "residual": 3,
      "reviewCnt": 0,
      "isSoldOut": false,
      "createdAt": "2023-02-24T06:23:22.453Z",
      "purchaseSource": null,
      "isAdult": 1,
      "preface": null,
      "productId": 3503,
      "productCode": "P010150019",
      "productName": "FE PZ 16-35mm F4 G (SELP1635G)",
      "productDescription": null,
      "productCreatedAt": "2023-02-24T06:21:54.898Z",
      "brandId": 10,
      "brandCode": "SONY",
      "brandName": "소니",
      "brandDescription": null,
      "brandCreatedAt": "2021-01-28T04:26:29.407Z",
      "productMedia": [],
      "category": {
        "createdAt": "2022-08-17T07:11:56.544Z",
        "updatedAt": "2022-08-17T07:11:56.544Z",
        "deletedAt": null,
        "id": 150,
        "code": "S000127",
        "name": "카메라렌즈",
        "description": null,
        "type": "S",
        "isActive": true,
        "priority": 0,
        "parentId": 4,
        "alias": null
      },
      "thumbnail": {
        "uuid": "43bdd462-f13c-4de9-932b-fa8684d99d1b",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/PUBLICATION/43bdd462-f13c-4de9-932b-fa8684d99d1b.png",
        "mimeType": "image/png",
        "deviceType": null,
        "publicationId": 4651,
        "seq": 0,
        "createdAt": "2023-02-24T06:23:17.773Z"
      },
      "taggings": [
        {
          "createdAt": "2023-03-08T05:36:59.353Z",
          "updatedAt": "2023-03-08T05:36:59.353Z",
          "deletedAt": null,
          "publicationId": 4651,
          "tagId": 99552,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:36:59.344Z",
            "updatedAt": "2023-03-08T05:36:59.344Z",
            "deletedAt": null,
            "id": 99552,
            "code": "mGe15hsClh_Q4KY0D8aDG",
            "name": "FEPZ16-35mmF4G",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:36:59.354Z",
          "updatedAt": "2023-03-08T05:36:59.354Z",
          "deletedAt": null,
          "publicationId": 4651,
          "tagId": 99553,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:36:59.346Z",
            "updatedAt": "2023-03-08T05:36:59.346Z",
            "deletedAt": null,
            "id": 99553,
            "code": "-wuVZeXChHoX8gT5vvNrd",
            "name": "SELP1635G",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:36:59.356Z",
          "updatedAt": "2023-03-08T05:36:59.356Z",
          "deletedAt": null,
          "publicationId": 4651,
          "tagId": 99554,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:36:59.347Z",
            "updatedAt": "2023-03-08T05:36:59.347Z",
            "deletedAt": null,
            "id": 99554,
            "code": "Gy6oAPRH77BBTbf3bp9Lu",
            "name": "소니",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:36:59.358Z",
          "updatedAt": "2023-03-08T05:36:59.358Z",
          "deletedAt": null,
          "publicationId": 4651,
          "tagId": 99555,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:36:59.347Z",
            "updatedAt": "2023-03-08T05:36:59.347Z",
            "deletedAt": null,
            "id": 99555,
            "code": "_yf3Hlz0EMM3uqs2tWl1L",
            "name": "SONY",
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
      "id": 4658,
      "code": "P010148002S000200002",
      "title": "A9M2 (ILCE-9M2)",
      "offeringCode": null,
      "productOfferingCode": "PR-3489-20230308-001",
      "description": "복사대상: P010148002S000200001\n",
      "price": 5790000,
      "applyCoupon": true,
      "customTag": "INIT",
      "prdType": 1,
      "prdCondition": null,
      "normalPrice": 5790000,
      "trialPrice": 350000,
      "installmentPrice": 5790000,
      "installmentPeriod": null,
      "trialPeriod": 1,
      "rating": 5,
      "residual": 10,
      "reviewCnt": 0,
      "isSoldOut": false,
      "createdAt": "2023-02-24T08:33:27.687Z",
      "purchaseSource": null,
      "isAdult": 1,
      "preface": null,
      "productId": 3489,
      "productCode": "P010148002",
      "productName": "A9M2",
      "productDescription": null,
      "productCreatedAt": "2023-02-23T07:44:17.025Z",
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
        "uuid": "9ad3ec3e-4a4b-4bf9-9f73-130c4a836133",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/PUBLICATION/9ad3ec3e-4a4b-4bf9-9f73-130c4a836133.png",
        "mimeType": "image/png",
        "deviceType": null,
        "publicationId": 4658,
        "seq": 0,
        "createdAt": "2023-02-24T08:33:14.474Z"
      },
      "taggings": [
        {
          "createdAt": "2023-03-03T02:43:23.503Z",
          "updatedAt": "2023-03-03T02:43:23.503Z",
          "deletedAt": null,
          "publicationId": 4658,
          "tagId": 93083,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-03T02:43:23.482Z",
            "updatedAt": "2023-03-03T02:43:23.482Z",
            "deletedAt": null,
            "id": 93083,
            "code": "wWVZ4kBS2weVi7fLbUmug",
            "name": "A9M2",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-03T02:43:23.505Z",
          "updatedAt": "2023-03-03T02:43:23.505Z",
          "deletedAt": null,
          "publicationId": 4658,
          "tagId": 93084,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-03T02:43:23.497Z",
            "updatedAt": "2023-03-03T02:43:23.497Z",
            "deletedAt": null,
            "id": 93084,
            "code": "H6EfRR8cO7_vpxgFOxvhp",
            "name": "카메라",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-03T02:43:23.506Z",
          "updatedAt": "2023-03-03T02:43:23.506Z",
          "deletedAt": null,
          "publicationId": 4658,
          "tagId": 93085,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-03T02:43:23.498Z",
            "updatedAt": "2023-03-03T02:43:23.498Z",
            "deletedAt": null,
            "id": 93085,
            "code": "vzeo8TaRWW2izoj4VU6s5",
            "name": "소니",
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
      "id": 4672,
      "code": "P010146001S000200001",
      "title": "A7M4(ILCE-7M4)",
      "offeringCode": null,
      "productOfferingCode": "PR-3518-20230308-001",
      "description": "",
      "price": 4590000,
      "applyCoupon": true,
      "customTag": "INIT",
      "prdType": 1,
      "prdCondition": null,
      "normalPrice": 4590000,
      "trialPrice": 192500,
      "installmentPrice": 4590000,
      "installmentPeriod": null,
      "trialPeriod": 1,
      "rating": 5,
      "residual": 2,
      "reviewCnt": 0,
      "isSoldOut": false,
      "createdAt": "2023-02-27T12:53:45.827Z",
      "purchaseSource": null,
      "isAdult": 1,
      "preface": null,
      "productId": 3518,
      "productCode": "P010146001",
      "productName": "A7M4 (ILCE-7M4) (메모리카드증정)",
      "productDescription": null,
      "productCreatedAt": "2023-02-27T12:47:04.330Z",
      "brandId": 10,
      "brandCode": "SONY",
      "brandName": "소니",
      "brandDescription": null,
      "brandCreatedAt": "2021-01-28T04:26:29.407Z",
      "productMedia": [],
      "category": {
        "createdAt": "2022-08-17T07:11:52.333Z",
        "updatedAt": "2022-08-17T07:11:52.333Z",
        "deletedAt": null,
        "id": 146,
        "code": "S000123",
        "name": "DSLR",
        "description": null,
        "type": "S",
        "isActive": true,
        "priority": 0,
        "parentId": 4,
        "alias": null
      },
      "thumbnail": {
        "uuid": "55aa44e8-29fd-4e6b-973c-1df78d38793a",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/PUBLICATION/55aa44e8-29fd-4e6b-973c-1df78d38793a.jpeg",
        "mimeType": "image/jpeg",
        "deviceType": null,
        "publicationId": 4672,
        "seq": 0,
        "createdAt": "2023-02-27T12:52:36.495Z"
      },
      "taggings": [
        {
          "createdAt": "2023-03-06T07:42:02.747Z",
          "updatedAt": "2023-03-06T07:42:02.747Z",
          "deletedAt": null,
          "publicationId": 4672,
          "tagId": 96529,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-06T07:42:02.743Z",
            "updatedAt": "2023-03-06T07:42:02.743Z",
            "deletedAt": null,
            "id": 96529,
            "code": "VDzkdzx1ghO-eTeXkFK5j",
            "name": "A7M4",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-06T07:42:02.749Z",
          "updatedAt": "2023-03-06T07:42:02.749Z",
          "deletedAt": null,
          "publicationId": 4672,
          "tagId": 96530,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-06T07:42:02.744Z",
            "updatedAt": "2023-03-06T07:42:02.744Z",
            "deletedAt": null,
            "id": 96530,
            "code": "Jr2wG5IQqCSnQPApJqwXq",
            "name": "ILCE-7M4",
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
      "id": 4653,
      "code": "P010150021S000200001",
      "title": " SEL 10-18mm F4 OSS (SEL1018)",
      "offeringCode": "PU-4653-P010150021S000200001-20230308-002",
      "productOfferingCode": "PR-3505-20230308-001",
      "description": "",
      "price": 1390000,
      "applyCoupon": true,
      "customTag": "INIT",
      "prdType": 1,
      "prdCondition": null,
      "discountPrice": 858000,
      "normalPrice": 1390000,
      "trialPrice": 54600,
      "installmentPrice": 1390000,
      "installmentPeriod": null,
      "trialPeriod": 1,
      "rating": 5,
      "residual": 10,
      "reviewCnt": 0,
      "isSoldOut": false,
      "createdAt": "2023-02-24T07:12:33.130Z",
      "purchaseSource": null,
      "isAdult": 1,
      "preface": null,
      "productId": 3505,
      "productCode": "P010150021",
      "productName": "SEL 10-18mm F4 OSS (SEL1018)",
      "productDescription": null,
      "productCreatedAt": "2023-02-24T07:10:46.124Z",
      "brandId": 10,
      "brandCode": "SONY",
      "brandName": "소니",
      "brandDescription": null,
      "brandCreatedAt": "2021-01-28T04:26:29.407Z",
      "productMedia": [],
      "category": {
        "createdAt": "2022-08-17T07:11:56.544Z",
        "updatedAt": "2022-08-17T07:11:56.544Z",
        "deletedAt": null,
        "id": 150,
        "code": "S000127",
        "name": "카메라렌즈",
        "description": null,
        "type": "S",
        "isActive": true,
        "priority": 0,
        "parentId": 4,
        "alias": null
      },
      "thumbnail": {
        "uuid": "a522217c-e3c0-4eb0-9e2e-ae2634116404",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/PUBLICATION/a522217c-e3c0-4eb0-9e2e-ae2634116404.png",
        "mimeType": "image/png",
        "deviceType": null,
        "publicationId": 4653,
        "seq": 0,
        "createdAt": "2023-02-24T07:11:34.336Z"
      },
      "taggings": [
        {
          "createdAt": "2023-03-08T05:12:39.351Z",
          "updatedAt": "2023-03-08T05:12:39.351Z",
          "deletedAt": null,
          "publicationId": 4653,
          "tagId": 99457,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:12:39.343Z",
            "updatedAt": "2023-03-08T05:12:39.343Z",
            "deletedAt": null,
            "id": 99457,
            "code": "qTWVpV-xqO0WJoUf6VL9I",
            "name": "SEL10-18mmF4OSS",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:12:39.352Z",
          "updatedAt": "2023-03-08T05:12:39.352Z",
          "deletedAt": null,
          "publicationId": 4653,
          "tagId": 99458,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:12:39.347Z",
            "updatedAt": "2023-03-08T05:12:39.347Z",
            "deletedAt": null,
            "id": 99458,
            "code": "5oFcxf8LxtT6Ahe8g5CgN",
            "name": "SEL1018",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:12:39.353Z",
          "updatedAt": "2023-03-08T05:12:39.353Z",
          "deletedAt": null,
          "publicationId": 4653,
          "tagId": 99459,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:12:39.347Z",
            "updatedAt": "2023-03-08T05:12:39.347Z",
            "deletedAt": null,
            "id": 99459,
            "code": "SPBHt9A2V0e1CQh31uhPz",
            "name": "소니",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:12:39.354Z",
          "updatedAt": "2023-03-08T05:12:39.354Z",
          "deletedAt": null,
          "publicationId": 4653,
          "tagId": 99460,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:12:39.347Z",
            "updatedAt": "2023-03-08T05:12:39.347Z",
            "deletedAt": null,
            "id": 99460,
            "code": "JgNopbNAdPjse3x7ZmZR_",
            "name": "카메라렌즈",
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
      },
      "discounts": [
        {
          "id": 9734,
          "name": null,
          "value": 532000,
          "calcMethod": "AMOUNT",
          "activeFrom": null,
          "activeTo": null,
          "qty": 0,
          "remain": null,
          "type": "INIT"
        }
      ]
    },
    {
      "id": 4642,
      "code": "P010080003S000200001",
      "title": "소니 SLR E 마운트 SEL 200600G 카메라 렌즈",
      "offeringCode": "PU-4642-P010080003S000200001-20230308-002",
      "productOfferingCode": "PR-1293-20230308-001",
      "description": "복사대상: P010080003S000900001\n",
      "price": 2499000,
      "applyCoupon": true,
      "customTag": "INIT",
      "prdType": 1,
      "prdCondition": null,
      "discountPrice": 2354000,
      "normalPrice": 2499000,
      "trialPrice": 149800,
      "installmentPrice": 2499000,
      "installmentPeriod": null,
      "trialPeriod": 1,
      "rating": 5,
      "residual": 2,
      "reviewCnt": 0,
      "isSoldOut": false,
      "createdAt": "2023-02-24T06:03:37.039Z",
      "purchaseSource": null,
      "isAdult": 1,
      "preface": null,
      "productId": 1293,
      "productCode": "P010080003",
      "productName": "소니 SLR E 마운트 SEL 200600G 카메라 렌즈",
      "productDescription": null,
      "productCreatedAt": "2022-06-28T08:33:03.388Z",
      "brandId": 10,
      "brandCode": "SONY",
      "brandName": "소니",
      "brandDescription": null,
      "brandCreatedAt": "2021-01-28T04:26:29.407Z",
      "productMedia": [],
      "category": {
        "createdAt": "2022-08-17T07:11:56.544Z",
        "updatedAt": "2022-08-17T07:11:56.544Z",
        "deletedAt": null,
        "id": 150,
        "code": "S000127",
        "name": "카메라렌즈",
        "description": null,
        "type": "S",
        "isActive": true,
        "priority": 0,
        "parentId": 4,
        "alias": null
      },
      "thumbnail": {
        "uuid": "fb07b053-7f3a-47fa-82ad-955b727d613d",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/PUBLICATION/fb07b053-7f3a-47fa-82ad-955b727d613d.jpeg",
        "mimeType": "image/jpeg",
        "deviceType": null,
        "publicationId": 4642,
        "seq": 0,
        "createdAt": "2023-02-24T06:03:34.706Z"
      },
      "taggings": [
        {
          "createdAt": "2023-03-08T05:28:33.312Z",
          "updatedAt": "2023-03-08T05:28:33.312Z",
          "deletedAt": null,
          "publicationId": 4642,
          "tagId": 99520,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:28:33.295Z",
            "updatedAt": "2023-03-08T05:28:33.295Z",
            "deletedAt": null,
            "id": 99520,
            "code": "ngsFFO-wXDU4dUetgKRAr",
            "name": "소니",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:28:33.316Z",
          "updatedAt": "2023-03-08T05:28:33.316Z",
          "deletedAt": null,
          "publicationId": 4642,
          "tagId": 99521,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:28:33.298Z",
            "updatedAt": "2023-03-08T05:28:33.298Z",
            "deletedAt": null,
            "id": 99521,
            "code": "gk7AAUcsRPL-pTE8hcT1V",
            "name": "sony",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:28:33.320Z",
          "updatedAt": "2023-03-08T05:28:33.320Z",
          "deletedAt": null,
          "publicationId": 4642,
          "tagId": 99522,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:28:33.299Z",
            "updatedAt": "2023-03-08T05:28:33.299Z",
            "deletedAt": null,
            "id": 99522,
            "code": "dqbZSW94mUkVkvX0jm_px",
            "name": "카메라렌즈",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:28:33.325Z",
          "updatedAt": "2023-03-08T05:28:33.325Z",
          "deletedAt": null,
          "publicationId": 4642,
          "tagId": 99523,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:28:33.302Z",
            "updatedAt": "2023-03-08T05:28:33.302Z",
            "deletedAt": null,
            "id": 99523,
            "code": "dgqHVLVAGnKu-9FEpBRCb",
            "name": "SLRE마운트",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:28:33.328Z",
          "updatedAt": "2023-03-08T05:28:33.328Z",
          "deletedAt": null,
          "publicationId": 4642,
          "tagId": 99524,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:28:33.303Z",
            "updatedAt": "2023-03-08T05:28:33.303Z",
            "deletedAt": null,
            "id": 99524,
            "code": "83gZy3xRlQ2i0DEb8I7Fm",
            "name": "SEL200600G",
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
      },
      "discounts": [
        {
          "id": 9748,
          "name": null,
          "value": 145000,
          "calcMethod": "AMOUNT",
          "activeFrom": null,
          "activeTo": null,
          "qty": 0,
          "remain": null,
          "type": "INIT"
        }
      ]
    },
    {
      "id": 4644,
      "code": "P010150017S000200001",
      "title": " FE 24-240mm (SEL24240)",
      "offeringCode": "PU-4644-P010150017S000200001-20230308-002",
      "productOfferingCode": "PR-3501-20230308-001",
      "description": "",
      "price": 1200000,
      "applyCoupon": true,
      "customTag": "INIT",
      "prdType": 1,
      "prdCondition": null,
      "discountPrice": 968000,
      "normalPrice": 1200000,
      "trialPrice": 61600,
      "installmentPrice": 1200000,
      "installmentPeriod": null,
      "trialPeriod": 1,
      "rating": 5,
      "residual": 5,
      "reviewCnt": 0,
      "isSoldOut": false,
      "createdAt": "2023-02-24T06:12:01.114Z",
      "purchaseSource": null,
      "isAdult": 1,
      "preface": null,
      "productId": 3501,
      "productCode": "P010150017",
      "productName": "FE 24-240mm (SEL24240)",
      "productDescription": null,
      "productCreatedAt": "2023-02-24T06:10:22.820Z",
      "brandId": 10,
      "brandCode": "SONY",
      "brandName": "소니",
      "brandDescription": null,
      "brandCreatedAt": "2021-01-28T04:26:29.407Z",
      "productMedia": [],
      "category": {
        "createdAt": "2022-08-17T07:11:56.544Z",
        "updatedAt": "2022-08-17T07:11:56.544Z",
        "deletedAt": null,
        "id": 150,
        "code": "S000127",
        "name": "카메라렌즈",
        "description": null,
        "type": "S",
        "isActive": true,
        "priority": 0,
        "parentId": 4,
        "alias": null
      },
      "thumbnail": {
        "uuid": "c8b94cd5-aa1c-4448-805c-b90b79a9bdcd",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/PUBLICATION/c8b94cd5-aa1c-4448-805c-b90b79a9bdcd.png",
        "mimeType": "image/png",
        "deviceType": null,
        "publicationId": 4644,
        "seq": 0,
        "createdAt": "2023-02-24T06:11:41.568Z"
      },
      "taggings": [
        {
          "createdAt": "2023-03-08T05:27:49.585Z",
          "updatedAt": "2023-03-08T05:27:49.585Z",
          "deletedAt": null,
          "publicationId": 4644,
          "tagId": 99512,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:27:49.579Z",
            "updatedAt": "2023-03-08T05:27:49.579Z",
            "deletedAt": null,
            "id": 99512,
            "code": "soIvACU9Yvb24LRbR6t5a",
            "name": "FE24-240mm",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:27:49.586Z",
          "updatedAt": "2023-03-08T05:27:49.586Z",
          "deletedAt": null,
          "publicationId": 4644,
          "tagId": 99513,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:27:49.581Z",
            "updatedAt": "2023-03-08T05:27:49.581Z",
            "deletedAt": null,
            "id": 99513,
            "code": "wre8cREGrghqtl1CnZjy7",
            "name": "SEL24240",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:27:49.587Z",
          "updatedAt": "2023-03-08T05:27:49.587Z",
          "deletedAt": null,
          "publicationId": 4644,
          "tagId": 99514,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:27:49.582Z",
            "updatedAt": "2023-03-08T05:27:49.582Z",
            "deletedAt": null,
            "id": 99514,
            "code": "sdfmFKQVwNh26OCfr1LUw",
            "name": "소니",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:27:49.588Z",
          "updatedAt": "2023-03-08T05:27:49.588Z",
          "deletedAt": null,
          "publicationId": 4644,
          "tagId": 99515,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:27:49.582Z",
            "updatedAt": "2023-03-08T05:27:49.582Z",
            "deletedAt": null,
            "id": 99515,
            "code": "6h7_XN4a_4K59qRqtKxji",
            "name": "렌즈",
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
      },
      "discounts": [
        {
          "id": 9746,
          "name": null,
          "value": 232000,
          "calcMethod": "AMOUNT",
          "activeFrom": null,
          "activeTo": null,
          "qty": 0,
          "remain": null,
          "type": "INIT"
        }
      ]
    },
    {
      "id": 4649,
      "code": "P010150018S000200002",
      "title": "FE 28mm F2 (SEL28F20)",
      "offeringCode": "PU-4649-P010150018S000200002-20230308-002",
      "productOfferingCode": "PR-3502-20230308-001",
      "description": "복사대상: P010150018S000200001\n",
      "price": 489000,
      "applyCoupon": true,
      "customTag": "INIT",
      "prdType": 1,
      "prdCondition": null,
      "normalPrice": 489000,
      "trialPrice": 30400,
      "installmentPrice": 489000,
      "installmentPeriod": null,
      "trialPeriod": 1,
      "rating": 5,
      "residual": 3,
      "reviewCnt": 0,
      "isSoldOut": false,
      "createdAt": "2023-02-24T06:18:34.951Z",
      "purchaseSource": null,
      "isAdult": 1,
      "preface": null,
      "productId": 3502,
      "productCode": "P010150018",
      "productName": "FE 28mm F2 (SEL28F20)",
      "productDescription": null,
      "productCreatedAt": "2023-02-24T06:17:22.369Z",
      "brandId": 10,
      "brandCode": "SONY",
      "brandName": "소니",
      "brandDescription": null,
      "brandCreatedAt": "2021-01-28T04:26:29.407Z",
      "productMedia": [],
      "category": {
        "createdAt": "2022-08-17T07:11:56.544Z",
        "updatedAt": "2022-08-17T07:11:56.544Z",
        "deletedAt": null,
        "id": 150,
        "code": "S000127",
        "name": "카메라렌즈",
        "description": null,
        "type": "S",
        "isActive": true,
        "priority": 0,
        "parentId": 4,
        "alias": null
      },
      "thumbnail": {
        "uuid": "dc934761-c639-454f-88cf-949b4306ec9f",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/PUBLICATION/dc934761-c639-454f-88cf-949b4306ec9f.png",
        "mimeType": "image/png",
        "deviceType": null,
        "publicationId": 4649,
        "seq": 0,
        "createdAt": "2023-02-24T06:18:32.347Z"
      },
      "taggings": [
        {
          "createdAt": "2023-03-08T05:39:30.131Z",
          "updatedAt": "2023-03-08T05:39:30.131Z",
          "deletedAt": null,
          "publicationId": 4649,
          "tagId": 99580,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:39:30.125Z",
            "updatedAt": "2023-03-08T05:39:30.125Z",
            "deletedAt": null,
            "id": 99580,
            "code": "LOrWeRF7FWSFDf6Fpssc9",
            "name": "FE28mmF2",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:39:30.132Z",
          "updatedAt": "2023-03-08T05:39:30.132Z",
          "deletedAt": null,
          "publicationId": 4649,
          "tagId": 99581,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:39:30.127Z",
            "updatedAt": "2023-03-08T05:39:30.127Z",
            "deletedAt": null,
            "id": 99581,
            "code": "ffwDe5ONRznmCSmY6X-aR",
            "name": "SEL28F20",
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
      "id": 4671,
      "code": "P010148011S000200001",
      "title": "A7SM3 (ILCE-7SM3)",
      "offeringCode": null,
      "productOfferingCode": "PR-3516-20230227-002",
      "description": "",
      "price": 7900000,
      "applyCoupon": true,
      "customTag": "INIT",
      "prdType": 1,
      "prdCondition": null,
      "normalPrice": 7900000,
      "trialPrice": 39900,
      "installmentPrice": 7900000,
      "installmentPeriod": null,
      "trialPeriod": 1,
      "rating": 5,
      "residual": 2,
      "reviewCnt": 0,
      "isSoldOut": false,
      "createdAt": "2023-02-27T12:51:42.212Z",
      "purchaseSource": null,
      "isAdult": 1,
      "preface": null,
      "productId": 3516,
      "productCode": "P010148011",
      "productName": "A7SM3 (ILCE-7SM3) (메모리카드 증정)",
      "productDescription": null,
      "productCreatedAt": "2023-02-27T12:45:20.302Z",
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
        "uuid": "499863e1-2c95-44fb-92b0-c9ce9606b885",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/PUBLICATION/499863e1-2c95-44fb-92b0-c9ce9606b885.jpeg",
        "mimeType": "image/jpeg",
        "deviceType": null,
        "publicationId": 4671,
        "seq": 0,
        "createdAt": "2023-02-27T12:50:03.555Z"
      },
      "taggings": [
        {
          "createdAt": "2023-03-06T04:47:22.805Z",
          "updatedAt": "2023-03-06T04:47:22.805Z",
          "deletedAt": null,
          "publicationId": 4671,
          "tagId": 95861,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-06T04:47:22.797Z",
            "updatedAt": "2023-03-06T04:47:22.797Z",
            "deletedAt": null,
            "id": 95861,
            "code": "TOPVg2F_zrofraUcE3HUS",
            "name": "A7SM3",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-06T04:47:22.807Z",
          "updatedAt": "2023-03-06T04:47:22.807Z",
          "deletedAt": null,
          "publicationId": 4671,
          "tagId": 95862,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-06T04:47:22.799Z",
            "updatedAt": "2023-03-06T04:47:22.799Z",
            "deletedAt": null,
            "id": 95862,
            "code": "DHAUQjZgkwK3hsXqV37VV",
            "name": "ILCE-7SM3",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-06T04:47:22.808Z",
          "updatedAt": "2023-03-06T04:47:22.808Z",
          "deletedAt": null,
          "publicationId": 4671,
          "tagId": 95863,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-06T04:47:22.801Z",
            "updatedAt": "2023-03-06T04:47:22.801Z",
            "deletedAt": null,
            "id": 95863,
            "code": "ynCSAxibuKV7Vc4wmbTV2",
            "name": "소니",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-06T04:47:22.809Z",
          "updatedAt": "2023-03-06T04:47:22.809Z",
          "deletedAt": null,
          "publicationId": 4671,
          "tagId": 95864,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-06T04:47:22.802Z",
            "updatedAt": "2023-03-06T04:47:22.802Z",
            "deletedAt": null,
            "id": 95864,
            "code": "eMEpEakSWxT2pNq8XbmHT",
            "name": "SONY",
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
      "id": 4645,
      "code": "P010150017S000200002",
      "title": "FE 24-240mm (SEL24240)",
      "offeringCode": "PU-4645-P010150017S000200002-20230308-002",
      "productOfferingCode": "PR-3501-20230308-001",
      "description": "복사대상: P010150017S000200001\n",
      "price": 1200000,
      "applyCoupon": true,
      "customTag": "INIT",
      "prdType": 1,
      "prdCondition": null,
      "normalPrice": 1200000,
      "trialPrice": 61600,
      "installmentPrice": 1200000,
      "installmentPeriod": null,
      "trialPeriod": 1,
      "rating": 5,
      "residual": 5,
      "reviewCnt": 0,
      "isSoldOut": false,
      "createdAt": "2023-02-24T06:12:17.805Z",
      "purchaseSource": null,
      "isAdult": 1,
      "preface": null,
      "productId": 3501,
      "productCode": "P010150017",
      "productName": "FE 24-240mm (SEL24240)",
      "productDescription": null,
      "productCreatedAt": "2023-02-24T06:10:22.820Z",
      "brandId": 10,
      "brandCode": "SONY",
      "brandName": "소니",
      "brandDescription": null,
      "brandCreatedAt": "2021-01-28T04:26:29.407Z",
      "productMedia": [],
      "category": {
        "createdAt": "2022-08-17T07:11:56.544Z",
        "updatedAt": "2022-08-17T07:11:56.544Z",
        "deletedAt": null,
        "id": 150,
        "code": "S000127",
        "name": "카메라렌즈",
        "description": null,
        "type": "S",
        "isActive": true,
        "priority": 0,
        "parentId": 4,
        "alias": null
      },
      "thumbnail": {
        "uuid": "2db5fe80-0506-4f79-8786-3da4dc554e76",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/PUBLICATION/2db5fe80-0506-4f79-8786-3da4dc554e76.png",
        "mimeType": "image/png",
        "deviceType": null,
        "publicationId": 4645,
        "seq": 0,
        "createdAt": "2023-02-24T06:12:17.211Z"
      },
      "taggings": [
        {
          "createdAt": "2023-03-08T05:40:21.594Z",
          "updatedAt": "2023-03-08T05:40:21.594Z",
          "deletedAt": null,
          "publicationId": 4645,
          "tagId": 99592,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:40:21.588Z",
            "updatedAt": "2023-03-08T05:40:21.588Z",
            "deletedAt": null,
            "id": 99592,
            "code": "Ufb3Huc7YTIRGRn9g9exp",
            "name": "FE24-240mm",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:40:21.595Z",
          "updatedAt": "2023-03-08T05:40:21.595Z",
          "deletedAt": null,
          "publicationId": 4645,
          "tagId": 99593,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:40:21.589Z",
            "updatedAt": "2023-03-08T05:40:21.589Z",
            "deletedAt": null,
            "id": 99593,
            "code": "0CHk2vfFJbDoeLjXgmsy7",
            "name": "SEL24240",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:40:21.596Z",
          "updatedAt": "2023-03-08T05:40:21.596Z",
          "deletedAt": null,
          "publicationId": 4645,
          "tagId": 99594,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:40:21.590Z",
            "updatedAt": "2023-03-08T05:40:21.590Z",
            "deletedAt": null,
            "id": 99594,
            "code": "gmQInrQyLphrKhDZN82Q0",
            "name": "소니",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:40:21.597Z",
          "updatedAt": "2023-03-08T05:40:21.597Z",
          "deletedAt": null,
          "publicationId": 4645,
          "tagId": 99595,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:40:21.590Z",
            "updatedAt": "2023-03-08T05:40:21.590Z",
            "deletedAt": null,
            "id": 99595,
            "code": "sdlbPaPqvT1byQQecB8zR",
            "name": "렌즈",
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
      "id": 4646,
      "code": "P010016009S000200001",
      "title": "소니 FE마운트 렌즈 SEL24F14GM",
      "offeringCode": "PU-4646-P010016009S000200001-20230308-002",
      "productOfferingCode": "PR-1208-20230308-001",
      "description": "복사대상: P010016009S000900001\n",
      "price": 1749000,
      "applyCoupon": true,
      "customTag": "INIT",
      "prdType": 1,
      "prdCondition": null,
      "discountPrice": 1518000,
      "normalPrice": 1749000,
      "trialPrice": 96600,
      "installmentPrice": 1749000,
      "installmentPeriod": null,
      "trialPeriod": 1,
      "rating": 5,
      "residual": 5,
      "reviewCnt": 0,
      "isSoldOut": false,
      "createdAt": "2023-02-24T06:14:23.751Z",
      "purchaseSource": null,
      "isAdult": 1,
      "preface": null,
      "productId": 1208,
      "productCode": "P010016009",
      "productName": "소니 FE마운트 렌즈 SEL24F14GM",
      "productDescription": null,
      "productCreatedAt": "2022-06-13T06:09:19.494Z",
      "brandId": 10,
      "brandCode": "SONY",
      "brandName": "소니",
      "brandDescription": null,
      "brandCreatedAt": "2021-01-28T04:26:29.407Z",
      "productMedia": [],
      "category": {
        "createdAt": "2022-08-17T07:11:56.544Z",
        "updatedAt": "2022-08-17T07:11:56.544Z",
        "deletedAt": null,
        "id": 150,
        "code": "S000127",
        "name": "카메라렌즈",
        "description": null,
        "type": "S",
        "isActive": true,
        "priority": 0,
        "parentId": 4,
        "alias": null
      },
      "thumbnail": {
        "uuid": "2276b136-dd31-44bb-84bd-3f447895e8e8",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/PUBLICATION/2276b136-dd31-44bb-84bd-3f447895e8e8.jpeg",
        "mimeType": "image/jpeg",
        "deviceType": null,
        "publicationId": 4646,
        "seq": 0,
        "createdAt": "2023-02-24T06:14:21.008Z"
      },
      "taggings": [
        {
          "createdAt": "2023-03-08T05:25:52.352Z",
          "updatedAt": "2023-03-08T05:25:52.352Z",
          "deletedAt": null,
          "publicationId": 4646,
          "tagId": 99502,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:25:52.342Z",
            "updatedAt": "2023-03-08T05:25:52.342Z",
            "deletedAt": null,
            "id": 99502,
            "code": "JZvJKr2p7piAftME5QYrf",
            "name": "소니",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:25:52.354Z",
          "updatedAt": "2023-03-08T05:25:52.354Z",
          "deletedAt": null,
          "publicationId": 4646,
          "tagId": 99503,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:25:52.342Z",
            "updatedAt": "2023-03-08T05:25:52.342Z",
            "deletedAt": null,
            "id": 99503,
            "code": "seotwnVZRyVc--HaVYqRl",
            "name": "카메라렌즈",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:25:52.358Z",
          "updatedAt": "2023-03-08T05:25:52.358Z",
          "deletedAt": null,
          "publicationId": 4646,
          "tagId": 99504,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:25:52.343Z",
            "updatedAt": "2023-03-08T05:25:52.343Z",
            "deletedAt": null,
            "id": 99504,
            "code": "bCfYB5tzXShdFnUZyaxgh",
            "name": "FE마운트렌즈",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:25:52.362Z",
          "updatedAt": "2023-03-08T05:25:52.362Z",
          "deletedAt": null,
          "publicationId": 4646,
          "tagId": 99505,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:25:52.343Z",
            "updatedAt": "2023-03-08T05:25:52.343Z",
            "deletedAt": null,
            "id": 99505,
            "code": "W0B6pbrNMZgYvFwNcdOMb",
            "name": "SEL24F14GM",
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
      },
      "discounts": [
        {
          "id": 9744,
          "name": null,
          "value": 231000,
          "calcMethod": "AMOUNT",
          "activeFrom": null,
          "activeTo": null,
          "qty": 0,
          "remain": null,
          "type": "INIT"
        }
      ]
    },
    {
      "id": 4656,
      "code": "P010150023S000200002",
      "title": "FE 85mm F1.4 GM (SEL85F14GM)",
      "offeringCode": "PU-4656-P010150023S000200002-20230308-002",
      "productOfferingCode": "PR-3507-20230308-001",
      "description": "복사대상: P010150023S000200001\n",
      "price": 1836000,
      "applyCoupon": true,
      "customTag": "INIT",
      "prdType": 1,
      "prdCondition": null,
      "normalPrice": 1836000,
      "trialPrice": 122500,
      "installmentPrice": 1836000,
      "installmentPeriod": null,
      "trialPeriod": 1,
      "rating": 5,
      "residual": 5,
      "reviewCnt": 0,
      "isSoldOut": false,
      "createdAt": "2023-02-24T08:15:26.916Z",
      "purchaseSource": null,
      "isAdult": 1,
      "preface": null,
      "productId": 3507,
      "productCode": "P010150023",
      "productName": "FE 85mm F1.4 GM (SEL85F14GM)",
      "productDescription": null,
      "productCreatedAt": "2023-02-24T08:13:44.864Z",
      "brandId": 10,
      "brandCode": "SONY",
      "brandName": "소니",
      "brandDescription": null,
      "brandCreatedAt": "2021-01-28T04:26:29.407Z",
      "productMedia": [],
      "category": {
        "createdAt": "2022-08-17T07:11:56.544Z",
        "updatedAt": "2022-08-17T07:11:56.544Z",
        "deletedAt": null,
        "id": 150,
        "code": "S000127",
        "name": "카메라렌즈",
        "description": null,
        "type": "S",
        "isActive": true,
        "priority": 0,
        "parentId": 4,
        "alias": null
      },
      "thumbnail": {
        "uuid": "d8b2b297-595b-41a8-b734-df46bbb9818a",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/PUBLICATION/d8b2b297-595b-41a8-b734-df46bbb9818a.jpeg",
        "mimeType": "image/jpeg",
        "deviceType": null,
        "publicationId": 4656,
        "seq": 0,
        "createdAt": "2023-02-24T08:15:23.376Z"
      },
      "taggings": [
        {
          "createdAt": "2023-03-08T05:37:46.649Z",
          "updatedAt": "2023-03-08T05:37:46.649Z",
          "deletedAt": null,
          "publicationId": 4656,
          "tagId": 99564,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:37:46.638Z",
            "updatedAt": "2023-03-08T05:37:46.638Z",
            "deletedAt": null,
            "id": 99564,
            "code": "csuulnp210oxl8F_1BDBF",
            "name": "FE85mmF1.4GM",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:37:46.651Z",
          "updatedAt": "2023-03-08T05:37:46.651Z",
          "deletedAt": null,
          "publicationId": 4656,
          "tagId": 99565,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:37:46.643Z",
            "updatedAt": "2023-03-08T05:37:46.643Z",
            "deletedAt": null,
            "id": 99565,
            "code": "PVy-gXYPW_aXM5CSFE-77",
            "name": "SEL85F14GM",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:37:46.652Z",
          "updatedAt": "2023-03-08T05:37:46.652Z",
          "deletedAt": null,
          "publicationId": 4656,
          "tagId": 99566,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:37:46.644Z",
            "updatedAt": "2023-03-08T05:37:46.644Z",
            "deletedAt": null,
            "id": 99566,
            "code": "l6a3Ttdop-UlBsV2AOgZf",
            "name": "소니",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:37:46.656Z",
          "updatedAt": "2023-03-08T05:37:46.656Z",
          "deletedAt": null,
          "publicationId": 4656,
          "tagId": 99567,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:37:46.644Z",
            "updatedAt": "2023-03-08T05:37:46.644Z",
            "deletedAt": null,
            "id": 99567,
            "code": "Je-3VY90aWSI-ufzDsu_Y",
            "name": "카메라렌즈",
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
      "id": 4650,
      "code": "P010150019S000200001",
      "title": "FE PZ 16-35mm F4 G (SELP1635G)",
      "offeringCode": "PU-4650-P010150019S000200001-20230308-001",
      "productOfferingCode": "PR-3503-20230308-001",
      "description": "",
      "price": 2200000,
      "applyCoupon": true,
      "customTag": "INIT",
      "prdType": 1,
      "prdCondition": null,
      "discountPrice": 1705000,
      "normalPrice": 2200000,
      "trialPrice": 105000,
      "installmentPrice": 2200000,
      "installmentPeriod": null,
      "trialPeriod": 1,
      "rating": 5,
      "residual": 5,
      "reviewCnt": 0,
      "isSoldOut": false,
      "createdAt": "2023-02-24T06:23:05.885Z",
      "purchaseSource": null,
      "isAdult": 1,
      "preface": null,
      "productId": 3503,
      "productCode": "P010150019",
      "productName": "FE PZ 16-35mm F4 G (SELP1635G)",
      "productDescription": null,
      "productCreatedAt": "2023-02-24T06:21:54.898Z",
      "brandId": 10,
      "brandCode": "SONY",
      "brandName": "소니",
      "brandDescription": null,
      "brandCreatedAt": "2021-01-28T04:26:29.407Z",
      "productMedia": [],
      "category": {
        "createdAt": "2022-08-17T07:11:56.544Z",
        "updatedAt": "2022-08-17T07:11:56.544Z",
        "deletedAt": null,
        "id": 150,
        "code": "S000127",
        "name": "카메라렌즈",
        "description": null,
        "type": "S",
        "isActive": true,
        "priority": 0,
        "parentId": 4,
        "alias": null
      },
      "thumbnail": {
        "uuid": "1c5fdc89-d7d0-4bb4-ae8b-07f427ce8567",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/PUBLICATION/1c5fdc89-d7d0-4bb4-ae8b-07f427ce8567.png",
        "mimeType": "image/png",
        "deviceType": null,
        "publicationId": 4650,
        "seq": 0,
        "createdAt": "2023-02-24T06:22:43.482Z"
      },
      "taggings": [
        {
          "createdAt": "2023-03-08T05:13:28.601Z",
          "updatedAt": "2023-03-08T05:13:28.601Z",
          "deletedAt": null,
          "publicationId": 4650,
          "tagId": 99465,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:13:28.588Z",
            "updatedAt": "2023-03-08T05:13:28.588Z",
            "deletedAt": null,
            "id": 99465,
            "code": "NSAu0UArpROuRzHKA32NP",
            "name": "FEPZ16-35mmF4G",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:13:28.603Z",
          "updatedAt": "2023-03-08T05:13:28.603Z",
          "deletedAt": null,
          "publicationId": 4650,
          "tagId": 99466,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:13:28.591Z",
            "updatedAt": "2023-03-08T05:13:28.591Z",
            "deletedAt": null,
            "id": 99466,
            "code": "lHnhkJlpqDd9X92iH7yfW",
            "name": "SELP1635G",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:13:28.605Z",
          "updatedAt": "2023-03-08T05:13:28.605Z",
          "deletedAt": null,
          "publicationId": 4650,
          "tagId": 99467,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:13:28.592Z",
            "updatedAt": "2023-03-08T05:13:28.592Z",
            "deletedAt": null,
            "id": 99467,
            "code": "KEh1iOgdAVTT_-KR246RC",
            "name": "소니",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:13:28.606Z",
          "updatedAt": "2023-03-08T05:13:28.606Z",
          "deletedAt": null,
          "publicationId": 4650,
          "tagId": 99468,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:13:28.593Z",
            "updatedAt": "2023-03-08T05:13:28.593Z",
            "deletedAt": null,
            "id": 99468,
            "code": "n9NtJ3_4qrWK_9w2fGoan",
            "name": "SONY",
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
      },
      "discounts": [
        {
          "id": 9736,
          "name": null,
          "value": 495000,
          "calcMethod": "AMOUNT",
          "activeFrom": null,
          "activeTo": null,
          "qty": 0,
          "remain": null,
          "type": "INIT"
        }
      ]
    },
    {
      "id": 4648,
      "code": "P010150018S000200001",
      "title": " FE 28mm F2 (SEL28F20)",
      "offeringCode": "PU-4648-P010150018S000200001-20230308-002",
      "productOfferingCode": "PR-3502-20230308-001",
      "description": "",
      "price": 489000,
      "applyCoupon": true,
      "customTag": "INIT",
      "prdType": 1,
      "prdCondition": null,
      "discountPrice": 469000,
      "normalPrice": 489000,
      "trialPrice": 30400,
      "installmentPrice": 489000,
      "installmentPeriod": null,
      "trialPeriod": 1,
      "rating": 5,
      "residual": 5,
      "reviewCnt": 0,
      "isSoldOut": false,
      "createdAt": "2023-02-24T06:18:22.874Z",
      "purchaseSource": null,
      "isAdult": 1,
      "preface": null,
      "productId": 3502,
      "productCode": "P010150018",
      "productName": "FE 28mm F2 (SEL28F20)",
      "productDescription": null,
      "productCreatedAt": "2023-02-24T06:17:22.369Z",
      "brandId": 10,
      "brandCode": "SONY",
      "brandName": "소니",
      "brandDescription": null,
      "brandCreatedAt": "2021-01-28T04:26:29.407Z",
      "productMedia": [],
      "category": {
        "createdAt": "2022-08-17T07:11:56.544Z",
        "updatedAt": "2022-08-17T07:11:56.544Z",
        "deletedAt": null,
        "id": 150,
        "code": "S000127",
        "name": "카메라렌즈",
        "description": null,
        "type": "S",
        "isActive": true,
        "priority": 0,
        "parentId": 4,
        "alias": null
      },
      "thumbnail": {
        "uuid": "62772b2b-3963-4b0c-8ee9-625f215bc7fe",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/PUBLICATION/62772b2b-3963-4b0c-8ee9-625f215bc7fe.png",
        "mimeType": "image/png",
        "deviceType": null,
        "publicationId": 4648,
        "seq": 0,
        "createdAt": "2023-02-24T06:18:03.514Z"
      },
      "taggings": [
        {
          "createdAt": "2023-03-08T05:25:26.543Z",
          "updatedAt": "2023-03-08T05:25:26.543Z",
          "deletedAt": null,
          "publicationId": 4648,
          "tagId": 99500,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:25:26.536Z",
            "updatedAt": "2023-03-08T05:25:26.536Z",
            "deletedAt": null,
            "id": 99500,
            "code": "wHbrEcMSPc3Xm83fVMtVb",
            "name": "FE28mmF2",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:25:26.548Z",
          "updatedAt": "2023-03-08T05:25:26.548Z",
          "deletedAt": null,
          "publicationId": 4648,
          "tagId": 99501,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:25:26.537Z",
            "updatedAt": "2023-03-08T05:25:26.537Z",
            "deletedAt": null,
            "id": 99501,
            "code": "kvmZxTxfmWQTAFqfMyJDC",
            "name": "SEL28F20",
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
      },
      "discounts": [
        {
          "id": 9743,
          "name": null,
          "value": 20000,
          "calcMethod": "AMOUNT",
          "activeFrom": null,
          "activeTo": null,
          "qty": 0,
          "remain": null,
          "type": "INIT"
        }
      ]
    },
    {
      "id": 4652,
      "code": "P010150008S000200002",
      "title": "FE PZ 28-135mm (SELP28135G)",
      "offeringCode": "PU-4652-P010150008S000200002-20230308-002",
      "productOfferingCode": "PR-3494-20230308-001",
      "description": "복사대상: P010150008S000200001\n",
      "price": 3500000,
      "applyCoupon": true,
      "customTag": "INIT",
      "prdType": 1,
      "prdCondition": null,
      "normalPrice": 3500000,
      "trialPrice": 185500,
      "installmentPrice": 3500000,
      "installmentPeriod": null,
      "trialPeriod": 1,
      "rating": 5,
      "residual": 3,
      "reviewCnt": 0,
      "isSoldOut": false,
      "createdAt": "2023-02-24T06:28:09.928Z",
      "purchaseSource": null,
      "isAdult": 1,
      "preface": null,
      "productId": 3494,
      "productCode": "P010150008",
      "productName": "SELP28135G",
      "productDescription": null,
      "productCreatedAt": "2023-02-23T09:18:26.208Z",
      "brandId": 10,
      "brandCode": "SONY",
      "brandName": "소니",
      "brandDescription": null,
      "brandCreatedAt": "2021-01-28T04:26:29.407Z",
      "productMedia": [],
      "category": {
        "createdAt": "2022-08-17T07:11:56.544Z",
        "updatedAt": "2022-08-17T07:11:56.544Z",
        "deletedAt": null,
        "id": 150,
        "code": "S000127",
        "name": "카메라렌즈",
        "description": null,
        "type": "S",
        "isActive": true,
        "priority": 0,
        "parentId": 4,
        "alias": null
      },
      "thumbnail": {
        "uuid": "b269ab5e-e1b3-4661-855d-a8b32b51c87a",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/PUBLICATION/b269ab5e-e1b3-4661-855d-a8b32b51c87a.png",
        "mimeType": "image/png",
        "deviceType": null,
        "publicationId": 4652,
        "seq": 0,
        "createdAt": "2023-02-27T04:10:40.164Z"
      },
      "taggings": [
        {
          "createdAt": "2023-03-08T05:34:45.018Z",
          "updatedAt": "2023-03-08T05:34:45.018Z",
          "deletedAt": null,
          "publicationId": 4652,
          "tagId": 99548,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:34:45.010Z",
            "updatedAt": "2023-03-08T05:34:45.010Z",
            "deletedAt": null,
            "id": 99548,
            "code": "5tQdP3O6xCydztnS7jIdl",
            "name": "FEPZ28-135mmF4GOSS",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:34:45.020Z",
          "updatedAt": "2023-03-08T05:34:45.020Z",
          "deletedAt": null,
          "publicationId": 4652,
          "tagId": 99549,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:34:45.014Z",
            "updatedAt": "2023-03-08T05:34:45.014Z",
            "deletedAt": null,
            "id": 99549,
            "code": "_7qDZPVLLF_LA_upZ8Q-i",
            "name": "SELP28135G",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:34:45.021Z",
          "updatedAt": "2023-03-08T05:34:45.021Z",
          "deletedAt": null,
          "publicationId": 4652,
          "tagId": 99550,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:34:45.014Z",
            "updatedAt": "2023-03-08T05:34:45.014Z",
            "deletedAt": null,
            "id": 99550,
            "code": "IOp6mWHev6V_GeS3TaBmV",
            "name": "소니",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:34:45.022Z",
          "updatedAt": "2023-03-08T05:34:45.022Z",
          "deletedAt": null,
          "publicationId": 4652,
          "tagId": 99551,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:34:45.015Z",
            "updatedAt": "2023-03-08T05:34:45.015Z",
            "deletedAt": null,
            "id": 99551,
            "code": "TafU23DwifeIyWPoCmVDW",
            "name": "카메라렌즈",
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
      "id": 4647,
      "code": "P010016009S000200002",
      "title": "FE 24mm GM (SEL24F14GM)",
      "offeringCode": "PU-4647-P010016009S000200002-20230308-002",
      "productOfferingCode": "PR-1208-20230308-001",
      "description": "복사대상: P010016009S000200001\n복사대상: P010016009S000900001\n",
      "price": 1790000,
      "applyCoupon": true,
      "customTag": "INIT",
      "prdType": 1,
      "prdCondition": null,
      "normalPrice": 1749000,
      "trialPrice": 96600,
      "installmentPrice": 1790000,
      "installmentPeriod": null,
      "trialPeriod": 1,
      "rating": 5,
      "residual": 3,
      "reviewCnt": 0,
      "isSoldOut": false,
      "createdAt": "2023-02-24T06:14:48.658Z",
      "purchaseSource": null,
      "isAdult": 1,
      "preface": null,
      "productId": 1208,
      "productCode": "P010016009",
      "productName": "소니 FE마운트 렌즈 SEL24F14GM",
      "productDescription": null,
      "productCreatedAt": "2022-06-13T06:09:19.494Z",
      "brandId": 10,
      "brandCode": "SONY",
      "brandName": "소니",
      "brandDescription": null,
      "brandCreatedAt": "2021-01-28T04:26:29.407Z",
      "productMedia": [],
      "category": {
        "createdAt": "2022-08-17T07:11:56.544Z",
        "updatedAt": "2022-08-17T07:11:56.544Z",
        "deletedAt": null,
        "id": 150,
        "code": "S000127",
        "name": "카메라렌즈",
        "description": null,
        "type": "S",
        "isActive": true,
        "priority": 0,
        "parentId": 4,
        "alias": null
      },
      "thumbnail": {
        "uuid": "513f7c3e-21be-48f6-9b0e-eb63c7360b84",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/PUBLICATION/513f7c3e-21be-48f6-9b0e-eb63c7360b84.jpeg",
        "mimeType": "image/jpeg",
        "deviceType": null,
        "publicationId": 4647,
        "seq": 0,
        "createdAt": "2023-02-24T06:14:46.064Z"
      },
      "taggings": [
        {
          "createdAt": "2023-03-08T05:39:48.688Z",
          "updatedAt": "2023-03-08T05:39:48.688Z",
          "deletedAt": null,
          "publicationId": 4647,
          "tagId": 99582,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:39:48.680Z",
            "updatedAt": "2023-03-08T05:39:48.680Z",
            "deletedAt": null,
            "id": 99582,
            "code": "sRVmfPbkunZbeUUbGbPES",
            "name": "소니",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:39:48.689Z",
          "updatedAt": "2023-03-08T05:39:48.689Z",
          "deletedAt": null,
          "publicationId": 4647,
          "tagId": 99583,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:39:48.681Z",
            "updatedAt": "2023-03-08T05:39:48.681Z",
            "deletedAt": null,
            "id": 99583,
            "code": "F7TOyg8M0r08vudeqyYKv",
            "name": "카메라렌즈",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:39:48.691Z",
          "updatedAt": "2023-03-08T05:39:48.691Z",
          "deletedAt": null,
          "publicationId": 4647,
          "tagId": 99584,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:39:48.681Z",
            "updatedAt": "2023-03-08T05:39:48.681Z",
            "deletedAt": null,
            "id": 99584,
            "code": "6QtbXqbIYtmY4ZPIIlhPZ",
            "name": "FE마운트렌즈",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:39:48.692Z",
          "updatedAt": "2023-03-08T05:39:48.692Z",
          "deletedAt": null,
          "publicationId": 4647,
          "tagId": 99585,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:39:48.682Z",
            "updatedAt": "2023-03-08T05:39:48.682Z",
            "deletedAt": null,
            "id": 99585,
            "code": "tPNeqMB1Btkmy9WmawKdE",
            "name": "SEL24F14GM",
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
      "id": 4654,
      "code": "P010150021S000200002",
      "title": "SEL 10-18mm (SEL1018)",
      "offeringCode": "PU-4654-P010150021S000200002-20230308-002",
      "productOfferingCode": "PR-3505-20230308-001",
      "description": "복사대상: P010150021S000200001\n",
      "price": 1390000,
      "applyCoupon": true,
      "customTag": "INIT",
      "prdType": 1,
      "prdCondition": null,
      "normalPrice": 1390000,
      "trialPrice": 54600,
      "installmentPrice": 1390000,
      "installmentPeriod": null,
      "trialPeriod": 1,
      "rating": 5,
      "residual": 3,
      "reviewCnt": 0,
      "isSoldOut": false,
      "createdAt": "2023-02-24T07:12:59.433Z",
      "purchaseSource": null,
      "isAdult": 1,
      "preface": null,
      "productId": 3505,
      "productCode": "P010150021",
      "productName": "SEL 10-18mm F4 OSS (SEL1018)",
      "productDescription": null,
      "productCreatedAt": "2023-02-24T07:10:46.124Z",
      "brandId": 10,
      "brandCode": "SONY",
      "brandName": "소니",
      "brandDescription": null,
      "brandCreatedAt": "2021-01-28T04:26:29.407Z",
      "productMedia": [],
      "category": {
        "createdAt": "2022-08-17T07:11:56.544Z",
        "updatedAt": "2022-08-17T07:11:56.544Z",
        "deletedAt": null,
        "id": 150,
        "code": "S000127",
        "name": "카메라렌즈",
        "description": null,
        "type": "S",
        "isActive": true,
        "priority": 0,
        "parentId": 4,
        "alias": null
      },
      "thumbnail": {
        "uuid": "252e48ee-2e3a-44e7-a14c-faa18a7ac359",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/PUBLICATION/252e48ee-2e3a-44e7-a14c-faa18a7ac359.png",
        "mimeType": "image/png",
        "deviceType": null,
        "publicationId": 4654,
        "seq": 0,
        "createdAt": "2023-02-24T07:12:58.178Z"
      },
      "taggings": [
        {
          "createdAt": "2023-03-08T05:33:56.995Z",
          "updatedAt": "2023-03-08T05:33:56.995Z",
          "deletedAt": null,
          "publicationId": 4654,
          "tagId": 99544,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:33:56.980Z",
            "updatedAt": "2023-03-08T05:33:56.980Z",
            "deletedAt": null,
            "id": 99544,
            "code": "QPWuUAQjnxWn9uwbzF2BX",
            "name": "SEL10-18mmF4OSS",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:33:56.997Z",
          "updatedAt": "2023-03-08T05:33:56.997Z",
          "deletedAt": null,
          "publicationId": 4654,
          "tagId": 99545,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:33:56.986Z",
            "updatedAt": "2023-03-08T05:33:56.986Z",
            "deletedAt": null,
            "id": 99545,
            "code": "S3NcggeE6IUafM-Wh4bD2",
            "name": "SEL1018",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:33:56.999Z",
          "updatedAt": "2023-03-08T05:33:56.999Z",
          "deletedAt": null,
          "publicationId": 4654,
          "tagId": 99546,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:33:56.987Z",
            "updatedAt": "2023-03-08T05:33:56.987Z",
            "deletedAt": null,
            "id": 99546,
            "code": "vUhGqQpnkJo-q_-w9EtU8",
            "name": "소니",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-08T05:33:57.001Z",
          "updatedAt": "2023-03-08T05:33:57.001Z",
          "deletedAt": null,
          "publicationId": 4654,
          "tagId": 99547,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-08T05:33:56.987Z",
            "updatedAt": "2023-03-08T05:33:56.987Z",
            "deletedAt": null,
            "id": 99547,
            "code": "CVUw6XjKfL500EDqVUq61",
            "name": "카메라렌즈",
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
      "id": 4655,
      "code": "P010150023S000200001",
      "title": "FE 85mm F1.4 GM (SEL85F14GM)",
      "offeringCode": "PU-4655-P010150023S000200001-20230309-001",
      "productOfferingCode": "PR-3507-20230308-001",
      "description": "",
      "price": 1836000,
      "applyCoupon": true,
      "customTag": "INIT",
      "prdType": 1,
      "prdCondition": null,
      "normalPrice": 1836000,
      "trialPrice": 122500,
      "installmentPrice": 1836000,
      "installmentPeriod": null,
      "trialPeriod": 1,
      "rating": 5,
      "residual": 4,
      "reviewCnt": 0,
      "isSoldOut": false,
      "createdAt": "2023-02-24T08:15:10.049Z",
      "purchaseSource": null,
      "isAdult": 1,
      "preface": null,
      "productId": 3507,
      "productCode": "P010150023",
      "productName": "FE 85mm F1.4 GM (SEL85F14GM)",
      "productDescription": null,
      "productCreatedAt": "2023-02-24T08:13:44.864Z",
      "brandId": 10,
      "brandCode": "SONY",
      "brandName": "소니",
      "brandDescription": null,
      "brandCreatedAt": "2021-01-28T04:26:29.407Z",
      "productMedia": [],
      "category": {
        "createdAt": "2022-08-17T07:11:56.544Z",
        "updatedAt": "2022-08-17T07:11:56.544Z",
        "deletedAt": null,
        "id": 150,
        "code": "S000127",
        "name": "카메라렌즈",
        "description": null,
        "type": "S",
        "isActive": true,
        "priority": 0,
        "parentId": 4,
        "alias": null
      },
      "thumbnail": {
        "uuid": "ceeaa942-47f6-4776-8fde-f4dc89121b89",
        "type": "THUMBNAIL",
        "uri":
            "https://dvd6ljcj7w3pj.cloudfront.net/media/PUBLICATION/ceeaa942-47f6-4776-8fde-f4dc89121b89.jpeg",
        "mimeType": "image/jpeg",
        "deviceType": null,
        "publicationId": 4655,
        "seq": 0,
        "createdAt": "2023-02-24T08:14:29.584Z"
      },
      "taggings": [
        {
          "createdAt": "2023-03-09T02:04:33.628Z",
          "updatedAt": "2023-03-09T02:04:33.628Z",
          "deletedAt": null,
          "publicationId": 4655,
          "tagId": 101122,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-09T02:04:33.617Z",
            "updatedAt": "2023-03-09T02:04:33.617Z",
            "deletedAt": null,
            "id": 101122,
            "code": "S9isLI-gZWfGiZHKsPP7Q",
            "name": "FE85mmF1.4GM",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-09T02:04:33.630Z",
          "updatedAt": "2023-03-09T02:04:33.630Z",
          "deletedAt": null,
          "publicationId": 4655,
          "tagId": 101123,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-09T02:04:33.621Z",
            "updatedAt": "2023-03-09T02:04:33.621Z",
            "deletedAt": null,
            "id": 101123,
            "code": "kr6ivaOshGO2wGr6A9Jlo",
            "name": "SEL85F14GM",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-09T02:04:33.631Z",
          "updatedAt": "2023-03-09T02:04:33.631Z",
          "deletedAt": null,
          "publicationId": 4655,
          "tagId": 101124,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-09T02:04:33.622Z",
            "updatedAt": "2023-03-09T02:04:33.622Z",
            "deletedAt": null,
            "id": 101124,
            "code": "e644-_T7CFOacJXad1A2Y",
            "name": "소니",
            "description": null,
            "type": "A"
          }
        },
        {
          "createdAt": "2023-03-09T02:04:33.632Z",
          "updatedAt": "2023-03-09T02:04:33.632Z",
          "deletedAt": null,
          "publicationId": 4655,
          "tagId": 101125,
          "isOpen": true,
          "tag": {
            "createdAt": "2023-03-09T02:04:33.622Z",
            "updatedAt": "2023-03-09T02:04:33.622Z",
            "deletedAt": null,
            "id": 101125,
            "code": "G45GwP_sgar0OK_Mb1Jjl",
            "name": "카메라렌즈",
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
    }
  ],
  "totalCount": 173
};
