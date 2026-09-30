import torch
import torch.nn as nn
import torch.optim as optim
import struct

class MLP_XOR(nn.Module):
    def __init__(self):
        super(MLP_XOR, self).__init__()
        self.hidden = nn.Linear(2, 2)
        self.output = nn.Linear(2, 1)
        self.sigmoid = nn.Sigmoid()

    def forward(self, x):
        x = self.sigmoid(self.hidden(x))
        x = self.sigmoid(self.output(x))
        return x

def float_to_bin_custom(num, bits_mantissa=23):
    """
    Converte um float para binário com largura de mantissa variável.
    Total de bits = 1 (sinal) + 8 (expoente) + bits_mantissa
    """
    # Converte para float32 padrão (IEEE 754) para extrair as partes
    f32_bits = struct.unpack('>I', struct.pack('>f', num))[0]

    sign = (f32_bits >> 31) & 0x01
    expo = (f32_bits >> 23) & 0xFF
    
    # A mantissa original do IEEE-754 tem 23 bits
    mant_full = f32_bits & 0x7FFFFF

    # Ajuste da largura da mantissa
    if bits_mantissa < 23:
        # Se queremos menos bits, removemos os bits menos significativos (LSB)
        shift = 23 - bits_mantissa
        mant_ajustada = mant_full >> shift
    elif bits_mantissa > 23:
        # Se quisermos mais (raro), adicionamos zeros à direita
        shift = bits_mantissa - 23
        mant_ajustada = mant_full << shift
    else:
        mant_ajustada = mant_full

    # Monta a string formatada
    # sign: 1 bit
    # expo: 8 bits
    # mant: bits_mantissa (dinâmico)
    return f"{sign:01b}{expo:08b}{mant_ajustada:0{bits_mantissa}b}"

# Dados
X = torch.tensor([[0,0], [0,1], [1,0], [1,1]], dtype=torch.float32)
y = torch.tensor([[1], [0], [0], [1]], dtype=torch.float32)

convergiu = False
tentativa = 1

print("Iniciando busca por pesos globais (XOR 2-2-1)...")

while not convergiu:
    model = MLP_XOR()
    # LBFGS é excelente para achar o fundo do poço em redes pequenas
    optimizer = optim.LBFGS(model.parameters(), lr=1)

    def closure():
        optimizer.zero_grad()
        out = model(X)
        loss = nn.BCELoss()(out, y)
        loss.backward()
        return loss

    optimizer.step(closure)
    final_loss = closure().item()

    if final_loss < 0.01:
        print(f"\n[SUCESSO] Convergiu na tentativa {tentativa}! Loss: {final_loss:.6f}")
        convergiu = True
    else:
        print(f"Tentativa {tentativa}: Loss {final_loss:.4f} (Mínimo local). Reiniciando...", end='\r')
        tentativa += 1
        if tentativa > 100: # Segurança
            print("\nMuitas tentativas. Verifique a arquitetura.")
            break

# Exibir Pesos
if convergiu:
    print("\n--- PESOS PARA VHDL (XOR FINAL) ---")
    with torch.no_grad():
        w0 = model.hidden.weight
        b0 = model.hidden.bias
        w1 = model.output.weight
        b1 = model.output.bias

        print(f"b_tb_0_0 <= \"{float_to_bin_custom(b0[0])}\";")
        print(f"weight_tb_0_0_0 <= \"{float_to_bin_custom(w0[0,0])}\";")
        print(f"weight_tb_0_0_1 <= \"{float_to_bin_custom(w0[0,1])}\";")
        print(f"b_tb_0_1 <= \"{float_to_bin_custom(b0[1])}\";")
        print(f"weight_tb_0_1_0 <= \"{float_to_bin_custom(w0[1,0])}\";")
        print(f"weight_tb_0_1_1 <= \"{float_to_bin_custom(w0[1,1])}\";")
        print(f"b_tb_1_0 <= \"{float_to_bin_custom(b1[0])}\";")
        print(f"weight_tb_1_0_0 <= \"{float_to_bin_custom(w1[0,0])}\";")
        print(f"weight_tb_1_0_1 <= \"{float_to_bin_custom(w1[0,1])}\";")

        # Verificação final dos valores decimais para o seu controle
        print("\n--- VERIFICAÇÃO DECIMAL ---")
        pred = model(X)
        print(f"(0,0): {pred[0].item():.4f}")
        print(f"(0,1): {pred[1].item():.4f}")
        print(f"(1,0): {pred[2].item():.4f}")
        print(f"(1,1): {pred[3].item():.4f}")
