# Conciliación Bancaria - Diciembre 2023

**Cuenta:** Banco Ibérico - Cuenta Operativa
**IBAN:** ES76 0128 0001 23 0100045678
**Periodo:** 1 al 31 de diciembre de 2023
**Elaborado por:** Elena Pascual
**Revisado por:** Marta Jiménez Torres

---

## Resumen

| Concepto | Importe |
|----------|---------|
| Saldo según extracto bancario a 31/12/2023 | 172.350,45 € |
| Saldo según contabilidad a 31/12/2023 | 168.500,00 € |
| **Diferencia** | **3.850,45 €** |

---

## Partidas conciliatorias

### Cheques emitidos pendientes de cobro (en contabilidad, no en banco)

| Fecha | Nº cheque | Beneficiario | Importe |
|-------|-----------|-------------|---------|
| 28/12/2023 | CH-2023-0456 | Suministros Ind. Paterna | 1.250,00 € |
| 30/12/2023 | CH-2023-0457 | Repsol (combustible dic) | 2.180,00 € |
| **Total** | | | **3.430,00 €** |

### Transferencias en tránsito (en banco, no en contabilidad)

| Fecha | Concepto | Ordenante | Importe |
|-------|----------|-----------|---------|
| 31/12/2023 | Cobro factura FE-2023-0289 | Grupo Navarro | 3.200,00 € |
| **Total** | | | **3.200,00 €** |

### Gastos bancarios pendientes de contabilizar

| Fecha | Concepto | Importe |
|-------|----------|---------|
| 31/12/2023 | Comisión mantenimiento cuenta Q4 | 45,00 € |
| 31/12/2023 | Comisión transferencia SEPA | 5,45 € |
| **Total** | | **50,45 €** |

---

## Cuadre

| Concepto | Importe |
|----------|---------|
| Saldo extracto bancario | 172.350,45 € |
| (-) Cheques pendientes de cobro | -3.430,00 € |
| (+) Transferencias en tránsito no contabilizadas | 0,00 € |
| (-) Cobros en banco no en contabilidad | -3.200,00 € |
| (+) Gastos bancarios no contabilizados | +50,45 € |
| Saldo ajustado banco | **165.770,90 €** |
| | |
| Saldo contabilidad | 168.500,00 € |
| (-) Cobro no contabilizado (Grupo Navarro) | -3.200,00 € |
| (+) Gastos bancarios pendientes | +50,45 € |
| (+) Error contable: duplicado asiento 2023-4567 | +420,45 € |
| Saldo ajustado contabilidad | **165.770,90 €** |

**RESULTADO: CUADRADO** ✓

---

## Asientos de ajuste necesarios

### AJ-1: Registro cobro Grupo Navarro
```
Debe: 572 Banco Ibérico          3.200,00 €
Haber: 430 Grupo Navarro Dist.   3.200,00 €
```

### AJ-2: Comisiones bancarias diciembre
```
Debe: 626 Servicios bancarios    50,45 €
Haber: 572 Banco Ibérico         50,45 €
```

### AJ-3: Corrección duplicado asiento
```
Debe: 410 Proveedor (reversión)  420,45 €
Haber: 572 Banco Ibérico         420,45 €
```

---

## Otras cuentas bancarias

| Banco | Saldo extracto | Saldo contab. | Diferencia | Estado |
|-------|---------------|---------------|------------|--------|
| Banco Ibérico - Nóminas | 12.450,00 | 12.450,00 | 0,00 | OK |
| Sabadell - Proveedores | 28.900,50 | 28.900,50 | 0,00 | OK |
| CaixaBank - Reserva | 45.200,00 | 45.200,00 | 0,00 | OK |

---

**Fecha conciliación:** 5 de enero de 2024
**Firma:** Elena Pascual / Marta Jiménez Torres
