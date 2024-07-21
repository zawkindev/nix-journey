{
  me =
    let
      sayHello = x: "hello ${x}";
    in
    sayHello ("Asuna");

  asuna =
    let
      f = a: { age = a.age; name = a.name; };
      asuna = {
        age = 18;
        name = "Asuna";
      };
    in
    f asuna;

  os = ({ o, s ? "", ... }@args: "${o} ${s} is written in ${args.c}") { o = "Operating"; s = "System"; c = "C"; };

  sum = (x: y: x + y) 4 3;

}
