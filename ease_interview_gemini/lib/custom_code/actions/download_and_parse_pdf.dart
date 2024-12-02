// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> downloadAndParsePdf(String pdfUrl) async {
  const apiKey =
      'AIzaSyBaZhPPYtruiAL3f5ungfLzZ7rX60nGK8c'; // Replace with your Gemini API key

  // Function to download PDF content from URL
  Future<List<int>> getPdfContent(String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode != 200) {
      throw Exception('Failed to download PDF: ${response.statusCode}');
    }
    print('PDF downloaded successfully.');
    return response.bodyBytes;
  }

  // Create the request body for Gemini API
  Future<Map<String, dynamic>> createGeminiRequest(String pdfUrl) async {
    final pdfContent = await getPdfContent(pdfUrl);
    final pdfBase64 = base64Encode(pdfContent);

    print('PDF successfully encoded to Base64.');

    return {
      "contents": [
        {
          "parts": [
            {
              "inline_data": {
                "mime_type": "application/pdf",
                "data": pdfBase64,
              }
            },
            {
              "text":
                  "Parse this resume and extract the following information: name, education details (university name, degree level, major, GPA), work experiences (company name, designation, start date in YYYY-MM-DD format, end date in YYYY-MM-DD format, roles and responsibilities), projects (title, technologies used, roles and responsibilities), and skills."
            }
          ]
        }
      ],
      "generationConfig": {
        "response_mime_type": "application/json",
      }
    };
  }

  try {
    // Build request
    final requestBody = await createGeminiRequest(pdfUrl);
    const apiUrl =
        'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent';

    print('Request body constructed: ${jsonEncode(requestBody)}');

    // Call API
    final response = await http.post(
      Uri.parse('$apiUrl?key=$apiKey'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(requestBody),
    );

    print('API Response Code: ${response.statusCode}');
    print('API Response Body: ${response.body}');

    if (response.statusCode != 200) {
      throw Exception('Failed to call Gemini API: ${response.statusCode}');
    }

    // Parse the response
    final responseBody = jsonDecode(response.body);
    final textResponse =
        responseBody['candidates']?[0]['content']?['parts']?[0]['text'];
    if (textResponse == null) {
      throw Exception(
          'Failed to parse response text. Check the API response structure.');
    }

    print('Extracted Text Response: $textResponse');
    return textResponse;
  } catch (error) {
    print('Error: $error');
    rethrow;
  }
}
