// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notes_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotesActorEvent {
  Note get note => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) created,
    required TResult Function(Note note) deleted,
    required TResult Function(Note note) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Note note)? created,
    TResult? Function(Note note)? deleted,
    TResult? Function(Note note)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? created,
    TResult Function(Note note)? deleted,
    TResult Function(Note note)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Created value) created,
    required TResult Function(Deleted value) deleted,
    required TResult Function(Updated value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Created value)? created,
    TResult? Function(Deleted value)? deleted,
    TResult? Function(Updated value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Created value)? created,
    TResult Function(Deleted value)? deleted,
    TResult Function(Updated value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotesActorEventCopyWith<NotesActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesActorEventCopyWith<$Res> {
  factory $NotesActorEventCopyWith(
          NotesActorEvent value, $Res Function(NotesActorEvent) then) =
      _$NotesActorEventCopyWithImpl<$Res, NotesActorEvent>;
  @useResult
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class _$NotesActorEventCopyWithImpl<$Res, $Val extends NotesActorEvent>
    implements $NotesActorEventCopyWith<$Res> {
  _$NotesActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_value.copyWith(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreatedCopyWith<$Res>
    implements $NotesActorEventCopyWith<$Res> {
  factory _$$CreatedCopyWith(_$Created value, $Res Function(_$Created) then) =
      __$$CreatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Note note});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$CreatedCopyWithImpl<$Res>
    extends _$NotesActorEventCopyWithImpl<$Res, _$Created>
    implements _$$CreatedCopyWith<$Res> {
  __$$CreatedCopyWithImpl(_$Created _value, $Res Function(_$Created) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$Created(
      null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }
}

/// @nodoc

class _$Created implements Created {
  const _$Created(this.note);

  @override
  final Note note;

  @override
  String toString() {
    return 'NotesActorEvent.created(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Created &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedCopyWith<_$Created> get copyWith =>
      __$$CreatedCopyWithImpl<_$Created>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) created,
    required TResult Function(Note note) deleted,
    required TResult Function(Note note) updated,
  }) {
    return created(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Note note)? created,
    TResult? Function(Note note)? deleted,
    TResult? Function(Note note)? updated,
  }) {
    return created?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? created,
    TResult Function(Note note)? deleted,
    TResult Function(Note note)? updated,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Created value) created,
    required TResult Function(Deleted value) deleted,
    required TResult Function(Updated value) updated,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Created value)? created,
    TResult? Function(Deleted value)? deleted,
    TResult? Function(Updated value)? updated,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Created value)? created,
    TResult Function(Deleted value)? deleted,
    TResult Function(Updated value)? updated,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class Created implements NotesActorEvent {
  const factory Created(final Note note) = _$Created;

  @override
  Note get note;
  @override
  @JsonKey(ignore: true)
  _$$CreatedCopyWith<_$Created> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedCopyWith<$Res>
    implements $NotesActorEventCopyWith<$Res> {
  factory _$$DeletedCopyWith(_$Deleted value, $Res Function(_$Deleted) then) =
      __$$DeletedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Note note});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$DeletedCopyWithImpl<$Res>
    extends _$NotesActorEventCopyWithImpl<$Res, _$Deleted>
    implements _$$DeletedCopyWith<$Res> {
  __$$DeletedCopyWithImpl(_$Deleted _value, $Res Function(_$Deleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$Deleted(
      null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }
}

/// @nodoc

class _$Deleted implements Deleted {
  const _$Deleted(this.note);

  @override
  final Note note;

  @override
  String toString() {
    return 'NotesActorEvent.deleted(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Deleted &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedCopyWith<_$Deleted> get copyWith =>
      __$$DeletedCopyWithImpl<_$Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) created,
    required TResult Function(Note note) deleted,
    required TResult Function(Note note) updated,
  }) {
    return deleted(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Note note)? created,
    TResult? Function(Note note)? deleted,
    TResult? Function(Note note)? updated,
  }) {
    return deleted?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? created,
    TResult Function(Note note)? deleted,
    TResult Function(Note note)? updated,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Created value) created,
    required TResult Function(Deleted value) deleted,
    required TResult Function(Updated value) updated,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Created value)? created,
    TResult? Function(Deleted value)? deleted,
    TResult? Function(Updated value)? updated,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Created value)? created,
    TResult Function(Deleted value)? deleted,
    TResult Function(Updated value)? updated,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class Deleted implements NotesActorEvent {
  const factory Deleted(final Note note) = _$Deleted;

  @override
  Note get note;
  @override
  @JsonKey(ignore: true)
  _$$DeletedCopyWith<_$Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedCopyWith<$Res>
    implements $NotesActorEventCopyWith<$Res> {
  factory _$$UpdatedCopyWith(_$Updated value, $Res Function(_$Updated) then) =
      __$$UpdatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Note note});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$UpdatedCopyWithImpl<$Res>
    extends _$NotesActorEventCopyWithImpl<$Res, _$Updated>
    implements _$$UpdatedCopyWith<$Res> {
  __$$UpdatedCopyWithImpl(_$Updated _value, $Res Function(_$Updated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$Updated(
      null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }
}

/// @nodoc

class _$Updated implements Updated {
  const _$Updated(this.note);

  @override
  final Note note;

  @override
  String toString() {
    return 'NotesActorEvent.updated(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Updated &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedCopyWith<_$Updated> get copyWith =>
      __$$UpdatedCopyWithImpl<_$Updated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) created,
    required TResult Function(Note note) deleted,
    required TResult Function(Note note) updated,
  }) {
    return updated(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Note note)? created,
    TResult? Function(Note note)? deleted,
    TResult? Function(Note note)? updated,
  }) {
    return updated?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? created,
    TResult Function(Note note)? deleted,
    TResult Function(Note note)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Created value) created,
    required TResult Function(Deleted value) deleted,
    required TResult Function(Updated value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Created value)? created,
    TResult? Function(Deleted value)? deleted,
    TResult? Function(Updated value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Created value)? created,
    TResult Function(Deleted value)? deleted,
    TResult Function(Updated value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class Updated implements NotesActorEvent {
  const factory Updated(final Note note) = _$Updated;

  @override
  Note get note;
  @override
  @JsonKey(ignore: true)
  _$$UpdatedCopyWith<_$Updated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotesActorState {
  NotesActorStatus get status => throw _privateConstructorUsedError;
  Either<NoteFailure, Unit> get operationResult =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotesActorStateCopyWith<NotesActorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesActorStateCopyWith<$Res> {
  factory $NotesActorStateCopyWith(
          NotesActorState value, $Res Function(NotesActorState) then) =
      _$NotesActorStateCopyWithImpl<$Res, NotesActorState>;
  @useResult
  $Res call(
      {NotesActorStatus status, Either<NoteFailure, Unit> operationResult});
}

/// @nodoc
class _$NotesActorStateCopyWithImpl<$Res, $Val extends NotesActorState>
    implements $NotesActorStateCopyWith<$Res> {
  _$NotesActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? operationResult = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NotesActorStatus,
      operationResult: null == operationResult
          ? _value.operationResult
          : operationResult // ignore: cast_nullable_to_non_nullable
              as Either<NoteFailure, Unit>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotesActorStateCopyWith<$Res>
    implements $NotesActorStateCopyWith<$Res> {
  factory _$$_NotesActorStateCopyWith(
          _$_NotesActorState value, $Res Function(_$_NotesActorState) then) =
      __$$_NotesActorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NotesActorStatus status, Either<NoteFailure, Unit> operationResult});
}

/// @nodoc
class __$$_NotesActorStateCopyWithImpl<$Res>
    extends _$NotesActorStateCopyWithImpl<$Res, _$_NotesActorState>
    implements _$$_NotesActorStateCopyWith<$Res> {
  __$$_NotesActorStateCopyWithImpl(
      _$_NotesActorState _value, $Res Function(_$_NotesActorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? operationResult = null,
  }) {
    return _then(_$_NotesActorState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NotesActorStatus,
      operationResult: null == operationResult
          ? _value.operationResult
          : operationResult // ignore: cast_nullable_to_non_nullable
              as Either<NoteFailure, Unit>,
    ));
  }
}

/// @nodoc

class _$_NotesActorState implements _NotesActorState {
  const _$_NotesActorState(
      {required this.status, required this.operationResult});

  @override
  final NotesActorStatus status;
  @override
  final Either<NoteFailure, Unit> operationResult;

  @override
  String toString() {
    return 'NotesActorState(status: $status, operationResult: $operationResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotesActorState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.operationResult, operationResult) ||
                other.operationResult == operationResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, operationResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotesActorStateCopyWith<_$_NotesActorState> get copyWith =>
      __$$_NotesActorStateCopyWithImpl<_$_NotesActorState>(this, _$identity);
}

abstract class _NotesActorState implements NotesActorState {
  const factory _NotesActorState(
          {required final NotesActorStatus status,
          required final Either<NoteFailure, Unit> operationResult}) =
      _$_NotesActorState;

  @override
  NotesActorStatus get status;
  @override
  Either<NoteFailure, Unit> get operationResult;
  @override
  @JsonKey(ignore: true)
  _$$_NotesActorStateCopyWith<_$_NotesActorState> get copyWith =>
      throw _privateConstructorUsedError;
}
