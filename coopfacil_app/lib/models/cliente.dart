class Cliente {
  final int clienteId;
  final String clienteLogin;
  final String nombres;
  final String apellidos;

  Cliente({
    required this.clienteId,
    required this.clienteLogin,
    required this.nombres,
    required this.apellidos,
  });

  factory Cliente.fromJson(Map<String, dynamic> json) {
    return Cliente(
      clienteId: json['clienteId'],
      clienteLogin: json['clienteLogin'],
      nombres: json['nombres'],
      apellidos: json['apellidos'],
    );
  }
}
