import 'dart:io';

import 'package:imc_app/imc_app.dart' as imc_app;

void main(List<String> arguments) {
  try{
  print('Qual seu Nome: ');
  String nombre = stdin.readLineSync()!;
  print('Qual seu Peso: Use Ponto');
  double kg = double.parse(stdin.readLineSync()!);
  print('Qual sua Altura: Use Ponto');
  double alt = double.parse(stdin.readLineSync()!);
  
  var pessoa = imc_app.imc_cal(nombre, kg, alt);

  double imc = pessoa.peso/(pessoa.altura*pessoa.altura);
  if(imc<16){
    print('Estado de Magreza grave');
  }else if((imc>=16) && (imc<17)){
    print('Estado de Magreza Moderada');
  }else if((imc>=17) && (imc<18.5)){
    print('Estado de Magreza Leve');
  }else if((imc>=18.5) && (imc<25)){
    print('Estado de Saudável');
  }else if((imc>=25) && (imc<30)){
    print('Estado de Sobrepeso');
  }else if((imc>=30) && (imc<35)){
    print('Estado de Obesidade Grau I');
  }else if((imc>=35) && (imc<40)){
    print('Estado de Obesidade Grau II (Severa)');
  }else if(imc>=40){
    print('Estado de Obesidade Grau III (Mórbida)');
  }else{
    print('Imc Invalido');
  }

  }
  catch (e){
    print('Por favor informe os valores corretamente. Use . (Ponto) ao invês de , (Virgula)');
  }
  

}
