// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notes_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotesWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetched value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetched value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesWatcherEventCopyWith<$Res> {
  factory $NotesWatcherEventCopyWith(
          NotesWatcherEvent value, $Res Function(NotesWatcherEvent) then) =
      _$NotesWatcherEventCopyWithImpl<$Res, NotesWatcherEvent>;
}

/// @nodoc
class _$NotesWatcherEventCopyWithImpl<$Res, $Val extends NotesWatcherEvent>
    implements $NotesWatcherEventCopyWith<$Res> {
  _$NotesWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchedCopyWith<$Res> {
  factory _$$FetchedCopyWith(_$Fetched value, $Res Function(_$Fetched) then) =
      __$$FetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchedCopyWithImpl<$Res>
    extends _$NotesWatcherEventCopyWithImpl<$Res, _$Fetched>
    implements _$$FetchedCopyWith<$Res> {
  __$$FetchedCopyWithImpl(_$Fetched _value, $Res Function(_$Fetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Fetched implements Fetched {
  const _$Fetched();

  @override
  String toString() {
    return 'NotesWatcherEvent.fetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Fetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
  }) {
    return fetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
  }) {
    return fetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class Fetched implements NotesWatcherEvent {
  const factory Fetched() = _$Fetched;
}

/// @nodoc
mixin _$NotesWatcherState {
  NotesWatcherStatus get status => throw _privateConstructorUsedError;
  List<Note> get notes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotesWatcherStateCopyWith<NotesWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesWatcherStateCopyWith<$Res> {
  factory $NotesWatcherStateCopyWith(
          NotesWatcherState value, $Res Function(NotesWatcherState) then) =
      _$NotesWatcherStateCopyWithImpl<$Res, NotesWatcherState>;
  @useResult
  $Res call({NotesWatcherStatus status, List<Note> notes});
}

/// @nodoc
class _$NotesWatcherStateCopyWithImpl<$Res, $Val extends NotesWatcherState>
    implements $NotesWatcherStateCopyWith<$Res> {
  _$NotesWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notes = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NotesWatcherStatus,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotesWatcherStateCopyWith<$Res>
    implements $NotesWatcherStateCopyWith<$Res> {
  factory _$$_NotesWatcherStateCopyWith(_$_NotesWatcherState value,
          $Res Function(_$_NotesWatcherState) then) =
      __$$_NotesWatcherStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NotesWatcherStatus status, List<Note> notes});
}

/// @nodoc
class __$$_NotesWatcherStateCopyWithImpl<$Res>
    extends _$NotesWatcherStateCopyWithImpl<$Res, _$_NotesWatcherState>
    implements _$$_NotesWatcherStateCopyWith<$Res> {
  __$$_NotesWatcherStateCopyWithImpl(
      _$_NotesWatcherState _value, $Res Function(_$_NotesWatcherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notes = null,
  }) {
    return _then(_$_NotesWatcherState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NotesWatcherStatus,
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc

class _$_NotesWatcherState implements _NotesWatcherState {
  const _$_NotesWatcherState(
      {required this.status, required final List<Note> notes})
      : _notes = notes;

  @override
  final NotesWatcherStatus status;
  final List<Note> _notes;
  @override
  List<Note> get notes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'NotesWatcherState(status: $status, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotesWatcherState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotesWatcherStateCopyWith<_$_NotesWatcherState> get copyWith =>
      __$$_NotesWatcherStateCopyWithImpl<_$_NotesWatcherState>(
          this, _$identity);
}

abstract class _NotesWatcherState implements NotesWatcherState {
  const factory _NotesWatcherState(
      {required final NotesWatcherStatus status,
      required final List<Note> notes}) = _$_NotesWatcherState;

  @override
  NotesWatcherStatus get status;
  @override
  List<Note> get notes;
  @override
  @JsonKey(ignore: true)
  _$$_NotesWatcherStateCopyWith<_$_NotesWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
