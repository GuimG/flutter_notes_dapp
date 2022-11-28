// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notes_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotesFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String titleStr)? titleChanged,
    TResult? Function(String bodyStr)? bodyChanged,
    TResult? Function(Option<Note> initialNoteOption)? initialized,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyChanged value) bodyChanged,
    required TResult Function(Initialized value) initialized,
    required TResult Function(Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TitleChanged value)? titleChanged,
    TResult? Function(BodyChanged value)? bodyChanged,
    TResult? Function(Initialized value)? initialized,
    TResult? Function(Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(Initialized value)? initialized,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesFormEventCopyWith<$Res> {
  factory $NotesFormEventCopyWith(
          NotesFormEvent value, $Res Function(NotesFormEvent) then) =
      _$NotesFormEventCopyWithImpl<$Res, NotesFormEvent>;
}

/// @nodoc
class _$NotesFormEventCopyWithImpl<$Res, $Val extends NotesFormEvent>
    implements $NotesFormEventCopyWith<$Res> {
  _$NotesFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TitleChangedCopyWith<$Res> {
  factory _$$TitleChangedCopyWith(
          _$TitleChanged value, $Res Function(_$TitleChanged) then) =
      __$$TitleChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String titleStr});
}

/// @nodoc
class __$$TitleChangedCopyWithImpl<$Res>
    extends _$NotesFormEventCopyWithImpl<$Res, _$TitleChanged>
    implements _$$TitleChangedCopyWith<$Res> {
  __$$TitleChangedCopyWithImpl(
      _$TitleChanged _value, $Res Function(_$TitleChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleStr = null,
  }) {
    return _then(_$TitleChanged(
      null == titleStr
          ? _value.titleStr
          : titleStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TitleChanged implements TitleChanged {
  const _$TitleChanged(this.titleStr);

  @override
  final String titleStr;

  @override
  String toString() {
    return 'NotesFormEvent.titleChanged(titleStr: $titleStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleChanged &&
            (identical(other.titleStr, titleStr) ||
                other.titleStr == titleStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, titleStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleChangedCopyWith<_$TitleChanged> get copyWith =>
      __$$TitleChangedCopyWithImpl<_$TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function() saved,
  }) {
    return titleChanged(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String titleStr)? titleChanged,
    TResult? Function(String bodyStr)? bodyChanged,
    TResult? Function(Option<Note> initialNoteOption)? initialized,
    TResult? Function()? saved,
  }) {
    return titleChanged?.call(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(titleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyChanged value) bodyChanged,
    required TResult Function(Initialized value) initialized,
    required TResult Function(Saved value) saved,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TitleChanged value)? titleChanged,
    TResult? Function(BodyChanged value)? bodyChanged,
    TResult? Function(Initialized value)? initialized,
    TResult? Function(Saved value)? saved,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(Initialized value)? initialized,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class TitleChanged implements NotesFormEvent {
  const factory TitleChanged(final String titleStr) = _$TitleChanged;

  String get titleStr;
  @JsonKey(ignore: true)
  _$$TitleChangedCopyWith<_$TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BodyChangedCopyWith<$Res> {
  factory _$$BodyChangedCopyWith(
          _$BodyChanged value, $Res Function(_$BodyChanged) then) =
      __$$BodyChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String bodyStr});
}

/// @nodoc
class __$$BodyChangedCopyWithImpl<$Res>
    extends _$NotesFormEventCopyWithImpl<$Res, _$BodyChanged>
    implements _$$BodyChangedCopyWith<$Res> {
  __$$BodyChangedCopyWithImpl(
      _$BodyChanged _value, $Res Function(_$BodyChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bodyStr = null,
  }) {
    return _then(_$BodyChanged(
      null == bodyStr
          ? _value.bodyStr
          : bodyStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BodyChanged implements BodyChanged {
  const _$BodyChanged(this.bodyStr);

  @override
  final String bodyStr;

  @override
  String toString() {
    return 'NotesFormEvent.bodyChanged(bodyStr: $bodyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyChanged &&
            (identical(other.bodyStr, bodyStr) || other.bodyStr == bodyStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bodyStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyChangedCopyWith<_$BodyChanged> get copyWith =>
      __$$BodyChangedCopyWithImpl<_$BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function() saved,
  }) {
    return bodyChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String titleStr)? titleChanged,
    TResult? Function(String bodyStr)? bodyChanged,
    TResult? Function(Option<Note> initialNoteOption)? initialized,
    TResult? Function()? saved,
  }) {
    return bodyChanged?.call(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyChanged value) bodyChanged,
    required TResult Function(Initialized value) initialized,
    required TResult Function(Saved value) saved,
  }) {
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TitleChanged value)? titleChanged,
    TResult? Function(BodyChanged value)? bodyChanged,
    TResult? Function(Initialized value)? initialized,
    TResult? Function(Saved value)? saved,
  }) {
    return bodyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(Initialized value)? initialized,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class BodyChanged implements NotesFormEvent {
  const factory BodyChanged(final String bodyStr) = _$BodyChanged;

  String get bodyStr;
  @JsonKey(ignore: true)
  _$$BodyChangedCopyWith<_$BodyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializedCopyWith<$Res> {
  factory _$$InitializedCopyWith(
          _$Initialized value, $Res Function(_$Initialized) then) =
      __$$InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Note> initialNoteOption});
}

/// @nodoc
class __$$InitializedCopyWithImpl<$Res>
    extends _$NotesFormEventCopyWithImpl<$Res, _$Initialized>
    implements _$$InitializedCopyWith<$Res> {
  __$$InitializedCopyWithImpl(
      _$Initialized _value, $Res Function(_$Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialNoteOption = null,
  }) {
    return _then(_$Initialized(
      null == initialNoteOption
          ? _value.initialNoteOption
          : initialNoteOption // ignore: cast_nullable_to_non_nullable
              as Option<Note>,
    ));
  }
}

/// @nodoc

class _$Initialized implements Initialized {
  const _$Initialized(this.initialNoteOption);

  @override
  final Option<Note> initialNoteOption;

  @override
  String toString() {
    return 'NotesFormEvent.initialized(initialNoteOption: $initialNoteOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initialized &&
            (identical(other.initialNoteOption, initialNoteOption) ||
                other.initialNoteOption == initialNoteOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialNoteOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      __$$InitializedCopyWithImpl<_$Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function() saved,
  }) {
    return initialized(initialNoteOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String titleStr)? titleChanged,
    TResult? Function(String bodyStr)? bodyChanged,
    TResult? Function(Option<Note> initialNoteOption)? initialized,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialNoteOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialNoteOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyChanged value) bodyChanged,
    required TResult Function(Initialized value) initialized,
    required TResult Function(Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TitleChanged value)? titleChanged,
    TResult? Function(BodyChanged value)? bodyChanged,
    TResult? Function(Initialized value)? initialized,
    TResult? Function(Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(Initialized value)? initialized,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements NotesFormEvent {
  const factory Initialized(final Option<Note> initialNoteOption) =
      _$Initialized;

  Option<Note> get initialNoteOption;
  @JsonKey(ignore: true)
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedCopyWith<$Res> {
  factory _$$SavedCopyWith(_$Saved value, $Res Function(_$Saved) then) =
      __$$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedCopyWithImpl<$Res>
    extends _$NotesFormEventCopyWithImpl<$Res, _$Saved>
    implements _$$SavedCopyWith<$Res> {
  __$$SavedCopyWithImpl(_$Saved _value, $Res Function(_$Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Saved implements Saved {
  const _$Saved();

  @override
  String toString() {
    return 'NotesFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String titleStr)? titleChanged,
    TResult? Function(String bodyStr)? bodyChanged,
    TResult? Function(Option<Note> initialNoteOption)? initialized,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyChanged value) bodyChanged,
    required TResult Function(Initialized value) initialized,
    required TResult Function(Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TitleChanged value)? titleChanged,
    TResult? Function(BodyChanged value)? bodyChanged,
    TResult? Function(Initialized value)? initialized,
    TResult? Function(Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(Initialized value)? initialized,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements NotesFormEvent {
  const factory Saved() = _$Saved;
}

/// @nodoc
mixin _$NotesFormState {
  Note get note => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  Option<Either<NoteFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotesFormStateCopyWith<NotesFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesFormStateCopyWith<$Res> {
  factory $NotesFormStateCopyWith(
          NotesFormState value, $Res Function(NotesFormState) then) =
      _$NotesFormStateCopyWithImpl<$Res, NotesFormState>;
  @useResult
  $Res call(
      {Note note,
      bool showErrorMessages,
      bool isSubmitting,
      bool isEditing,
      Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class _$NotesFormStateCopyWithImpl<$Res, $Val extends NotesFormState>
    implements $NotesFormStateCopyWith<$Res> {
  _$NotesFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? isEditing = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NoteFailure, Unit>>,
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
abstract class _$$_NotesFormStateCopyWith<$Res>
    implements $NotesFormStateCopyWith<$Res> {
  factory _$$_NotesFormStateCopyWith(
          _$_NotesFormState value, $Res Function(_$_NotesFormState) then) =
      __$$_NotesFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Note note,
      bool showErrorMessages,
      bool isSubmitting,
      bool isEditing,
      Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$_NotesFormStateCopyWithImpl<$Res>
    extends _$NotesFormStateCopyWithImpl<$Res, _$_NotesFormState>
    implements _$$_NotesFormStateCopyWith<$Res> {
  __$$_NotesFormStateCopyWithImpl(
      _$_NotesFormState _value, $Res Function(_$_NotesFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? isEditing = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$_NotesFormState(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NoteFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_NotesFormState implements _NotesFormState {
  const _$_NotesFormState(
      {required this.note,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.isEditing,
      required this.saveFailureOrSuccessOption});

  @override
  final Note note;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final bool isEditing;
  @override
  final Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'NotesFormState(note: $note, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, isEditing: $isEditing, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotesFormState &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note, showErrorMessages,
      isSubmitting, isEditing, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotesFormStateCopyWith<_$_NotesFormState> get copyWith =>
      __$$_NotesFormStateCopyWithImpl<_$_NotesFormState>(this, _$identity);
}

abstract class _NotesFormState implements NotesFormState {
  const factory _NotesFormState(
      {required final Note note,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final bool isEditing,
      required final Option<Either<NoteFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_NotesFormState;

  @override
  Note get note;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  bool get isEditing;
  @override
  Option<Either<NoteFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_NotesFormStateCopyWith<_$_NotesFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
