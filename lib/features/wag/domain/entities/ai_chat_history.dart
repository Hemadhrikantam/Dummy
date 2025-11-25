import 'package:equatable/equatable.dart';

class AiMessage extends Equatable {
  final String content;
  final DateTime createdAt;
  final String role;
  final List<String>? imageUrls;

  const AiMessage({
    required this.content,
    required this.createdAt,
    required this.role,
    this.imageUrls,
  });

  @override
  List<Object?> get props => [content, createdAt, role, imageUrls];
}

class AiPagination extends Equatable {
  final int total;
  final int page;
  final int limit;
  final bool hasMore;

  const AiPagination({
    required this.total,
    required this.page,
    required this.limit,
    required this.hasMore,
  });

  @override
  List<Object?> get props => [total, page, limit, hasMore];
}

class AiChatHistory extends Equatable {
  final List<AiMessage> messages;
  final AiPagination pagination;

  const AiChatHistory({
    this.messages = const [],
    required this.pagination,
  });

  @override
  List<Object?> get props => [messages, pagination];
}

