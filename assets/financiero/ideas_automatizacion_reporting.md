# Ideas para automatizar el reporting financiero

Marta - octubre 2024

Estoy harta de hacer lo mismo cada mes a mano. Ideas para automatizar:

## Lo que hago hoy (manual)
1. Exportar datos del SAP a Excel
2. Copiar cifras al Excel de reporting
3. Calcular KPIs con fórmulas
4. Comparar con presupuesto (otro Excel)
5. Hacer el P&L en un formato bonito para Luis (PowerPoint)
6. Copiar los mismos números al Excel de aging
7. Hacer las conciliaciones bancarias comparando extracto PDF del banco con SAP
8. Mandar 4 archivos distintos por email

Tiempo total: 2-3 días cada mes. INSOSTENIBLE.

## Lo que me gustaría
- Dashboard automático que se alimente del SAP
- KPIs en tiempo real (no a D+5)
- Alertas automáticas si un cliente supera 60 días sin pagar
- Presupuesto vs real automático
- Que Luis y Pablo puedan ver los datos sin pedírmelos

## Opciones que he investigado
1. **Power BI** (~15€/usuario/mes)
   - Se conecta a SAP
   - Dashboards bonitos
   - Pablo y Luis podrían tener acceso de solo lectura
   - Problema: no sé usarlo, necesito formación

2. **Excel + macros VBA**
   - Ya sé Excel
   - Puedo automatizar la exportación
   - No es bonito pero funciona
   - Problema: si me voy, nadie mantiene las macros

3. **Google Sheets + Apps Script**
   - Gratis
   - Colaborativo
   - Pero no se conecta fácil al SAP

4. **Módulo de reporting del SAP**
   - Ya lo tenemos pagado (incluido en la licencia)
   - Nadie lo ha configurado
   - David (IT) dice que puede hacerlo pero "no tiene tiempo"

## Coste-beneficio
Si automatizo y ahorro 2 días/mes = 24 días/año = ~4.800€ de mi tiempo
Inversión Power BI: ~1.000€/año (4 licencias) + ~3.000€ formación
ROI primer año: positivo

## Siguiente paso
- Hablar con David sobre el módulo de reporting del SAP
- Si no, pedir presupuesto de Power BI para incluir en ppto 2025
- O... ¿y si pruebo con IA? He leído que Claude Code puede trabajar con CSVs...
