import 'dart:convert';
import 'dart:developer' as developer;
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart'; // For kIsWeb check

class PokemonService {
  static const String apiUrl = 'https://api.pokemontcg.io/v2/cards';
  static const String apiKey = 'd2e653f4-4977-4ba9-b4ac-9dd0d787efbe';

  static Future<List<dynamic>> fetchCards() async {
    try {
      Uri uri = Uri.parse(apiUrl);

      // 🌐 If running on web (Edge/Chrome), use a CORS-friendly proxy
      if (kIsWeb) {
        final proxyUrl =
            'https://api.allorigins.win/get?url=${Uri.encodeComponent(apiUrl)}';
        uri = Uri.parse(proxyUrl);
        developer.log('Using proxy URL (CORS bypass): $uri');
      } else {
        developer.log('Using direct API URL: $uri');
      }

      // Make the request
      final response = await http.get(
        uri,
        headers: {
          'X-Api-Key': apiKey,
          'Accept': 'application/json',
        },
      );

      developer.log('Response status: ${response.statusCode}');

      // 🧩 If proxy used, extract the "contents" field
      String responseBody;
      if (kIsWeb) {
        final bodyJson = json.decode(response.body);
        responseBody = bodyJson['contents'] ?? '{}';
      } else {
        responseBody = response.body;
      }

      if (response.statusCode == 200) {
        final data = json.decode(responseBody) as Map<String, dynamic>;
        final cards = data['data'] as List<dynamic>?;

        if (cards == null || cards.isEmpty) {
          developer.log('No cards found in response.');
          return [];
        }

        developer.log('Successfully fetched ${cards.length} cards.');
        return cards;
      } else {
        developer.log('Error response: $responseBody');
        throw Exception(
            'Failed to load Pokémon cards. HTTP ${response.statusCode}');
      }
    } catch (e) {
      developer.log('Error fetching Pokémon cards: $e');
      throw Exception(
          'Unable to load Pokémon cards. Please check your internet connection. (Error: $e)');
    }
  }
}
