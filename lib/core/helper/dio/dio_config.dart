import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

String kProdUrl = "https://identitytoolkit.googleapis.com/v1/";

String kTestUrl = "https://identitytoolkit.googleapis.com/v1/";

String kBaseUrl = kDebugMode ? kTestUrl : kProdUrl;

BaseOptions dioOptions = BaseOptions(
  baseUrl: kBaseUrl,
  responseType: ResponseType.json,
  headers: {'accept': '/', 'Content-Type': 'application/json'},
);
