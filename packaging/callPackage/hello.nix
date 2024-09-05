{ writeShellScriptBin, audience ? "shahruz" }:
writeShellScriptBin "hello" ''
 echo "Hello, ${audience}!" 
''
