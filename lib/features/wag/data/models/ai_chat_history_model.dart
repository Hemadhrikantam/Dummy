import 'package:dummy/features/wag/domain/entities/ai_chat_history.dart';

class AiMessageModel extends AiMessage {
  const AiMessageModel({
    required super.content,
    required super.createdAt,
    required super.role,
    super.imageUrls,
  });

  factory AiMessageModel.fromJson(Map<String, dynamic> json) {
    final content = (json['content'] ?? '').toString();
    final createdAtStr = (json['created_at'] ?? '').toString();
    final createdAt = createdAtStr.isNotEmpty
        ? DateTime.tryParse(createdAtStr) ?? DateTime.now()
        : DateTime.now();
    final role = (json['role'] ?? '').toString();
    final imageUrlsRaw = json['image_urls'];
    final imageUrls = imageUrlsRaw is List
        ? imageUrlsRaw.map((e) => e.toString()).toList()
        : null;

    return AiMessageModel(
      content: content,
      createdAt: createdAt,
      role: role,
      imageUrls: imageUrls,
    );
  }
}

class AiPaginationModel extends AiPagination {
  const AiPaginationModel({
    required super.total,
    required super.page,
    required super.limit,
    required super.hasMore,
  });

  factory AiPaginationModel.fromJson(Map<String, dynamic> json) {
    return AiPaginationModel(
      total: (json['total'] as num?)?.toInt() ?? 0,
      page: (json['page'] as num?)?.toInt() ?? 1,
      limit: (json['limit'] as num?)?.toInt() ?? 15,
      hasMore: (json['hasMore'] as bool?) ?? false,
    );
  }
}

class AiChatHistoryModel extends AiChatHistory {
  const AiChatHistoryModel({required super.messages, required super.pagination});

  factory AiChatHistoryModel.fromJson(Map<String, dynamic> root) {
    final data = (root['data'] ?? root) as Map<String, dynamic>;
    final msgsRaw = data['messages'] as List? ?? const [];
    final messages = msgsRaw
        .map((e) => AiMessageModel.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList();
    final paginationMap = Map<String, dynamic>.from(data['pagination'] ?? {});
    final pagination = AiPaginationModel.fromJson(paginationMap);

    return AiChatHistoryModel(messages: messages, pagination: pagination);
  }
}