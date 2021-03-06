// RUN: %target-typecheck-verify-swift

protocol P {
    associatedtype A : P where A.X == Self
    associatedtype X : P where P.A == Self
    // expected-error@-1{{associated type 'A' can only be used with a concrete type or generic parameter base}}
}
