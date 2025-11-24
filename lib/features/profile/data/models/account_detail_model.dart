import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/profile/domain/entities/account_detail.dart';

class AccountDetailModel extends AccountDetail {
  const AccountDetailModel({
    required super.user,
    required super.account,
    required super.users,
    required super.pets,
  });

  factory AccountDetailModel.fromMap(JsonMap map) {
    String? _clean(dynamic v) {
      if (v == null) return null;
      final s = v.toString().trim();
      if (s.isEmpty) return null;
      return s.replaceAll('`', '');
    }

    String _cleanReq(dynamic v) => (_clean(v) ?? '');

    bool _parseBool(dynamic v) {
      if (v == null) return false;
      if (v is bool) return v;
      final s = v.toString().toLowerCase();
      return s == 'true' || s == '1';
    }

    DateTime _parseDate(dynamic v) {
      if (v == null) return DateTime.now();
      if (v is DateTime) return v;
      return DateTime.tryParse(v.toString()) ?? DateTime.now();
    }

    DateTime? _parseDateNullable(dynamic v) {
      if (v == null) return null;
      if (v is DateTime) return v;
      return DateTime.tryParse(v.toString());
    }

    final userMap = (map['user'] ?? const <String, dynamic>{}) as Map<String, dynamic>;
    final accountMap = (map['account'] ?? const <String, dynamic>{}) as Map<String, dynamic>;
    final usersList = (map['users'] as List?) ?? const [];
    final petsList = (map['pets'] as List?) ?? const [];

    final user = AccountUser(
      id: _cleanReq(userMap['id']),
      mobileNumber: _cleanReq(userMap['mobile_number']),
      email: _clean(userMap['email']),
      username: _cleanReq(userMap['username']),
      isActive: _parseBool(userMap['is_active']),
      createdAt: _parseDate(userMap['created_at']),
    );

    final account = Account(
      id: _cleanReq(accountMap['id']),
      accountName: _cleanReq(accountMap['account_name']),
      accountType: _cleanReq(accountMap['account_type']),
      subscriptionType: _cleanReq(accountMap['subscription_type']),
      preferredCurrency: _cleanReq(accountMap['preferred_currency']),
      createdAt: _parseDate(accountMap['created_at']),
      updatedAt: _parseDate(accountMap['updated_at']),
    );

    final users = usersList.map((e) {
      final m = (e ?? const <String, dynamic>{}) as Map<String, dynamic>;
      return AccountMember(
        accountUserId: _cleanReq(m['account_user_id']),
        memberName: _cleanReq(m['member_name']),
        role: _cleanReq(m['role']),
        isMainAccount: _parseBool(m['is_main_account']),
        userId: _cleanReq(m['user_id']),
        mobileNumber: _cleanReq(m['mobile_number']),
        email: _clean(m['email']),
      );
    }).toList();

    final pets = petsList.map((e) {
      final p = (e ?? const <String, dynamic>{}) as Map<String, dynamic>;
      final tagsRaw = p['personality_tags'];
      final tags = tagsRaw is List
          ? tagsRaw.map((t) => _cleanReq(t)).where((t) => t.isNotEmpty).toList()
          : const <String>[];
      return AccountPet(
        id: _cleanReq(p['id']),
        name: _cleanReq(p['name']),
        type: _cleanReq(p['type']),
        breedId: _clean(p['breed_id']),
        breedName: _clean(p['breed_name']),
        dob: _parseDateNullable(p['dob']),
        gender: _clean(p['gender']),
        weightValue: _clean(p['weight_value']),
        weightUnit: _clean(p['weight_unit']),
        imageUrl: _clean(p['image_url']),
        createdAt: _parseDateNullable(p['created_at']),
        updatedAt: _parseDateNullable(p['updated_at']),
        personalityTags: tags,
      );
    }).toList();

    return AccountDetailModel(
      user: user,
      account: account,
      users: users,
      pets: pets,
    );
  }

  JsonMap toMap() {
    String? _opt(String? v) => v;
    return {
      'user': {
        'id': user.id,
        'mobile_number': user.mobileNumber,
        'email': _opt(user.email),
        'is_active': user.isActive,
        'created_at': user.createdAt.toIso8601String(),
      },
      'account': {
        'id': account.id,
        'account_name': account.accountName,
        'account_type': account.accountType,
        'subscription_type': account.subscriptionType,
        'preferred_currency': account.preferredCurrency,
        'created_at': account.createdAt.toIso8601String(),
        'updated_at': account.updatedAt.toIso8601String(),
      },
      'users': users
          .map((m) => {
                'account_user_id': m.accountUserId,
                'member_name': m.memberName,
                'role': m.role,
                'is_main_account': m.isMainAccount,
                'user_id': m.userId,
                'mobile_number': m.mobileNumber,
                'email': _opt(m.email),
              })
          .toList(),
      'pets': pets
          .map((p) => {
                'id': p.id,
                'name': p.name,
                'type': p.type,
                'breed_id': _opt(p.breedId),
                'breed_name': _opt(p.breedName),
                'dob': p.dob?.toIso8601String(),
                'gender': _opt(p.gender),
                'weight_value': _opt(p.weightValue),
                'weight_unit': _opt(p.weightUnit),
                'image_url': _opt(p.imageUrl),
                'created_at': p.createdAt?.toIso8601String(),
                'updated_at': p.updatedAt?.toIso8601String(),
                'personality_tags': p.personalityTags,
              })
          .toList(),
    };
  }
}