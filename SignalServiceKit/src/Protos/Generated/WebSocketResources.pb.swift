// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: WebSocketResources.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

//
// Copyright 2014 Signal Messenger, LLC
// SPDX-License-Identifier: AGPL-3.0-only

/// iOS - since we use a modern proto-compiler, we must specify
/// the legacy proto format.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct WebSocketProtos_WebSocketRequestMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// @required
  var verb: String {
    get {return _verb ?? String()}
    set {_verb = newValue}
  }
  /// Returns true if `verb` has been explicitly set.
  var hasVerb: Bool {return self._verb != nil}
  /// Clears the value of `verb`. Subsequent reads from it will return its default value.
  mutating func clearVerb() {self._verb = nil}

  /// @required
  var path: String {
    get {return _path ?? String()}
    set {_path = newValue}
  }
  /// Returns true if `path` has been explicitly set.
  var hasPath: Bool {return self._path != nil}
  /// Clears the value of `path`. Subsequent reads from it will return its default value.
  mutating func clearPath() {self._path = nil}

  var body: Data {
    get {return _body ?? Data()}
    set {_body = newValue}
  }
  /// Returns true if `body` has been explicitly set.
  var hasBody: Bool {return self._body != nil}
  /// Clears the value of `body`. Subsequent reads from it will return its default value.
  mutating func clearBody() {self._body = nil}

  var headers: [String] = []

  /// @required
  var requestID: UInt64 {
    get {return _requestID ?? 0}
    set {_requestID = newValue}
  }
  /// Returns true if `requestID` has been explicitly set.
  var hasRequestID: Bool {return self._requestID != nil}
  /// Clears the value of `requestID`. Subsequent reads from it will return its default value.
  mutating func clearRequestID() {self._requestID = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _verb: String? = nil
  fileprivate var _path: String? = nil
  fileprivate var _body: Data? = nil
  fileprivate var _requestID: UInt64? = nil
}

struct WebSocketProtos_WebSocketResponseMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// @required
  var requestID: UInt64 {
    get {return _requestID ?? 0}
    set {_requestID = newValue}
  }
  /// Returns true if `requestID` has been explicitly set.
  var hasRequestID: Bool {return self._requestID != nil}
  /// Clears the value of `requestID`. Subsequent reads from it will return its default value.
  mutating func clearRequestID() {self._requestID = nil}

  /// @required
  var status: UInt32 {
    get {return _status ?? 0}
    set {_status = newValue}
  }
  /// Returns true if `status` has been explicitly set.
  var hasStatus: Bool {return self._status != nil}
  /// Clears the value of `status`. Subsequent reads from it will return its default value.
  mutating func clearStatus() {self._status = nil}

  var message: String {
    get {return _message ?? String()}
    set {_message = newValue}
  }
  /// Returns true if `message` has been explicitly set.
  var hasMessage: Bool {return self._message != nil}
  /// Clears the value of `message`. Subsequent reads from it will return its default value.
  mutating func clearMessage() {self._message = nil}

  var headers: [String] = []

  var body: Data {
    get {return _body ?? Data()}
    set {_body = newValue}
  }
  /// Returns true if `body` has been explicitly set.
  var hasBody: Bool {return self._body != nil}
  /// Clears the value of `body`. Subsequent reads from it will return its default value.
  mutating func clearBody() {self._body = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _requestID: UInt64? = nil
  fileprivate var _status: UInt32? = nil
  fileprivate var _message: String? = nil
  fileprivate var _body: Data? = nil
}

struct WebSocketProtos_WebSocketMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var type: WebSocketProtos_WebSocketMessage.TypeEnum {
    get {return _type ?? .unknown}
    set {_type = newValue}
  }
  /// Returns true if `type` has been explicitly set.
  var hasType: Bool {return self._type != nil}
  /// Clears the value of `type`. Subsequent reads from it will return its default value.
  mutating func clearType() {self._type = nil}

  var request: WebSocketProtos_WebSocketRequestMessage {
    get {return _request ?? WebSocketProtos_WebSocketRequestMessage()}
    set {_request = newValue}
  }
  /// Returns true if `request` has been explicitly set.
  var hasRequest: Bool {return self._request != nil}
  /// Clears the value of `request`. Subsequent reads from it will return its default value.
  mutating func clearRequest() {self._request = nil}

  var response: WebSocketProtos_WebSocketResponseMessage {
    get {return _response ?? WebSocketProtos_WebSocketResponseMessage()}
    set {_response = newValue}
  }
  /// Returns true if `response` has been explicitly set.
  var hasResponse: Bool {return self._response != nil}
  /// Clears the value of `response`. Subsequent reads from it will return its default value.
  mutating func clearResponse() {self._response = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum TypeEnum: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case unknown // = 0
    case request // = 1
    case response // = 2

    init() {
      self = .unknown
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknown
      case 1: self = .request
      case 2: self = .response
      default: return nil
      }
    }

    var rawValue: Int {
      switch self {
      case .unknown: return 0
      case .request: return 1
      case .response: return 2
      }
    }

  }

  init() {}

  fileprivate var _type: WebSocketProtos_WebSocketMessage.TypeEnum? = nil
  fileprivate var _request: WebSocketProtos_WebSocketRequestMessage? = nil
  fileprivate var _response: WebSocketProtos_WebSocketResponseMessage? = nil
}

#if swift(>=4.2)

extension WebSocketProtos_WebSocketMessage.TypeEnum: CaseIterable {
  // Support synthesized by the compiler.
}

#endif  // swift(>=4.2)

#if swift(>=5.5) && canImport(_Concurrency)
extension WebSocketProtos_WebSocketRequestMessage: @unchecked Sendable {}
extension WebSocketProtos_WebSocketResponseMessage: @unchecked Sendable {}
extension WebSocketProtos_WebSocketMessage: @unchecked Sendable {}
extension WebSocketProtos_WebSocketMessage.TypeEnum: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "WebSocketProtos"

extension WebSocketProtos_WebSocketRequestMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".WebSocketRequestMessage"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "verb"),
    2: .same(proto: "path"),
    3: .same(proto: "body"),
    5: .same(proto: "headers"),
    4: .same(proto: "requestId"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self._verb) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self._path) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self._body) }()
      case 4: try { try decoder.decodeSingularUInt64Field(value: &self._requestID) }()
      case 5: try { try decoder.decodeRepeatedStringField(value: &self.headers) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._verb {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._path {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._body {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._requestID {
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 4)
    } }()
    if !self.headers.isEmpty {
      try visitor.visitRepeatedStringField(value: self.headers, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: WebSocketProtos_WebSocketRequestMessage, rhs: WebSocketProtos_WebSocketRequestMessage) -> Bool {
    if lhs._verb != rhs._verb {return false}
    if lhs._path != rhs._path {return false}
    if lhs._body != rhs._body {return false}
    if lhs.headers != rhs.headers {return false}
    if lhs._requestID != rhs._requestID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension WebSocketProtos_WebSocketResponseMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".WebSocketResponseMessage"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "requestId"),
    2: .same(proto: "status"),
    3: .same(proto: "message"),
    5: .same(proto: "headers"),
    4: .same(proto: "body"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self._requestID) }()
      case 2: try { try decoder.decodeSingularUInt32Field(value: &self._status) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self._message) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self._body) }()
      case 5: try { try decoder.decodeRepeatedStringField(value: &self.headers) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._requestID {
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._status {
      try visitor.visitSingularUInt32Field(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._message {
      try visitor.visitSingularStringField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._body {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 4)
    } }()
    if !self.headers.isEmpty {
      try visitor.visitRepeatedStringField(value: self.headers, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: WebSocketProtos_WebSocketResponseMessage, rhs: WebSocketProtos_WebSocketResponseMessage) -> Bool {
    if lhs._requestID != rhs._requestID {return false}
    if lhs._status != rhs._status {return false}
    if lhs._message != rhs._message {return false}
    if lhs.headers != rhs.headers {return false}
    if lhs._body != rhs._body {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension WebSocketProtos_WebSocketMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".WebSocketMessage"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "request"),
    3: .same(proto: "response"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self._type) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._request) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._response) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._type {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._request {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._response {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: WebSocketProtos_WebSocketMessage, rhs: WebSocketProtos_WebSocketMessage) -> Bool {
    if lhs._type != rhs._type {return false}
    if lhs._request != rhs._request {return false}
    if lhs._response != rhs._response {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension WebSocketProtos_WebSocketMessage.TypeEnum: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN"),
    1: .same(proto: "REQUEST"),
    2: .same(proto: "RESPONSE"),
  ]
}
