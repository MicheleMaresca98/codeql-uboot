import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    exists(MacroInvocation minv |
        minv.getMacroName() in ["ntohs", "ntohl", "ntohll"] and
        minv.getExpr() = this
    )
  }
}

from NetworkByteSwap n
select n, "Network byte swap"