// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i8;

import 'package:polkadart/polkadart.dart' as _i1;
import 'package:polkadart/scale_codec.dart' as _i2;

import '../types/pallet_balances/pallet/call.dart' as _i10;
import '../types/pallet_balances/types/account_data.dart' as _i4;
import '../types/pallet_balances/types/balance_lock.dart' as _i5;
import '../types/pallet_balances/types/id_amount.dart' as _i7;
import '../types/pallet_balances/types/reserve_data.dart' as _i6;
import '../types/polkadot_runtime/runtime_call.dart' as _i9;
import '../types/sp_core/crypto/account_id32.dart' as _i3;

class Queries {
  const Queries(this.__api);

  final _i1.StateApi __api;

  final _i1.StorageValue<BigInt> _totalIssuance =
      const _i1.StorageValue<BigInt>(
    prefix: 'Balances',
    storage: 'TotalIssuance',
    valueCodec: _i2.U128Codec.codec,
  );

  final _i1.StorageValue<BigInt> _inactiveIssuance =
      const _i1.StorageValue<BigInt>(
    prefix: 'Balances',
    storage: 'InactiveIssuance',
    valueCodec: _i2.U128Codec.codec,
  );

  final _i1.StorageMap<_i3.AccountId32, _i4.AccountData> _account =
      const _i1.StorageMap<_i3.AccountId32, _i4.AccountData>(
    prefix: 'Balances',
    storage: 'Account',
    valueCodec: _i4.AccountData.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.AccountId32Codec()),
  );

  final _i1.StorageMap<_i3.AccountId32, List<_i5.BalanceLock>> _locks =
      const _i1.StorageMap<_i3.AccountId32, List<_i5.BalanceLock>>(
    prefix: 'Balances',
    storage: 'Locks',
    valueCodec: _i2.SequenceCodec<_i5.BalanceLock>(_i5.BalanceLock.codec),
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.AccountId32Codec()),
  );

  final _i1.StorageMap<_i3.AccountId32, List<_i6.ReserveData>> _reserves =
      const _i1.StorageMap<_i3.AccountId32, List<_i6.ReserveData>>(
    prefix: 'Balances',
    storage: 'Reserves',
    valueCodec: _i2.SequenceCodec<_i6.ReserveData>(_i6.ReserveData.codec),
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.AccountId32Codec()),
  );

  final _i1.StorageMap<_i3.AccountId32, List<_i7.IdAmount>> _holds =
      const _i1.StorageMap<_i3.AccountId32, List<_i7.IdAmount>>(
    prefix: 'Balances',
    storage: 'Holds',
    valueCodec: _i2.SequenceCodec<_i7.IdAmount>(_i7.IdAmount.codec),
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.AccountId32Codec()),
  );

  final _i1.StorageMap<_i3.AccountId32, List<_i7.IdAmount>> _freezes =
      const _i1.StorageMap<_i3.AccountId32, List<_i7.IdAmount>>(
    prefix: 'Balances',
    storage: 'Freezes',
    valueCodec: _i2.SequenceCodec<_i7.IdAmount>(_i7.IdAmount.codec),
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.AccountId32Codec()),
  );

  /// The total units issued in the system.
  _i8.Future<BigInt> totalIssuance({_i1.BlockHash? at}) async {
    final hashedKey = _totalIssuance.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _totalIssuance.decodeValue(bytes);
    }
    return BigInt.zero; /* Default */
  }

  /// The total units of outstanding deactivated balance in the system.
  _i8.Future<BigInt> inactiveIssuance({_i1.BlockHash? at}) async {
    final hashedKey = _inactiveIssuance.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _inactiveIssuance.decodeValue(bytes);
    }
    return BigInt.zero; /* Default */
  }

  /// The Balances pallet example of storing the balance of an account.
  ///
  /// # Example
  ///
  /// ```nocompile
  ///  impl pallet_balances::Config for Runtime {
  ///    type AccountStore = StorageMapShim<Self::Account<Runtime>, frame_system::Provider<Runtime>, AccountId, Self::AccountData<Balance>>
  ///  }
  /// ```
  ///
  /// You can also store the balance of an account in the `System` pallet.
  ///
  /// # Example
  ///
  /// ```nocompile
  ///  impl pallet_balances::Config for Runtime {
  ///   type AccountStore = System
  ///  }
  /// ```
  ///
  /// But this comes with tradeoffs, storing account balances in the system pallet stores
  /// `frame_system` data alongside the account data contrary to storing account balances in the
  /// `Balances` pallet, which uses a `StorageMap` to store balances data only.
  /// NOTE: This is only used in the case that this pallet is used to store balances.
  _i8.Future<_i4.AccountData> account(
    _i3.AccountId32 key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _account.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _account.decodeValue(bytes);
    }
    return _i4.AccountData(
      free: BigInt.zero,
      reserved: BigInt.zero,
      frozen: BigInt.zero,
      flags: BigInt.parse(
        '170141183460469231731687303715884105728',
        radix: 10,
      ),
    ); /* Default */
  }

  /// Any liquidity locks on some account balances.
  /// NOTE: Should only be accessed when setting, changing and freeing a lock.
  _i8.Future<List<_i5.BalanceLock>> locks(
    _i3.AccountId32 key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _locks.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _locks.decodeValue(bytes);
    }
    return []; /* Default */
  }

  /// Named reserves on some account balances.
  _i8.Future<List<_i6.ReserveData>> reserves(
    _i3.AccountId32 key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _reserves.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _reserves.decodeValue(bytes);
    }
    return []; /* Default */
  }

  /// Holds on account balances.
  _i8.Future<List<_i7.IdAmount>> holds(
    _i3.AccountId32 key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _holds.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _holds.decodeValue(bytes);
    }
    return []; /* Default */
  }

  /// Freeze locks on account balances.
  _i8.Future<List<_i7.IdAmount>> freezes(
    _i3.AccountId32 key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _freezes.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _freezes.decodeValue(bytes);
    }
    return []; /* Default */
  }
}

class Txs {
  const Txs();

  /// Transfer some liquid free balance to another account.
  ///
  /// `transfer_allow_death` will set the `FreeBalance` of the sender and receiver.
  /// If the sender's account is below the existential deposit as a result
  /// of the transfer, the account will be reaped.
  ///
  /// The dispatch origin for this call must be `Signed` by the transactor.
  _i9.RuntimeCall transferAllowDeath({
    required dest,
    required value,
  }) {
    final _call = _i10.Call.values.transferAllowDeath(
      dest: dest,
      value: value,
    );
    return _i9.RuntimeCall.values.balances(_call);
  }

  /// Set the regular balance of a given account; it also takes a reserved balance but this
  /// must be the same as the account's current reserved balance.
  ///
  /// The dispatch origin for this call is `root`.
  ///
  /// WARNING: This call is DEPRECATED! Use `force_set_balance` instead.
  _i9.RuntimeCall setBalanceDeprecated({
    required who,
    required newFree,
    required oldReserved,
  }) {
    final _call = _i10.Call.values.setBalanceDeprecated(
      who: who,
      newFree: newFree,
      oldReserved: oldReserved,
    );
    return _i9.RuntimeCall.values.balances(_call);
  }

  /// Exactly as `transfer_allow_death`, except the origin must be root and the source account
  /// may be specified.
  _i9.RuntimeCall forceTransfer({
    required source,
    required dest,
    required value,
  }) {
    final _call = _i10.Call.values.forceTransfer(
      source: source,
      dest: dest,
      value: value,
    );
    return _i9.RuntimeCall.values.balances(_call);
  }

  /// Same as the [`transfer_allow_death`] call, but with a check that the transfer will not
  /// kill the origin account.
  ///
  /// 99% of the time you want [`transfer_allow_death`] instead.
  ///
  /// [`transfer_allow_death`]: struct.Pallet.html#method.transfer
  _i9.RuntimeCall transferKeepAlive({
    required dest,
    required value,
  }) {
    final _call = _i10.Call.values.transferKeepAlive(
      dest: dest,
      value: value,
    );
    return _i9.RuntimeCall.values.balances(_call);
  }

  /// Transfer the entire transferable balance from the caller account.
  ///
  /// NOTE: This function only attempts to transfer _transferable_ balances. This means that
  /// any locked, reserved, or existential deposits (when `keep_alive` is `true`), will not be
  /// transferred by this function. To ensure that this function results in a killed account,
  /// you might need to prepare the account by removing any reference counters, storage
  /// deposits, etc...
  ///
  /// The dispatch origin of this call must be Signed.
  ///
  /// - `dest`: The recipient of the transfer.
  /// - `keep_alive`: A boolean to determine if the `transfer_all` operation should send all
  ///  of the funds the account has, causing the sender account to be killed (false), or
  ///  transfer everything except at least the existential deposit, which will guarantee to
  ///  keep the sender account alive (true).
  _i9.RuntimeCall transferAll({
    required dest,
    required keepAlive,
  }) {
    final _call = _i10.Call.values.transferAll(
      dest: dest,
      keepAlive: keepAlive,
    );
    return _i9.RuntimeCall.values.balances(_call);
  }

  /// Unreserve some balance from a user by force.
  ///
  /// Can only be called by ROOT.
  _i9.RuntimeCall forceUnreserve({
    required who,
    required amount,
  }) {
    final _call = _i10.Call.values.forceUnreserve(
      who: who,
      amount: amount,
    );
    return _i9.RuntimeCall.values.balances(_call);
  }

  /// Upgrade a specified account.
  ///
  /// - `origin`: Must be `Signed`.
  /// - `who`: The account to be upgraded.
  ///
  /// This will waive the transaction fee if at least all but 10% of the accounts needed to
  /// be upgraded. (We let some not have to be upgraded just in order to allow for the
  /// possibililty of churn).
  _i9.RuntimeCall upgradeAccounts({required who}) {
    final _call = _i10.Call.values.upgradeAccounts(who: who);
    return _i9.RuntimeCall.values.balances(_call);
  }

  /// Alias for `transfer_allow_death`, provided only for name-wise compatibility.
  ///
  /// WARNING: DEPRECATED! Will be released in approximately 3 months.
  _i9.RuntimeCall transfer({
    required dest,
    required value,
  }) {
    final _call = _i10.Call.values.transfer(
      dest: dest,
      value: value,
    );
    return _i9.RuntimeCall.values.balances(_call);
  }

  /// Set the regular balance of a given account.
  ///
  /// The dispatch origin for this call is `root`.
  _i9.RuntimeCall forceSetBalance({
    required who,
    required newFree,
  }) {
    final _call = _i10.Call.values.forceSetBalance(
      who: who,
      newFree: newFree,
    );
    return _i9.RuntimeCall.values.balances(_call);
  }
}

class Constants {
  Constants();

  /// The minimum amount required to keep an account open. MUST BE GREATER THAN ZERO!
  ///
  /// If you *really* need it to be zero, you can enable the feature `insecure_zero_ed` for
  /// this pallet. However, you do so at your own risk: this will open up a major DoS vector.
  /// In case you have multiple sources of provider references, you may also get unexpected
  /// behaviour if you set this to zero.
  ///
  /// Bottom line: Do yourself a favour and make it at least one!
  final BigInt existentialDeposit = BigInt.from(10000000000);

  /// The maximum number of locks that should exist on an account.
  /// Not strictly enforced, but used for weight estimation.
  final int maxLocks = 50;

  /// The maximum number of named reserves that can exist on an account.
  final int maxReserves = 50;

  /// The maximum number of holds that can exist on an account at any time.
  final int maxHolds = 0;

  /// The maximum number of individual freeze locks that can exist on an account at any time.
  final int maxFreezes = 0;
}
