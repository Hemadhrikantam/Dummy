import 'package:equatable/equatable.dart';

class AccountUser extends Equatable {
  const AccountUser({
    required this.id,
    required this.mobileNumber,
    this.email,
    required this.isActive,
    required this.username,
    required this.createdAt,
  });

  final String id;
  final String mobileNumber;
  final String? email;
  final String username;
  final bool isActive;
  final DateTime createdAt;

  @override
  List<Object?> get props => [id, mobileNumber, email, isActive, createdAt, username];
}

class Account extends Equatable {
  const Account({
    required this.id,
    required this.accountName,
    required this.accountType,
    required this.subscriptionType,
    required this.preferredCurrency,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String accountName;
  final String accountType;
  final String subscriptionType;
  final String preferredCurrency;
  final DateTime createdAt;
  final DateTime updatedAt;

  @override
  List<Object?> get props => [
        id,
        accountName,
        accountType,
        subscriptionType,
        preferredCurrency,
        createdAt,
        updatedAt,
      ];
}

class AccountMember extends Equatable {
  const AccountMember({
    required this.accountUserId,
    required this.memberName,
    required this.role,
    required this.isMainAccount,
    required this.userId,
    required this.mobileNumber,
    this.email,
  });

  final String accountUserId;
  final String memberName;
  final String role;
  final bool isMainAccount;
  final String userId;
  final String mobileNumber;
  final String? email;

  @override
  List<Object?> get props => [
        accountUserId,
        memberName,
        role,
        isMainAccount,
        userId,
        mobileNumber,
        email,
      ];
}

class AccountPet extends Equatable {
  const AccountPet({
    required this.id,
    required this.name,
    required this.type,
    this.breedId,
    this.breedName,
    this.dob,
    this.gender,
    this.weightValue,
    this.weightUnit,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.personalityTags = const [],
  });

  final String id;
  final String name;
  final String type;
  final String? breedId;
  final String? breedName;
  final DateTime? dob;
  final String? gender;
  final String? weightValue;
  final String? weightUnit;
  final String? imageUrl;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<String> personalityTags;

  @override
  List<Object?> get props => [
        id,
        name,
        type,
        breedId,
        breedName,
        dob,
        gender,
        weightValue,
        weightUnit,
        imageUrl,
        createdAt,
        updatedAt,
        personalityTags,
      ];
}

class AccountDetail extends Equatable {
  const AccountDetail({
    required this.user,
    required this.account,
    required this.users,
    required this.pets,
  });

  final AccountUser user;
  final Account account;
  final List<AccountMember> users;
  final List<AccountPet> pets;

  @override
  List<Object?> get props => [user, account, users, pets];
}