(module
  (type $FUNCSIG$v (func))
  (type $FUNCSIG$i (func (result i32)))
  (type $FUNCSIG$ii (func (param i32) (result i32)))
  (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
  (type $FUNCSIG$j (func (result i64)))
  (type $FUNCSIG$f (func (result f32)))
  (type $FUNCSIG$d (func (result f64)))
  (import "env" "double_nullary" (func $double_nullary (result f64)))
  (import "env" "float_nullary" (func $float_nullary (result f32)))
  (import "env" "i32_binary" (func $i32_binary (param i32 i32) (result i32)))
  (import "env" "i32_nullary" (func $i32_nullary (result i32)))
  (import "env" "i32_unary" (func $i32_unary (param i32) (result i32)))
  (import "env" "i64_nullary" (func $i64_nullary (result i64)))
  (import "env" "void_nullary" (func $void_nullary))
  (table 0 anyfunc)
  (memory $0 1)
  (data (i32.const 4) "\10\04\00\00")
  (export "memory" (memory $0))
  (export "call_i32_nullary" (func $call_i32_nullary))
  (export "call_i64_nullary" (func $call_i64_nullary))
  (export "call_float_nullary" (func $call_float_nullary))
  (export "call_double_nullary" (func $call_double_nullary))
  (export "call_void_nullary" (func $call_void_nullary))
  (export "call_i32_unary" (func $call_i32_unary))
  (export "call_i32_binary" (func $call_i32_binary))
  (export "call_indirect_void" (func $call_indirect_void))
  (export "call_indirect_i32" (func $call_indirect_i32))
  (export "tail_call_void_nullary" (func $tail_call_void_nullary))
  (export "fastcc_tail_call_void_nullary" (func $fastcc_tail_call_void_nullary))
  (export "coldcc_tail_call_void_nullary" (func $coldcc_tail_call_void_nullary))
  (func $call_i32_nullary (result i32)
    (return
      (call $i32_nullary)
    )
  )
  (func $call_i64_nullary (result i64)
    (return
      (call $i64_nullary)
    )
  )
  (func $call_float_nullary (result f32)
    (return
      (call $float_nullary)
    )
  )
  (func $call_double_nullary (result f64)
    (return
      (call $double_nullary)
    )
  )
  (func $call_void_nullary
    (call $void_nullary)
    (return)
  )
  (func $call_i32_unary (param $0 i32) (result i32)
    (return
      (call $i32_unary
        (get_local $0)
      )
    )
  )
  (func $call_i32_binary (param $0 i32) (param $1 i32) (result i32)
    (return
      (call $i32_binary
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $call_indirect_void (param $0 i32)
    (call_indirect $FUNCSIG$v
      (get_local $0)
    )
    (return)
  )
  (func $call_indirect_i32 (param $0 i32) (result i32)
    (return
      (call_indirect $FUNCSIG$i
        (get_local $0)
      )
    )
  )
  (func $tail_call_void_nullary
    (call $void_nullary)
    (return)
  )
  (func $fastcc_tail_call_void_nullary
    (call $void_nullary)
    (return)
  )
  (func $coldcc_tail_call_void_nullary
    (call $void_nullary)
    (return)
  )
)
;; METADATA: { "asmConsts": {},"staticBump": 1040, "initializers": [] }
