self: super:

{
  darwin = super.recurseIntoAttrs (super.darwin // {
    apple_sdk = super.recurseIntoAttrs (super.darwin.apple_sdk // {
      frameworks = super.recurseIntoAttrs (super.darwin.apple_sdk.frameworks // {
      });
    });

    # Doesn't evaluate.
    opencflite = if super.stdenv.isDarwin then null else super.darwin.opencflite;
  });

  lnl = super.recurseIntoAttrs (super.lnl or {});
}
