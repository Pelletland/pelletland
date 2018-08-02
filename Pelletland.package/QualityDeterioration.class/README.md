Posee una cantidad de semanas, y la calidad a la que pasaría el Batch. Cada Batch estará relacionado a una colección de QualityDeterioration, representando cada transición de una calidad a otra. La cantidad de semanas es acumulativa, por ej:
Si el deterioro de calidad Alta a Media dura 5 semanas, y de Media a Baja dura 3, entonces ese batch va a tener una colección con dos QualityDeterioration:
- Un elemento que tenga 5 semanas y calidad Media,
- Otro elemento con 8 semanas y calidad Baja.
