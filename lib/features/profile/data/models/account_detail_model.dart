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
    String? clean(dynamic v) {
      if (v == null) return null;
      final s = v.toString().trim();
      if (s.isEmpty) return null;
      return s.replaceAll('`', '');
    }

    String cleanReq(dynamic v) => (clean(v) ?? '');

    bool parseBool(dynamic v) {
      if (v == null) return false;
      if (v is bool) return v;
      final s = v.toString().toLowerCase();
      return s == 'true' || s == '1';
    }

    DateTime parseDate(dynamic v) {
      if (v == null) return DateTime.now();
      if (v is DateTime) return v;
      return DateTime.tryParse(v.toString()) ?? DateTime.now();
    }

    DateTime? parseDateNullable(dynamic v) {
      if (v == null) return null;
      if (v is DateTime) return v;
      return DateTime.tryParse(v.toString());
    }

    final userMap = (map['user'] ?? const <String, dynamic>{}) as Map<String, dynamic>;
    final accountMap = (map['account'] ?? const <String, dynamic>{}) as Map<String, dynamic>;
    final usersList = (map['users'] as List?) ?? const [];
    final petsList = (map['pets'] as List?) ?? const [];

    final user = AccountUser(
      id: cleanReq(userMap['id']),
      mobileNumber: cleanReq(userMap['mobile_number']),
      email: clean(userMap['email']),
      username: cleanReq(userMap['username']),
      isActive: parseBool(userMap['is_active']),
      createdAt: parseDate(userMap['created_at']),
    );

    final account = Account(
      id: cleanReq(accountMap['id']),
      accountName: cleanReq(accountMap['account_name']),
      accountType: cleanReq(accountMap['account_type']),
      subscriptionType: cleanReq(accountMap['subscription_type']),
      preferredCurrency: cleanReq(accountMap['preferred_currency']),
      createdAt: parseDate(accountMap['created_at']),
      updatedAt: parseDate(accountMap['updated_at']),
    );

    final users = usersList.map((e) {
      final m = (e ?? const <String, dynamic>{}) as Map<String, dynamic>;
      return AccountMember(
        accountUserId: cleanReq(m['account_user_id']),
        memberName: cleanReq(m['member_name']),
        role: cleanReq(m['role']),
        isMainAccount: parseBool(m['is_main_account']),
        userId: cleanReq(m['user_id']),
        mobileNumber: cleanReq(m['mobile_number']),
        email: clean(m['email']),
      );
    }).toList();

    final pets = petsList.map((e) {
      final p = (e ?? const <String, dynamic>{}) as Map<String, dynamic>;
      final tagsRaw = p['personality_tags'];
      final tags = tagsRaw is List
          ? tagsRaw.map((t) => cleanReq(t)).where((t) => t.isNotEmpty).toList()
          : const <String>[];
      return AccountPet(
        id: cleanReq(p['id']),
        name: cleanReq(p['name']),
        type: cleanReq(p['type']),
        breedId: clean(p['breed_id']),
        breedName: clean(p['breed_name']),
        dob: parseDateNullable(p['dob']),
        gender: clean(p['gender']),
        weightValue: clean(p['weight_value']),
        weightUnit: clean(p['weight_unit']),
        imageUrl: clean(p['image_url']),
        createdAt: parseDateNullable(p['created_at']),
        updatedAt: parseDateNullable(p['updated_at']),
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
    String? opt(String? v) => v;
    return {
      'user': {
        'id': user.id,
        'mobile_number': user.mobileNumber,
        'email': opt(user.email),
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
                'email': opt(m.email),
              })
          .toList(),
      'pets': pets
          .map((p) => {
                'id': p.id,
                'name': p.name,
                'type': p.type,
                'breed_id': opt(p.breedId),
                'breed_name': opt(p.breedName),
                'dob': p.dob?.toIso8601String(),
                'gender': opt(p.gender),
                'weight_value': opt(p.weightValue),
                'weight_unit': opt(p.weightUnit),
                'image_url': opt(p.imageUrl),
                'created_at': p.createdAt?.toIso8601String(),
                'updated_at': p.updatedAt?.toIso8601String(),
                'personality_tags': p.personalityTags,
              })
          .toList(),
    };
  }
}