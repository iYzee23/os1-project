.global _ZN4KPCB13contextSwitchEPNS_7ContextES1_
.type _ZN4KPCB13contextSwitchEPNS_7ContextES1_, @function
_ZN4KPCB13contextSwitchEPNS_7ContextES1_:
    # a0 --> &old->context
    sd ra, 0 * 8(a0)
    sd sp, 1 * 8(a0)

    # a1 --> &running->context
    ld ra, 0 * 8(a1)
    ld sp, 1 * 8(a1)

    ret