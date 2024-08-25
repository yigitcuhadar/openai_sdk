import 'dart:typed_data';

import '../models/models.dart';

abstract class AIRepository {
  Stream<Uint8List> createSpeech(SpeechRequest request);
  Future<TranscriptionResponse> createTranscription(TranscriptionRequest request);
  Future<TranslationResponse> createTranslation(TranslationRequest request);
  Future<dynamic> createChatCompletion(CompletionRequest request);
}
