{
  self,
  inputs,
  ...
}:
{
  flake.nixosModules.texlive =
    {
      config,
      pkgs,
      lib,
      ...
    }:
    let
      tex = (
        pkgs.texliveMedium.withPackages (
          ps: with ps; [
            minted
            minted-code
            upquote
          ]
        )
      );
    in
    {
      environment.systemPackages = with pkgs; [
        tex
      ];
    };
}
