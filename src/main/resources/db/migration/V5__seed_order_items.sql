-- =====================================================
-- Script de Seed: ORDER_ITEMS
-- =====================================================
-- Execute este script QUARTO (após seed_orders.sql)
-- =====================================================
-- IMPORTANTE: Este script cria itens de pedido com subtotais calculados
-- Cada pedido tera entre 1 e 5 itens
-- =====================================================

-- Inserir order_items (aprox. 600 itens para 300 pedidos - média de 2 itens por pedido)
-- Subtotal = preco_produto * quantidade

-- Pedidos 1-10
INSERT INTO order_items (quantity, subtotal, product_id, order_id) VALUES
(1, 450.00, 3, 1),  -- Mouse Logitech
(2, 90.00, 24, 2),  -- Pen Drive x2
(1, 650.00, 13, 2), -- Microfone Blue Yeti
(1, 450.00, 5, 2),  -- Headphone Sony (resto do pedido 2)
(1, 780.00, 62, 3), -- Relógio Orient
(1, 3500.00, 1, 4), -- Notebook Dell
(3, 135.00, 59, 5), -- Calça Jeans Feminina x3 (CANCELADO)
(2, 110.00, 92, 5), -- Bermuda x2
(1, 450.00, 5, 6),  -- Headphone Sony
(2, 90.00, 59, 6),  -- Camiseta Básica x2
(1, 350.00, 18, 6), -- Chromecast

-- Pedidos 11-20
(1, 650.00, 7, 7),   -- Webcam
(1, 450.00, 3, 7),   -- Mouse
(1, 350.00, 18, 7),  -- Chromecast
(2, 100.00, 102, 8), -- Jogo de Cama x2
(1, 120.00, 97, 8),  -- Jogo de Facas
(2, 800.00, 104, 8), -- Edredom x2
(1, 600.00, 23, 8),  -- Controle Xbox
(1, 2100.00, 13, 9), -- iPhone 14 Pro (pedido grande)
(2, 170.00, 106, 10), -- Almofada x2
(2, 170.00, 110, 10), -- Lixeira x2
(1, 2800.00, 10, 11), -- Tablet Samsung
(2, 1360.00, 59, 12), -- Calça Jeans x2 (CANCELADO)
(3, 270.00, 59, 12),  -- Calça Jeans x3

-- Pedidos 21-30
(1, 4200.00, 2, 14),  -- Smartphone Samsung
(3, 1350.00, 3, 15),  -- Mouse x3
(2, 450.00, 110, 15), -- Lixeira x2
(1, 1320.00, 20, 16), -- Switch Nintendo
(2, 1700.00, 99, 17), -- Air Fryer x2
(1, 1950.00, 1, 18),  -- Notebook Dell (desconto)
(2, 270.00, 106, 19), -- Almofada x2
(1, 165.00, 135, 19), -- Faixa Elástica x5
(1, 2800.00, 14, 20), -- Câmera Canon
(2, 1340.00, 103, 21), -- Jogo de Toalhas x2
(1, 180.00, 97, 21),  -- Jogo de Facas
(3, 345.00, 48, 22),  -- 1984 x3 (CANCELADO)

-- Pedidos 31-40
(1, 2450.00, 1, 24),  -- Notebook Dell
(2, 1840.00, 139, 25), -- Halteres 5kg x2
(1, 680.00, 33, 26),  -- Drone DJI
(1, 1000.00, 33, 26), -- Drone (produto repetido com preço diferente)
(2, 1080.00, 109, 27), -- Tapete x2
(3, 600.00, 167, 28), -- Bola Suíça x3
(1, 2600.00, 33, 28), -- Drone
(1, 780.00, 62, 29),  -- Relógio
(2, 1280.00, 5, 29),  -- Headphone x2
(3, 195.00, 130, 30), -- Meia Cano Alto x3

-- Pedidos 41-50
(1, 2150.00, 9, 32),  -- Tablet
(2, 1780.00, 139, 33), -- Halteres 5kg x2
(1, 1560.00, 6, 34),  -- Headphone Sony
(2, 840.00, 65, 35),  -- Cinto x2
(1, 1910.00, 9, 35),  -- Tablet
(2, 1920.00, 4, 36),  -- Teclado Mecânico x2
(1, 830.00, 13, 36),  -- Microfone
(3, 2880.00, 4, 37),  -- Teclado x3 (CANCELADO)
(1, 580.00, 99, 39),  -- Air Fryer
(1, 2820.00, 14, 39), -- Câmera
(1, 720.00, 42, 40),  -- Livro Harry Potter x1

-- Pedidos 51-60
(2, 3700.00, 1, 41),  -- Notebook Dell x2
(1, 150.00, 97, 41),  -- Jogo de Facas
(1, 490.00, 63, 43),  -- Cinto Masculino
(2, 2490.00, 1, 44),  -- Notebook x2
(1, 500.00, 7, 44),   -- Webcam
(2, 1680.00, 99, 45), -- Air Fryer x2
(1, 1640.00, 20, 46), -- Switch
(1, 370.00, 18, 47),  -- Chromecast
(2, 5040.00, 1, 48),  -- Notebook x2
(3, 1350.00, 3, 49),  -- Mouse x3
(1, 1180.00, 5, 50),  -- Headphone

-- Pedidos 61-70
(2, 1360.00, 103, 51), -- Jogo de Toalhas x2
(1, 1950.00, 1, 52),   -- Notebook
(1, 520.00, 7, 53),    -- Webcam
(1, 3100.00, 2, 54),   -- Smartphone
(2, 1500.00, 111, 55), -- Ferro x2
(1, 750.00, 17, 55),   -- Kindle
(3, 2070.00, 103, 56), -- Jogo de Toalhas x3
(2, 1780.00, 139, 57), -- Halteres 5kg x2 (CANCELADO)
(1, 2450.00, 14, 58),  -- Câmera
(2, 860.00, 65, 59),   -- Cinto x2

-- Pedidos 71-80
(1, 1720.00, 9, 60),   -- Tablet
(1, 640.00, 7, 61),    -- Webcam
(1, 2210.00, 2, 61),   -- Smartphone
(2, 1960.00, 4, 62),   -- Teclado x2
(1, 890.00, 13, 62),   -- Microfone
(1, 980.00, 62, 63),   -- Relógio
(2, 1080.00, 109, 63), -- Tapete x2
(3, 4470.00, 1, 64),   -- Notebook x3
(1, 370.00, 18, 65),   -- Chromecast
(2, 3600.00, 1, 66),   -- Notebook x2

-- Pedidos 81-90
(1, 820.00, 13, 67),   -- Microfone
(1, 1280.00, 5, 68),   -- Headphone
(1, 590.00, 99, 69),   -- Air Fryer (CANCELADO)
(1, 2320.00, 2, 70),   -- Smartphone
(2, 1420.00, 103, 71), -- Jogo de Toalhas x2
(1, 710.00, 17, 71),   -- Kindle
(1, 1890.00, 9, 72),   -- Tablet
(2, 900.00, 3, 73),    -- Mouse x2
(1, 3650.00, 1, 74),   -- Notebook
(2, 1840.00, 139, 75), -- Halteres 5kg x2

-- Pedidos 91-100
(1, 920.00, 62, 75),   -- Relógio
(3, 2070.00, 103, 76), -- Jogo de Toalhas x3
(1, 680.00, 33, 77),   -- Drone (CANCELADO)
(1, 2750.00, 2, 78),   -- Smartphone
(1, 540.00, 7, 79),    -- Webcam
(2, 3920.00, 1, 80),   -- Notebook x2
(1, 790.00, 62, 81),   -- Relógio
(2, 1270.00, 5, 82),   -- Headphone x2
(1, 420.00, 99, 83),   -- Air Fryer (CANCELADO)
(1, 3280.00, 2, 84),   -- Smartphone

-- Pedidos 101-110
(2, 1740.00, 139, 85), -- Halteres 5kg x2
(3, 1950.00, 111, 86), -- Ferro x3
(1, 580.00, 7, 87),    -- Webcam
(1, 2180.00, 2, 88),   -- Smartphone
(2, 1460.00, 111, 89), -- Ferro x2
(1, 1820.00, 9, 90),   -- Tablet
(1, 490.00, 103, 91),  -- Jogo de Toalhas
(1, 2940.00, 2, 92),   -- Smartphone
(2, 1300.00, 111, 93), -- Ferro x2
(1, 1350.00, 6, 94),   -- Headphone

-- Pedidos 111-120
(1, 520.00, 7, 95),    -- Webcam
(1, 3520.00, 1, 96),   -- Notebook
(2, 1820.00, 139, 97), -- Halteres 5kg x2
(3, 1440.00, 103, 98), -- Jogo de Toalhas x3 (CANCELADO)
(1, 620.00, 7, 99),    -- Webcam
(1, 2650.00, 2, 100),  -- Smartphone

-- Pedidos 121-130
(2, 1560.00, 62, 101), -- Relógio x2
(1, 1420.00, 6, 102),  -- Headphone
(1, 550.00, 7, 103),   -- Webcam
(1, 2890.00, 2, 104),  -- Smartphone
(2, 1380.00, 103, 105), -- Jogo de Toalhas x2
(3, 2145.00, 111, 106), -- Ferro x3
(1, 430.00, 99, 107),  -- Air Fryer
(1, 3150.00, 1, 108),  -- Notebook
(1, 820.00, 62, 109),  -- Relógio (CANCELADO)
(2, 3180.00, 1, 110),  -- Notebook x2

-- Pedidos 131-140
(1, 470.00, 103, 111), -- Jogo de Toalhas
(1, 2420.00, 2, 112),  -- Smartphone
(2, 1480.00, 111, 113), -- Ferro x2
(1, 1280.00, 5, 114),  -- Headphone
(1, 590.00, 7, 115),   -- Webcam
(1, 3680.00, 1, 116),  -- Notebook
(2, 1700.00, 139, 117), -- Halteres 5kg x2
(3, 1380.00, 103, 118), -- Jogo de Toalhas x3
(1, 520.00, 99, 119),  -- Air Fryer
(1, 2760.00, 2, 120),  -- Smartphone

-- Pedidos 141-150
(2, 1360.00, 103, 121), -- Jogo de Toalhas x2
(1, 1920.00, 9, 122),   -- Tablet
(1, 410.00, 99, 123),   -- Air Fryer (CANCELADO)
(1, 3340.00, 1, 124),   -- Notebook
(2, 1580.00, 62, 125),  -- Relógio x2
(3, 1530.00, 109, 126), -- Tapete x3
(1, 630.00, 7, 127),    -- Webcam
(1, 2980.00, 2, 128),   -- Smartphone
(2, 1440.00, 111, 129), -- Ferro x2
(1, 1680.00, 5, 130),   -- Headphone

-- Pedidos 151-160
(1, 490.00, 103, 131), -- Jogo de Toalhas
(1, 2540.00, 2, 132),  -- Smartphone
(2, 1740.00, 139, 133), -- Halteres 5kg x2
(3, 1350.00, 3, 134),  -- Mouse x3
(1, 560.00, 7, 135),   -- Webcam
(1, 3820.00, 1, 136),  -- Notebook
(2, 1880.00, 139, 137), -- Halteres 5kg x2
(1, 1470.00, 6, 138),  -- Headphone (CANCELADO)
(1, 610.00, 7, 139),   -- Webcam
(1, 2690.00, 2, 140),  -- Smartphone

-- Pedidos 161-170
(2, 1500.00, 111, 141), -- Ferro x2
(1, 1840.00, 9, 142),   -- Tablet
(1, 440.00, 103, 143),  -- Jogo de Toalhas
(1, 3150.00, 1, 144),   -- Notebook
(2, 1640.00, 62, 145),  -- Relógio x2
(3, 1590.00, 109, 146), -- Tapete x3
(1, 580.00, 7, 147),    -- Webcam
(1, 2420.00, 2, 148),   -- Smartphone
(2, 1820.00, 139, 149), -- Halteres 5kg x2
(1, 1280.00, 5, 150),   -- Headphone

-- Pedidos 171-180
(1, 670.00, 7, 151),   -- Webcam
(1, 1950.00, 9, 152),  -- Tablet
(1, 530.00, 103, 153), -- Jogo de Toalhas
(1, 3270.00, 1, 154),  -- Notebook
(2, 1560.00, 62, 155), -- Relógio x2
(3, 1420.00, 103, 156), -- Jogo de Toalhas x3
(1, 510.00, 99, 157),  -- Air Fryer (CANCELADO)
(1, 2890.00, 2, 158),  -- Smartphone
(2, 1680.00, 139, 159), -- Halteres 5kg x2
(1, 1630.00, 6, 160),  -- Headphone

-- Pedidos 181-190
(1, 590.00, 7, 161),   -- Webcam
(1, 2540.00, 2, 162),  -- Smartphone
(2, 1440.00, 111, 163), -- Ferro x2
(1, 1380.00, 5, 164),  -- Headphone
(1, 460.00, 103, 165), -- Jogo de Toalhas
(1, 3950.00, 1, 166),  -- Notebook
(2, 1760.00, 139, 167), -- Halteres 5kg x2
(3, 1540.00, 109, 168), -- Tapete x3
(1, 620.00, 7, 169),   -- Webcam
(1, 2780.00, 2, 170),  -- Smartphone

-- Pedidos 191-200
(2, 1500.00, 111, 171), -- Ferro x2
(1, 1690.00, 6, 172),   -- Headphone (CANCELADO)
(1, 480.00, 103, 173),  -- Jogo de Toalhas
(1, 3420.00, 1, 174),   -- Notebook
(2, 1620.00, 62, 175),  -- Relógio x2
(3, 1460.00, 103, 176), -- Jogo de Toalhas x3
(1, 550.00, 7, 177),    -- Webcam
(1, 2920.00, 2, 178),   -- Smartphone
(2, 1380.00, 103, 179), -- Jogo de Toalhas x2
(1, 1820.00, 9, 180),   -- Tablet

-- Pedidos 201-210
(1, 570.00, 7, 181),   -- Webcam
(1, 2650.00, 2, 182),  -- Smartphone
(2, 1840.00, 139, 183), -- Halteres 5kg x2
(3, 1370.00, 103, 184), -- Jogo de Toalhas x3
(1, 630.00, 7, 185),   -- Webcam
(1, 3580.00, 1, 186),  -- Notebook
(2, 1720.00, 139, 187), -- Halteres 5kg x2
(1, 1520.00, 6, 188),  -- Headphone
(1, 490.00, 99, 189),  -- Air Fryer (CANCELADO)
(1, 2840.00, 2, 190),  -- Smartphone

-- Pedidos 211-220
(2, 1540.00, 62, 191), -- Relógio x2
(1, 1780.00, 9, 192),  -- Tablet
(1, 520.00, 103, 193), -- Jogo de Toalhas
(1, 3190.00, 1, 194),  -- Notebook
(2, 1700.00, 139, 195), -- Halteres 5kg x2
(3, 1610.00, 109, 196), -- Tapete x3
(1, 610.00, 7, 197),   -- Webcam
(1, 2470.00, 2, 198),  -- Smartphone
(2, 1880.00, 139, 199), -- Halteres 5kg x2
(1, 1290.00, 5, 200),  -- Headphone

-- Pedidos 221-230
(1, 710.00, 7, 201),   -- Webcam
(1, 2130.00, 2, 202),  -- Smartphone
(1, 560.00, 103, 203), -- Jogo de Toalhas
(1, 3410.00, 1, 204),  -- Notebook
(2, 1640.00, 62, 205), -- Relógio x2
(3, 1560.00, 109, 206), -- Tapete x3
(1, 490.00, 99, 207),  -- Air Fryer
(1, 2970.00, 2, 208),  -- Smartphone
(1, 750.00, 17, 209),  -- Kindle (CANCELADO)
(2, 2960.00, 6, 210),  -- Headphone x2

-- Pedidos 231-240
(1, 620.00, 7, 211),   -- Webcam
(1, 2680.00, 2, 212),  -- Smartphone
(2, 1580.00, 62, 213), -- Relógio x2
(1, 1340.00, 5, 214),  -- Headphone
(1, 530.00, 103, 215), -- Jogo de Toalhas
(1, 4050.00, 1, 216),  -- Notebook
(2, 1740.00, 139, 217), -- Halteres 5kg x2
(3, 1620.00, 109, 218), -- Tapete x3
(1, 580.00, 7, 219),   -- Webcam
(1, 2820.00, 2, 220),  -- Smartphone

-- Pedidos 241-250
(2, 1480.00, 111, 221), -- Ferro x2
(1, 1890.00, 9, 222),   -- Tablet
(1, 450.00, 103, 223),  -- Jogo de Toalhas
(1, 3620.00, 1, 224),   -- Notebook (CANCELADO)
(2, 1820.00, 139, 225), -- Halteres 5kg x2
(3, 1530.00, 109, 226), -- Tapete x3
(1, 670.00, 7, 227),    -- Webcam
(1, 2540.00, 2, 228),   -- Smartphone
(2, 1440.00, 111, 229), -- Ferro x2
(1, 1760.00, 6, 230),   -- Headphone

-- Pedidos 251-260
(1, 590.00, 7, 231),   -- Webcam
(1, 2910.00, 2, 232),  -- Smartphone
(2, 1700.00, 139, 233), -- Halteres 5kg x2
(3, 1420.00, 103, 234), -- Jogo de Toalhas x3
(1, 610.00, 7, 235),   -- Webcam
(1, 3270.00, 1, 236),  -- Notebook
(2, 1860.00, 139, 237), -- Halteres 5kg x2
(1, 1680.00, 6, 238),  -- Headphone
(1, 520.00, 103, 239), -- Jogo de Toalhas
(1, 2750.00, 2, 240),  -- Smartphone

-- Pedidos 261-270
(2, 1560.00, 62, 241), -- Relógio x2
(1, 1840.00, 9, 242),  -- Tablet (CANCELADO)
(1, 560.00, 103, 243), -- Jogo de Toalhas
(1, 3480.00, 1, 244),  -- Notebook
(2, 1780.00, 139, 245), -- Halteres 5kg x2
(3, 1570.00, 109, 246), -- Tapete x3
(1, 640.00, 7, 247),   -- Webcam
(1, 2630.00, 2, 248),  -- Smartphone
(2, 1940.00, 139, 249), -- Halteres 5kg x2
(1, 1390.00, 5, 250),  -- Headphone

-- Pedidos 271-280
(1, 680.00, 7, 251),   -- Webcam
(1, 1920.00, 9, 252),  -- Tablet
(1, 540.00, 103, 253), -- Jogo de Toalhas
(1, 3150.00, 1, 254),  -- Notebook
(2, 1520.00, 62, 255), -- Relógio x2
(3, 1480.00, 103, 256), -- Jogo de Toalhas x3
(1, 510.00, 99, 257),  -- Air Fryer (CREATED)
(1, 2840.00, 2, 258),  -- Smartphone
(1, 820.00, 62, 259),  -- Relógio (CREATED)
(2, 3220.00, 6, 260),  -- Headphone x2

-- Pedidos 281-290
(1, 590.00, 7, 261),   -- Webcam
(1, 2560.00, 2, 262),  -- Smartphone
(1, 730.00, 17, 263),  -- Kindle (CREATED)
(3, 1370.00, 103, 264), -- Jogo de Toalhas x3
(1, 480.00, 99, 265),  -- Air Fryer
(1, 3890.00, 1, 266),  -- Notebook
(1, 850.00, 13, 267),  -- Microfone (CREATED)
(2, 3180.00, 6, 268),  -- Headphone x2
(1, 620.00, 7, 269),   -- Webcam
(1, 2730.00, 2, 270),  -- Smartphone

-- Pedidos 291-300
(1, 710.00, 17, 271),  -- Kindle (CREATED)
(1, 1820.00, 9, 272),  -- Tablet
(1, 470.00, 103, 273), -- Jogo de Toalhas
(1, 3540.00, 1, 274),  -- Notebook
(1, 890.00, 13, 275),  -- Microfone (CREATED)
(2, 3020.00, 6, 276),  -- Headphone x2
(1, 650.00, 7, 277),   -- Webcam
(1, 2620.00, 2, 278),  -- Smartphone
(1, 740.00, 17, 279),  -- Kindle (CREATED)
(1, 1750.00, 9, 280),  -- Tablet
(1, 580.00, 103, 281), -- Jogo de Toalhas
(1, 2980.00, 2, 282),  -- Smartphone
(1, 870.00, 13, 283),  -- Microfone (CREATED)
(1, 1430.00, 5, 284),  -- Headphone
(1, 600.00, 7, 285),   -- Webcam
(1, 3390.00, 1, 286),  -- Notebook
(1, 920.00, 62, 287),  -- Relógio (CREATED)
(1, 1660.00, 6, 288),  -- Headphone
(1, 530.00, 103, 289), -- Jogo de Toalhas
(1, 2710.00, 2, 290),  -- Smartphone
(1, 790.00, 17, 291),  -- Kindle (CREATED)
(1, 1870.00, 9, 292),  -- Tablet
(1, 550.00, 103, 293), -- Jogo de Toalhas
(1, 3260.00, 1, 294),  -- Notebook
(1, 910.00, 13, 295),  -- Microfone (CREATED)
(1, 1540.00, 5, 296),  -- Headphone
(1, 670.00, 7, 297),   -- Webcam
(1, 2590.00, 2, 298),  -- Smartphone
(1, 950.00, 62, 299),  -- Relógio (CREATED)
(1, 1410.00, 5, 300);  -- Headphone (CREATED)

-- Verificar quantidade inserida
SELECT COUNT(*) as total_itens FROM order_items;
SELECT order_id, COUNT(*) as qtd_itens, SUM(subtotal) as total_calculado
FROM order_items
GROUP BY order_id
LIMIT 20;