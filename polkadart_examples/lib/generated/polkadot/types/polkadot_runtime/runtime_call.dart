// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

import '../frame_system/pallet/call.dart' as _i3;
import '../pallet_babe/pallet/call.dart' as _i6;
import '../pallet_bags_list/pallet/call.dart' as _i33;
import '../pallet_balances/pallet/call.dart' as _i9;
import '../pallet_bounties/pallet/call.dart' as _i29;
import '../pallet_child_bounties/pallet/call.dart' as _i30;
import '../pallet_collective/pallet/call_1.dart' as _i15;
import '../pallet_collective/pallet/call_2.dart' as _i16;
import '../pallet_conviction_voting/pallet/call.dart' as _i20;
import '../pallet_democracy/pallet/call.dart' as _i14;
import '../pallet_election_provider_multi_phase/pallet/call.dart' as _i32;
import '../pallet_elections_phragmen/pallet/call.dart' as _i17;
import '../pallet_fast_unstake/pallet/call.dart' as _i35;
import '../pallet_grandpa/pallet/call.dart' as _i12;
import '../pallet_identity/pallet/call.dart' as _i26;
import '../pallet_im_online/pallet/call.dart' as _i13;
import '../pallet_indices/pallet/call.dart' as _i8;
import '../pallet_membership/pallet/call.dart' as _i18;
import '../pallet_message_queue/pallet/call.dart' as _i50;
import '../pallet_multisig/pallet/call.dart' as _i28;
import '../pallet_nomination_pools/pallet/call.dart' as _i34;
import '../pallet_preimage/pallet/call.dart' as _i5;
import '../pallet_proxy/pallet/call.dart' as _i27;
import '../pallet_referenda/pallet/call.dart' as _i21;
import '../pallet_scheduler/pallet/call.dart' as _i4;
import '../pallet_session/pallet/call.dart' as _i11;
import '../pallet_staking/pallet/pallet/call.dart' as _i10;
import '../pallet_timestamp/pallet/call.dart' as _i7;
import '../pallet_tips/pallet/call.dart' as _i31;
import '../pallet_treasury/pallet/call.dart' as _i19;
import '../pallet_utility/pallet/call.dart' as _i25;
import '../pallet_vesting/pallet/call.dart' as _i24;
import '../pallet_whitelist/pallet/call.dart' as _i22;
import '../pallet_xcm/pallet/call.dart' as _i49;
import '../polkadot_runtime_common/auctions/pallet/call.dart' as _i47;
import '../polkadot_runtime_common/claims/pallet/call.dart' as _i23;
import '../polkadot_runtime_common/crowdloan/pallet/call.dart' as _i48;
import '../polkadot_runtime_common/paras_registrar/pallet/call.dart' as _i45;
import '../polkadot_runtime_common/slots/pallet/call.dart' as _i46;
import '../polkadot_runtime_parachains/configuration/pallet/call.dart' as _i36;
import '../polkadot_runtime_parachains/disputes/pallet/call.dart' as _i43;
import '../polkadot_runtime_parachains/disputes/slashing/pallet/call.dart'
    as _i44;
import '../polkadot_runtime_parachains/hrmp/pallet/call.dart' as _i42;
import '../polkadot_runtime_parachains/inclusion/pallet/call.dart' as _i38;
import '../polkadot_runtime_parachains/initializer/pallet/call.dart' as _i41;
import '../polkadot_runtime_parachains/paras/pallet/call.dart' as _i40;
import '../polkadot_runtime_parachains/paras_inherent/pallet/call.dart' as _i39;
import '../polkadot_runtime_parachains/shared/pallet/call.dart' as _i37;

abstract class RuntimeCall {
  const RuntimeCall();

  factory RuntimeCall.decode(_i1.Input input) {
    return codec.decode(input);
  }

  static const $RuntimeCallCodec codec = $RuntimeCallCodec();

  static const $RuntimeCall values = $RuntimeCall();

  _i2.Uint8List encode() {
    final output = _i1.ByteOutput(codec.sizeHint(this));
    codec.encodeTo(this, output);
    return output.toBytes();
  }

  int sizeHint() {
    return codec.sizeHint(this);
  }

  Map<String, dynamic> toJson();
}

class $RuntimeCall {
  const $RuntimeCall();

  System system(_i3.Call value0) {
    return System(value0);
  }

  Scheduler scheduler(_i4.Call value0) {
    return Scheduler(value0);
  }

  Preimage preimage(_i5.Call value0) {
    return Preimage(value0);
  }

  Babe babe(_i6.Call value0) {
    return Babe(value0);
  }

  Timestamp timestamp(_i7.Call value0) {
    return Timestamp(value0);
  }

  Indices indices(_i8.Call value0) {
    return Indices(value0);
  }

  Balances balances(_i9.Call value0) {
    return Balances(value0);
  }

  Staking staking(_i10.Call value0) {
    return Staking(value0);
  }

  Session session(_i11.Call value0) {
    return Session(value0);
  }

  Grandpa grandpa(_i12.Call value0) {
    return Grandpa(value0);
  }

  ImOnline imOnline(_i13.Call value0) {
    return ImOnline(value0);
  }

  Democracy democracy(_i14.Call value0) {
    return Democracy(value0);
  }

  Council council(_i15.Call value0) {
    return Council(value0);
  }

  TechnicalCommittee technicalCommittee(_i16.Call value0) {
    return TechnicalCommittee(value0);
  }

  PhragmenElection phragmenElection(_i17.Call value0) {
    return PhragmenElection(value0);
  }

  TechnicalMembership technicalMembership(_i18.Call value0) {
    return TechnicalMembership(value0);
  }

  Treasury treasury(_i19.Call value0) {
    return Treasury(value0);
  }

  ConvictionVoting convictionVoting(_i20.Call value0) {
    return ConvictionVoting(value0);
  }

  Referenda referenda(_i21.Call value0) {
    return Referenda(value0);
  }

  Whitelist whitelist(_i22.Call value0) {
    return Whitelist(value0);
  }

  Claims claims(_i23.Call value0) {
    return Claims(value0);
  }

  Vesting vesting(_i24.Call value0) {
    return Vesting(value0);
  }

  Utility utility(_i25.Call value0) {
    return Utility(value0);
  }

  Identity identity(_i26.Call value0) {
    return Identity(value0);
  }

  Proxy proxy(_i27.Call value0) {
    return Proxy(value0);
  }

  Multisig multisig(_i28.Call value0) {
    return Multisig(value0);
  }

  Bounties bounties(_i29.Call value0) {
    return Bounties(value0);
  }

  ChildBounties childBounties(_i30.Call value0) {
    return ChildBounties(value0);
  }

  Tips tips(_i31.Call value0) {
    return Tips(value0);
  }

  ElectionProviderMultiPhase electionProviderMultiPhase(_i32.Call value0) {
    return ElectionProviderMultiPhase(value0);
  }

  VoterList voterList(_i33.Call value0) {
    return VoterList(value0);
  }

  NominationPools nominationPools(_i34.Call value0) {
    return NominationPools(value0);
  }

  FastUnstake fastUnstake(_i35.Call value0) {
    return FastUnstake(value0);
  }

  Configuration configuration(_i36.Call value0) {
    return Configuration(value0);
  }

  ParasShared parasShared(_i37.Call value0) {
    return ParasShared(value0);
  }

  ParaInclusion paraInclusion(_i38.Call value0) {
    return ParaInclusion(value0);
  }

  ParaInherent paraInherent(_i39.Call value0) {
    return ParaInherent(value0);
  }

  Paras paras(_i40.Call value0) {
    return Paras(value0);
  }

  Initializer initializer(_i41.Call value0) {
    return Initializer(value0);
  }

  Hrmp hrmp(_i42.Call value0) {
    return Hrmp(value0);
  }

  ParasDisputes parasDisputes(_i43.Call value0) {
    return ParasDisputes(value0);
  }

  ParasSlashing parasSlashing(_i44.Call value0) {
    return ParasSlashing(value0);
  }

  Registrar registrar(_i45.Call value0) {
    return Registrar(value0);
  }

  Slots slots(_i46.Call value0) {
    return Slots(value0);
  }

  Auctions auctions(_i47.Call value0) {
    return Auctions(value0);
  }

  Crowdloan crowdloan(_i48.Call value0) {
    return Crowdloan(value0);
  }

  XcmPallet xcmPallet(_i49.Call value0) {
    return XcmPallet(value0);
  }

  MessageQueue messageQueue(_i50.Call value0) {
    return MessageQueue(value0);
  }
}

class $RuntimeCallCodec with _i1.Codec<RuntimeCall> {
  const $RuntimeCallCodec();

  @override
  RuntimeCall decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return System._decode(input);
      case 1:
        return Scheduler._decode(input);
      case 10:
        return Preimage._decode(input);
      case 2:
        return Babe._decode(input);
      case 3:
        return Timestamp._decode(input);
      case 4:
        return Indices._decode(input);
      case 5:
        return Balances._decode(input);
      case 7:
        return Staking._decode(input);
      case 9:
        return Session._decode(input);
      case 11:
        return Grandpa._decode(input);
      case 12:
        return ImOnline._decode(input);
      case 14:
        return Democracy._decode(input);
      case 15:
        return Council._decode(input);
      case 16:
        return TechnicalCommittee._decode(input);
      case 17:
        return PhragmenElection._decode(input);
      case 18:
        return TechnicalMembership._decode(input);
      case 19:
        return Treasury._decode(input);
      case 20:
        return ConvictionVoting._decode(input);
      case 21:
        return Referenda._decode(input);
      case 23:
        return Whitelist._decode(input);
      case 24:
        return Claims._decode(input);
      case 25:
        return Vesting._decode(input);
      case 26:
        return Utility._decode(input);
      case 28:
        return Identity._decode(input);
      case 29:
        return Proxy._decode(input);
      case 30:
        return Multisig._decode(input);
      case 34:
        return Bounties._decode(input);
      case 38:
        return ChildBounties._decode(input);
      case 35:
        return Tips._decode(input);
      case 36:
        return ElectionProviderMultiPhase._decode(input);
      case 37:
        return VoterList._decode(input);
      case 39:
        return NominationPools._decode(input);
      case 40:
        return FastUnstake._decode(input);
      case 51:
        return Configuration._decode(input);
      case 52:
        return ParasShared._decode(input);
      case 53:
        return ParaInclusion._decode(input);
      case 54:
        return ParaInherent._decode(input);
      case 56:
        return Paras._decode(input);
      case 57:
        return Initializer._decode(input);
      case 60:
        return Hrmp._decode(input);
      case 62:
        return ParasDisputes._decode(input);
      case 63:
        return ParasSlashing._decode(input);
      case 70:
        return Registrar._decode(input);
      case 71:
        return Slots._decode(input);
      case 72:
        return Auctions._decode(input);
      case 73:
        return Crowdloan._decode(input);
      case 99:
        return XcmPallet._decode(input);
      case 100:
        return MessageQueue._decode(input);
      default:
        throw Exception('RuntimeCall: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    RuntimeCall value,
    _i1.Output output,
  ) {
    switch (value.runtimeType) {
      case System:
        (value as System).encodeTo(output);
        break;
      case Scheduler:
        (value as Scheduler).encodeTo(output);
        break;
      case Preimage:
        (value as Preimage).encodeTo(output);
        break;
      case Babe:
        (value as Babe).encodeTo(output);
        break;
      case Timestamp:
        (value as Timestamp).encodeTo(output);
        break;
      case Indices:
        (value as Indices).encodeTo(output);
        break;
      case Balances:
        (value as Balances).encodeTo(output);
        break;
      case Staking:
        (value as Staking).encodeTo(output);
        break;
      case Session:
        (value as Session).encodeTo(output);
        break;
      case Grandpa:
        (value as Grandpa).encodeTo(output);
        break;
      case ImOnline:
        (value as ImOnline).encodeTo(output);
        break;
      case Democracy:
        (value as Democracy).encodeTo(output);
        break;
      case Council:
        (value as Council).encodeTo(output);
        break;
      case TechnicalCommittee:
        (value as TechnicalCommittee).encodeTo(output);
        break;
      case PhragmenElection:
        (value as PhragmenElection).encodeTo(output);
        break;
      case TechnicalMembership:
        (value as TechnicalMembership).encodeTo(output);
        break;
      case Treasury:
        (value as Treasury).encodeTo(output);
        break;
      case ConvictionVoting:
        (value as ConvictionVoting).encodeTo(output);
        break;
      case Referenda:
        (value as Referenda).encodeTo(output);
        break;
      case Whitelist:
        (value as Whitelist).encodeTo(output);
        break;
      case Claims:
        (value as Claims).encodeTo(output);
        break;
      case Vesting:
        (value as Vesting).encodeTo(output);
        break;
      case Utility:
        (value as Utility).encodeTo(output);
        break;
      case Identity:
        (value as Identity).encodeTo(output);
        break;
      case Proxy:
        (value as Proxy).encodeTo(output);
        break;
      case Multisig:
        (value as Multisig).encodeTo(output);
        break;
      case Bounties:
        (value as Bounties).encodeTo(output);
        break;
      case ChildBounties:
        (value as ChildBounties).encodeTo(output);
        break;
      case Tips:
        (value as Tips).encodeTo(output);
        break;
      case ElectionProviderMultiPhase:
        (value as ElectionProviderMultiPhase).encodeTo(output);
        break;
      case VoterList:
        (value as VoterList).encodeTo(output);
        break;
      case NominationPools:
        (value as NominationPools).encodeTo(output);
        break;
      case FastUnstake:
        (value as FastUnstake).encodeTo(output);
        break;
      case Configuration:
        (value as Configuration).encodeTo(output);
        break;
      case ParasShared:
        (value as ParasShared).encodeTo(output);
        break;
      case ParaInclusion:
        (value as ParaInclusion).encodeTo(output);
        break;
      case ParaInherent:
        (value as ParaInherent).encodeTo(output);
        break;
      case Paras:
        (value as Paras).encodeTo(output);
        break;
      case Initializer:
        (value as Initializer).encodeTo(output);
        break;
      case Hrmp:
        (value as Hrmp).encodeTo(output);
        break;
      case ParasDisputes:
        (value as ParasDisputes).encodeTo(output);
        break;
      case ParasSlashing:
        (value as ParasSlashing).encodeTo(output);
        break;
      case Registrar:
        (value as Registrar).encodeTo(output);
        break;
      case Slots:
        (value as Slots).encodeTo(output);
        break;
      case Auctions:
        (value as Auctions).encodeTo(output);
        break;
      case Crowdloan:
        (value as Crowdloan).encodeTo(output);
        break;
      case XcmPallet:
        (value as XcmPallet).encodeTo(output);
        break;
      case MessageQueue:
        (value as MessageQueue).encodeTo(output);
        break;
      default:
        throw Exception(
            'RuntimeCall: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(RuntimeCall value) {
    switch (value.runtimeType) {
      case System:
        return (value as System)._sizeHint();
      case Scheduler:
        return (value as Scheduler)._sizeHint();
      case Preimage:
        return (value as Preimage)._sizeHint();
      case Babe:
        return (value as Babe)._sizeHint();
      case Timestamp:
        return (value as Timestamp)._sizeHint();
      case Indices:
        return (value as Indices)._sizeHint();
      case Balances:
        return (value as Balances)._sizeHint();
      case Staking:
        return (value as Staking)._sizeHint();
      case Session:
        return (value as Session)._sizeHint();
      case Grandpa:
        return (value as Grandpa)._sizeHint();
      case ImOnline:
        return (value as ImOnline)._sizeHint();
      case Democracy:
        return (value as Democracy)._sizeHint();
      case Council:
        return (value as Council)._sizeHint();
      case TechnicalCommittee:
        return (value as TechnicalCommittee)._sizeHint();
      case PhragmenElection:
        return (value as PhragmenElection)._sizeHint();
      case TechnicalMembership:
        return (value as TechnicalMembership)._sizeHint();
      case Treasury:
        return (value as Treasury)._sizeHint();
      case ConvictionVoting:
        return (value as ConvictionVoting)._sizeHint();
      case Referenda:
        return (value as Referenda)._sizeHint();
      case Whitelist:
        return (value as Whitelist)._sizeHint();
      case Claims:
        return (value as Claims)._sizeHint();
      case Vesting:
        return (value as Vesting)._sizeHint();
      case Utility:
        return (value as Utility)._sizeHint();
      case Identity:
        return (value as Identity)._sizeHint();
      case Proxy:
        return (value as Proxy)._sizeHint();
      case Multisig:
        return (value as Multisig)._sizeHint();
      case Bounties:
        return (value as Bounties)._sizeHint();
      case ChildBounties:
        return (value as ChildBounties)._sizeHint();
      case Tips:
        return (value as Tips)._sizeHint();
      case ElectionProviderMultiPhase:
        return (value as ElectionProviderMultiPhase)._sizeHint();
      case VoterList:
        return (value as VoterList)._sizeHint();
      case NominationPools:
        return (value as NominationPools)._sizeHint();
      case FastUnstake:
        return (value as FastUnstake)._sizeHint();
      case Configuration:
        return (value as Configuration)._sizeHint();
      case ParasShared:
        return (value as ParasShared)._sizeHint();
      case ParaInclusion:
        return (value as ParaInclusion)._sizeHint();
      case ParaInherent:
        return (value as ParaInherent)._sizeHint();
      case Paras:
        return (value as Paras)._sizeHint();
      case Initializer:
        return (value as Initializer)._sizeHint();
      case Hrmp:
        return (value as Hrmp)._sizeHint();
      case ParasDisputes:
        return (value as ParasDisputes)._sizeHint();
      case ParasSlashing:
        return (value as ParasSlashing)._sizeHint();
      case Registrar:
        return (value as Registrar)._sizeHint();
      case Slots:
        return (value as Slots)._sizeHint();
      case Auctions:
        return (value as Auctions)._sizeHint();
      case Crowdloan:
        return (value as Crowdloan)._sizeHint();
      case XcmPallet:
        return (value as XcmPallet)._sizeHint();
      case MessageQueue:
        return (value as MessageQueue)._sizeHint();
      default:
        throw Exception(
            'RuntimeCall: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

class System extends RuntimeCall {
  const System(this.value0);

  factory System._decode(_i1.Input input) {
    return System(_i3.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<System, Runtime>
  final _i3.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'System': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i3.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    _i3.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is System && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Scheduler extends RuntimeCall {
  const Scheduler(this.value0);

  factory Scheduler._decode(_i1.Input input) {
    return Scheduler(_i4.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Scheduler, Runtime>
  final _i4.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Scheduler': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i4.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
    _i4.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Scheduler && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Preimage extends RuntimeCall {
  const Preimage(this.value0);

  factory Preimage._decode(_i1.Input input) {
    return Preimage(_i5.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Preimage, Runtime>
  final _i5.Call value0;

  @override
  Map<String, Map<String, Map<String, List<int>>>> toJson() =>
      {'Preimage': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i5.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      10,
      output,
    );
    _i5.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Preimage && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Babe extends RuntimeCall {
  const Babe(this.value0);

  factory Babe._decode(_i1.Input input) {
    return Babe(_i6.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Babe, Runtime>
  final _i6.Call value0;

  @override
  Map<String, Map<String, Map<String, Map<String, dynamic>>>> toJson() =>
      {'Babe': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i6.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      2,
      output,
    );
    _i6.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Babe && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Timestamp extends RuntimeCall {
  const Timestamp(this.value0);

  factory Timestamp._decode(_i1.Input input) {
    return Timestamp(_i7.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Timestamp, Runtime>
  final _i7.Call value0;

  @override
  Map<String, Map<String, Map<String, BigInt>>> toJson() =>
      {'Timestamp': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i7.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      3,
      output,
    );
    _i7.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Timestamp && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Indices extends RuntimeCall {
  const Indices(this.value0);

  factory Indices._decode(_i1.Input input) {
    return Indices(_i8.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Indices, Runtime>
  final _i8.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Indices': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i8.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      4,
      output,
    );
    _i8.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Indices && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Balances extends RuntimeCall {
  const Balances(this.value0);

  factory Balances._decode(_i1.Input input) {
    return Balances(_i9.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Balances, Runtime>
  final _i9.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Balances': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i9.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      5,
      output,
    );
    _i9.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Balances && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Staking extends RuntimeCall {
  const Staking(this.value0);

  factory Staking._decode(_i1.Input input) {
    return Staking(_i10.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Staking, Runtime>
  final _i10.Call value0;

  @override
  Map<String, Map<String, dynamic>> toJson() => {'Staking': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i10.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      7,
      output,
    );
    _i10.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Staking && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Session extends RuntimeCall {
  const Session(this.value0);

  factory Session._decode(_i1.Input input) {
    return Session(_i11.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Session, Runtime>
  final _i11.Call value0;

  @override
  Map<String, Map<String, dynamic>> toJson() => {'Session': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i11.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      9,
      output,
    );
    _i11.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Session && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Grandpa extends RuntimeCall {
  const Grandpa(this.value0);

  factory Grandpa._decode(_i1.Input input) {
    return Grandpa(_i12.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Grandpa, Runtime>
  final _i12.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Grandpa': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i12.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      11,
      output,
    );
    _i12.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Grandpa && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class ImOnline extends RuntimeCall {
  const ImOnline(this.value0);

  factory ImOnline._decode(_i1.Input input) {
    return ImOnline(_i13.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<ImOnline, Runtime>
  final _i13.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'ImOnline': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i13.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      12,
      output,
    );
    _i13.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ImOnline && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Democracy extends RuntimeCall {
  const Democracy(this.value0);

  factory Democracy._decode(_i1.Input input) {
    return Democracy(_i14.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Democracy, Runtime>
  final _i14.Call value0;

  @override
  Map<String, Map<String, dynamic>> toJson() => {'Democracy': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i14.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      14,
      output,
    );
    _i14.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Democracy && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Council extends RuntimeCall {
  const Council(this.value0);

  factory Council._decode(_i1.Input input) {
    return Council(_i15.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Council, Runtime>
  final _i15.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Council': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i15.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      15,
      output,
    );
    _i15.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Council && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class TechnicalCommittee extends RuntimeCall {
  const TechnicalCommittee(this.value0);

  factory TechnicalCommittee._decode(_i1.Input input) {
    return TechnicalCommittee(_i16.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<TechnicalCommittee, Runtime>
  final _i16.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'TechnicalCommittee': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i16.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      16,
      output,
    );
    _i16.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is TechnicalCommittee && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class PhragmenElection extends RuntimeCall {
  const PhragmenElection(this.value0);

  factory PhragmenElection._decode(_i1.Input input) {
    return PhragmenElection(_i17.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<PhragmenElection, Runtime>
  final _i17.Call value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'PhragmenElection': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i17.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      17,
      output,
    );
    _i17.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is PhragmenElection && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class TechnicalMembership extends RuntimeCall {
  const TechnicalMembership(this.value0);

  factory TechnicalMembership._decode(_i1.Input input) {
    return TechnicalMembership(_i18.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<TechnicalMembership, Runtime>
  final _i18.Call value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'TechnicalMembership': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i18.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      18,
      output,
    );
    _i18.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is TechnicalMembership && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Treasury extends RuntimeCall {
  const Treasury(this.value0);

  factory Treasury._decode(_i1.Input input) {
    return Treasury(_i19.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Treasury, Runtime>
  final _i19.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Treasury': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i19.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      19,
      output,
    );
    _i19.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Treasury && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class ConvictionVoting extends RuntimeCall {
  const ConvictionVoting(this.value0);

  factory ConvictionVoting._decode(_i1.Input input) {
    return ConvictionVoting(_i20.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<ConvictionVoting, Runtime>
  final _i20.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'ConvictionVoting': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i20.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      20,
      output,
    );
    _i20.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ConvictionVoting && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Referenda extends RuntimeCall {
  const Referenda(this.value0);

  factory Referenda._decode(_i1.Input input) {
    return Referenda(_i21.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Referenda, Runtime>
  final _i21.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Referenda': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i21.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      21,
      output,
    );
    _i21.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Referenda && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Whitelist extends RuntimeCall {
  const Whitelist(this.value0);

  factory Whitelist._decode(_i1.Input input) {
    return Whitelist(_i22.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Whitelist, Runtime>
  final _i22.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Whitelist': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i22.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      23,
      output,
    );
    _i22.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Whitelist && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Claims extends RuntimeCall {
  const Claims(this.value0);

  factory Claims._decode(_i1.Input input) {
    return Claims(_i23.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Claims, Runtime>
  final _i23.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Claims': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i23.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      24,
      output,
    );
    _i23.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Claims && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Vesting extends RuntimeCall {
  const Vesting(this.value0);

  factory Vesting._decode(_i1.Input input) {
    return Vesting(_i24.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Vesting, Runtime>
  final _i24.Call value0;

  @override
  Map<String, Map<String, dynamic>> toJson() => {'Vesting': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i24.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      25,
      output,
    );
    _i24.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Vesting && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Utility extends RuntimeCall {
  const Utility(this.value0);

  factory Utility._decode(_i1.Input input) {
    return Utility(_i25.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Utility, Runtime>
  final _i25.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Utility': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i25.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      26,
      output,
    );
    _i25.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Utility && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Identity extends RuntimeCall {
  const Identity(this.value0);

  factory Identity._decode(_i1.Input input) {
    return Identity(_i26.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Identity, Runtime>
  final _i26.Call value0;

  @override
  Map<String, Map<String, dynamic>> toJson() => {'Identity': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i26.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      28,
      output,
    );
    _i26.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Identity && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Proxy extends RuntimeCall {
  const Proxy(this.value0);

  factory Proxy._decode(_i1.Input input) {
    return Proxy(_i27.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Proxy, Runtime>
  final _i27.Call value0;

  @override
  Map<String, Map<String, dynamic>> toJson() => {'Proxy': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i27.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      29,
      output,
    );
    _i27.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Proxy && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Multisig extends RuntimeCall {
  const Multisig(this.value0);

  factory Multisig._decode(_i1.Input input) {
    return Multisig(_i28.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Multisig, Runtime>
  final _i28.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Multisig': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i28.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      30,
      output,
    );
    _i28.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Multisig && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Bounties extends RuntimeCall {
  const Bounties(this.value0);

  factory Bounties._decode(_i1.Input input) {
    return Bounties(_i29.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Bounties, Runtime>
  final _i29.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Bounties': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i29.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      34,
      output,
    );
    _i29.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Bounties && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class ChildBounties extends RuntimeCall {
  const ChildBounties(this.value0);

  factory ChildBounties._decode(_i1.Input input) {
    return ChildBounties(_i30.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<ChildBounties, Runtime>
  final _i30.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'ChildBounties': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i30.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      38,
      output,
    );
    _i30.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ChildBounties && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Tips extends RuntimeCall {
  const Tips(this.value0);

  factory Tips._decode(_i1.Input input) {
    return Tips(_i31.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Tips, Runtime>
  final _i31.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Tips': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i31.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      35,
      output,
    );
    _i31.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Tips && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class ElectionProviderMultiPhase extends RuntimeCall {
  const ElectionProviderMultiPhase(this.value0);

  factory ElectionProviderMultiPhase._decode(_i1.Input input) {
    return ElectionProviderMultiPhase(_i32.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<ElectionProviderMultiPhase, Runtime>
  final _i32.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'ElectionProviderMultiPhase': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i32.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      36,
      output,
    );
    _i32.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ElectionProviderMultiPhase && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class VoterList extends RuntimeCall {
  const VoterList(this.value0);

  factory VoterList._decode(_i1.Input input) {
    return VoterList(_i33.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<VoterList, Runtime>
  final _i33.Call value0;

  @override
  Map<String, Map<String, Map<String, Map<String, dynamic>>>> toJson() =>
      {'VoterList': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i33.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      37,
      output,
    );
    _i33.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is VoterList && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class NominationPools extends RuntimeCall {
  const NominationPools(this.value0);

  factory NominationPools._decode(_i1.Input input) {
    return NominationPools(_i34.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<NominationPools, Runtime>
  final _i34.Call value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'NominationPools': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i34.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      39,
      output,
    );
    _i34.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is NominationPools && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class FastUnstake extends RuntimeCall {
  const FastUnstake(this.value0);

  factory FastUnstake._decode(_i1.Input input) {
    return FastUnstake(_i35.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<FastUnstake, Runtime>
  final _i35.Call value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'FastUnstake': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i35.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      40,
      output,
    );
    _i35.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is FastUnstake && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Configuration extends RuntimeCall {
  const Configuration(this.value0);

  factory Configuration._decode(_i1.Input input) {
    return Configuration(_i36.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Configuration, Runtime>
  final _i36.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Configuration': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i36.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      51,
      output,
    );
    _i36.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Configuration && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class ParasShared extends RuntimeCall {
  const ParasShared(this.value0);

  factory ParasShared._decode(_i1.Input input) {
    return ParasShared(_i1.NullCodec.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<ParasShared, Runtime>
  final _i37.Call value0;

  @override
  Map<String, dynamic> toJson() => {'ParasShared': null};

  int _sizeHint() {
    int size = 1;
    size = size + const _i37.CallCodec().sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      52,
      output,
    );
    _i1.NullCodec.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ParasShared && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class ParaInclusion extends RuntimeCall {
  const ParaInclusion(this.value0);

  factory ParaInclusion._decode(_i1.Input input) {
    return ParaInclusion(_i1.NullCodec.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<ParaInclusion, Runtime>
  final _i38.Call value0;

  @override
  Map<String, dynamic> toJson() => {'ParaInclusion': null};

  int _sizeHint() {
    int size = 1;
    size = size + const _i38.CallCodec().sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      53,
      output,
    );
    _i1.NullCodec.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ParaInclusion && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class ParaInherent extends RuntimeCall {
  const ParaInherent(this.value0);

  factory ParaInherent._decode(_i1.Input input) {
    return ParaInherent(_i39.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<ParaInherent, Runtime>
  final _i39.Call value0;

  @override
  Map<String, Map<String, Map<String, Map<String, dynamic>>>> toJson() =>
      {'ParaInherent': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i39.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      54,
      output,
    );
    _i39.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ParaInherent && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Paras extends RuntimeCall {
  const Paras(this.value0);

  factory Paras._decode(_i1.Input input) {
    return Paras(_i40.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Paras, Runtime>
  final _i40.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Paras': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i40.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      56,
      output,
    );
    _i40.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Paras && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Initializer extends RuntimeCall {
  const Initializer(this.value0);

  factory Initializer._decode(_i1.Input input) {
    return Initializer(_i41.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Initializer, Runtime>
  final _i41.Call value0;

  @override
  Map<String, Map<String, Map<String, int>>> toJson() =>
      {'Initializer': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i41.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      57,
      output,
    );
    _i41.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Initializer && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Hrmp extends RuntimeCall {
  const Hrmp(this.value0);

  factory Hrmp._decode(_i1.Input input) {
    return Hrmp(_i42.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Hrmp, Runtime>
  final _i42.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Hrmp': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i42.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      60,
      output,
    );
    _i42.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Hrmp && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class ParasDisputes extends RuntimeCall {
  const ParasDisputes(this.value0);

  factory ParasDisputes._decode(_i1.Input input) {
    return ParasDisputes(_i43.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<ParasDisputes, Runtime>
  final _i43.Call value0;

  @override
  Map<String, String> toJson() => {'ParasDisputes': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i43.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      62,
      output,
    );
    _i43.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ParasDisputes && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class ParasSlashing extends RuntimeCall {
  const ParasSlashing(this.value0);

  factory ParasSlashing._decode(_i1.Input input) {
    return ParasSlashing(_i44.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<ParasSlashing, Runtime>
  final _i44.Call value0;

  @override
  Map<String, Map<String, Map<String, Map<String, dynamic>>>> toJson() =>
      {'ParasSlashing': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i44.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      63,
      output,
    );
    _i44.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ParasSlashing && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Registrar extends RuntimeCall {
  const Registrar(this.value0);

  factory Registrar._decode(_i1.Input input) {
    return Registrar(_i45.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Registrar, Runtime>
  final _i45.Call value0;

  @override
  Map<String, Map<String, dynamic>> toJson() => {'Registrar': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i45.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      70,
      output,
    );
    _i45.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Registrar && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Slots extends RuntimeCall {
  const Slots(this.value0);

  factory Slots._decode(_i1.Input input) {
    return Slots(_i46.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Slots, Runtime>
  final _i46.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Slots': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i46.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      71,
      output,
    );
    _i46.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Slots && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Auctions extends RuntimeCall {
  const Auctions(this.value0);

  factory Auctions._decode(_i1.Input input) {
    return Auctions(_i47.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Auctions, Runtime>
  final _i47.Call value0;

  @override
  Map<String, Map<String, dynamic>> toJson() => {'Auctions': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i47.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      72,
      output,
    );
    _i47.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Auctions && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Crowdloan extends RuntimeCall {
  const Crowdloan(this.value0);

  factory Crowdloan._decode(_i1.Input input) {
    return Crowdloan(_i48.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Crowdloan, Runtime>
  final _i48.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Crowdloan': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i48.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      73,
      output,
    );
    _i48.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Crowdloan && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class XcmPallet extends RuntimeCall {
  const XcmPallet(this.value0);

  factory XcmPallet._decode(_i1.Input input) {
    return XcmPallet(_i49.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<XcmPallet, Runtime>
  final _i49.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'XcmPallet': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i49.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      99,
      output,
    );
    _i49.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is XcmPallet && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class MessageQueue extends RuntimeCall {
  const MessageQueue(this.value0);

  factory MessageQueue._decode(_i1.Input input) {
    return MessageQueue(_i50.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<MessageQueue, Runtime>
  final _i50.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'MessageQueue': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i50.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      100,
      output,
    );
    _i50.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is MessageQueue && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}
