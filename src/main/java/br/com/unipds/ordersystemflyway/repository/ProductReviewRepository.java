package br.com.unipds.ordersystemflyway.repository;

import br.com.unipds.ordersystemflyway.entity.ProductReview;
import br.com.unipds.ordersystemflyway.entity.ProductReviewId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

/**
 * Repository Spring Data JPA para a entidade ProductReview.
 *
 * CONCEITOS SPRING DATA JPA DEMONSTRADOS:
 * - JpaRepository<ProductReview, ProductReviewId>: Usa ProductReviewId como tipo da chave COMPOSTA
 * - JpaSpecificationExecutor<ProductReview>: Permite queries dinamicas com Criteria API
 * - Query Methods com chave composta: Navegacao pelos campos (id.userId, id.productId)
 * - @Query com JPQL: Queries customizadas em Java Persistence Query Language
 * - @Query com nativeQuery: Queries SQL nativas do banco de dados
 * - Specifications: Queries dinamicas e reusaveis (Criteria API)
 *
 * CHAVE COMPOSTA:
 * - Entidades com @Id simples: JpaRepository<User, Long>
 * - Entidades com @EmbeddedId: JpaRepository<ProductReview, ProductReviewId>
 *
 * COMO BUSCAR POR ID COMPOSTO:
 * ```
 * ProductReviewId id = new ProductReviewId(userId, productId);
 * Optional<ProductReview> review = repository.findById(id);
 * ```
 *
 * COMPARACAO DAS ABORDAGENS:
 *
 * 1. QUERY METHOD (Mais simples):
 *    - Vantagem: Sem codigo, apenas nome do metodo
 *    - Desvantagem: Nomes ficam grandes com chave composta
 *    - Exemplo: findById_UserId(Long userId)
 *
 * 2. JPQL - Java Persistence Query Language (Portavel):
 *    - Vantagem: Orientado a objetos, independente do banco
 *    - Desvantagem: Sintaxe propria para aprender
 *    - Exemplo: @Query("SELECT pr FROM ProductReview pr WHERE pr.id.userId = :userId")
 *
 * 3. NATIVE QUERY (Especifico do banco):
 *    - Vantagem: SQL puro, recursos especificos do MySQL
 *    - Desvantagem: Nao portavel entre bancos
 *    - Exemplo: @Query(value = "SELECT * FROM product_reviews WHERE user_id = ?", nativeQuery = true)
 *
 * 4. SPECIFICATION (Queries dinamicas):
 *    - Vantagem: Reusavel, composicao de criterios, type-safe
 *    - Desvantagem: Mais verboso com chave composta
 *    - Exemplo: findAll(ProductReviewSpecifications.byUser(userId))
 *
 * @see ProductReview
 * @see ProductReviewId
 * @see br.com.unipds.ordersystemflyway.repository.specification.ProductReviewSpecifications
 */
@Repository
public interface ProductReviewRepository extends JpaRepository<ProductReview, ProductReviewId>,
        JpaSpecificationExecutor<ProductReview> {

    // ==================== QUERY METHODS ====================

    /**
     * Busca todas as avaliacoes feitas por um usuario especifico.
     *
     * Query Method com navegacao na chave composta:
     * - "id.userId" acessa o campo userId dentro de ProductReviewId
     * - Spring gera: SELECT * FROM product_reviews WHERE user_id = ?
     *
     * @param userId ID do usuario
     * @return Lista de avaliacoes do usuario
     */
    List<ProductReview> findById_UserId(Long userId);

    /**
     * Busca todas as avaliacoes de um produto especifico.
     *
     * Query Method com navegacao na chave composta:
     * - "id.productId" acessa o campo productId dentro de ProductReviewId
     * - Spring gera: SELECT * FROM product_reviews WHERE product_id = ?
     *
     * @param productId ID do produto
     * @return Lista de avaliacoes do produto
     */
    List<ProductReview> findById_ProductId(Long productId);

    /**
     * Busca a avaliacao de um usuario para um produto especifico.
     *
     * IMPORTANTE: Esta e a forma recomendada de buscar por chave composta.
     * Alternativamente, voce pode usar findById(new ProductReviewId(userId, productId)).
     *
     * @param userId    ID do usuario
     * @param productId ID do produto
     * @return Optional contendo a avaliacao se existir
     */
    Optional<ProductReview> findByIdUserIdAndIdProductId(Long userId, Long productId);

    /**
     * Verifica se um usuario ja avaliou um produto.
     *
     * Query Method com chave composta.
     * Util para validacoes: "Este usuario ja avaliou este produto?"
     *
     * @param userId    ID do usuario
     * @param productId ID do produto
     * @return true se ja existe uma avaliacao
     */
    boolean existsByIdUserIdAndIdProductId(Long userId, Long productId);

    /**
     * Busca avaliacoes com nota maior ou igual ao minimo.
     *
     * Query Method simples.
     *
     * @param minRating Nota minima
     * @return Lista de avaliacoes com nota >= minRating
     */
    List<ProductReview> findByRatingGreaterThanEqual(Integer minRating);

    // ==================== JPQL QUERIES ====================

    /**
     * Busca avaliacoes de um usuario usando JPQL.
     *
     * JPQL (Java Persistence Query Language):
     * - Usa nomes de ENTIDADES (ProductReview) ao inves de TABELAS (product_reviews)
     * - Navegacao na chave composta: pr.id.userId
     * - Independente do banco de dados (portavel)
     *
     * EQUIVALENTE Query Method: findById_UserId(Long userId)
     *
     * @param userId ID do usuario
     * @return Lista de avaliacoes do usuario
     */
    @Query("SELECT pr FROM ProductReview pr WHERE pr.id.userId = :userId")
    List<ProductReview> findReviewsByUserUsingJPQL(@Param("userId") Long userId);

    /**
     * Busca avaliacoes de um produto com nota maior ou igual ao minimo usando JPQL.
     *
     * JPQL navegando pelos campos da chave composta e outros atributos.
     *
     * IMPORTANTE: Demonstra que podemos usar campos da chave composta (id.productId)
     * junto com campos normais (rating) na mesma query.
     *
     * @param productId ID do produto
     * @param minRating Nota minima
     * @return Lista de avaliacoes que atendem os criterios
     */
    @Query("SELECT pr FROM ProductReview pr WHERE pr.id.productId = :productId AND pr.rating >= :minRating")
    List<ProductReview> findHighRatedReviews(@Param("productId") Long productId, @Param("minRating") Integer minRating);

    /**
     * Calcula a media de avaliacoes de um produto usando JPQL.
     *
     * JPQL com agregacao AVG.
     * Retorna Double ao inves de uma List.
     *
     * @param productId ID do produto
     * @return Media das avaliacoes
     */
    @Query("SELECT AVG(pr.rating) FROM ProductReview pr WHERE pr.id.productId = :productId")
    Double calculateAverageRating(@Param("productId") Long productId);

    /**
     * Busca avaliacoes com usuario e produto carregados (JOIN FETCH).
     *
     * JPQL com multiplos JOIN FETCH:
     * - JOIN FETCH pr.user: Carrega User relacionado
     * - JOIN FETCH pr.product: Carrega Product relacionado
     * - Evita problema N+1
     *
     * @param productId ID do produto
     * @return Lista de avaliacoes com relacionamentos carregados
     */
    @Query("SELECT pr FROM ProductReview pr JOIN FETCH pr.user JOIN FETCH pr.product WHERE pr.id.productId = :productId")
    List<ProductReview> findReviewsWithRelationshipsByProduct(@Param("productId") Long productId);

    // ==================== NATIVE QUERIES ====================

    /**
     * Busca avaliacoes de um produto usando SQL nativo.
     *
     * NATIVE QUERY:
     * - SQL puro do banco de dados (MySQL neste caso)
     * - Usa nomes de TABELAS (product_reviews) e COLUNAS (product_id)
     * - nativeQuery = true OBRIGATORIO
     *
     * CHAVE COMPOSTA: Em native queries, usamos as colunas separadas
     * (user_id, product_id) ao inves do objeto ProductReviewId.
     *
     * @param productId ID do produto
     * @return Lista de avaliacoes do produto
     */
    @Query(value = "SELECT * FROM product_reviews WHERE product_id = ?1", nativeQuery = true)
    List<ProductReview> findReviewsByProductNative(Long productId);

    /**
     * Busca avaliacoes com estatisticas usando SQL nativo.
     *
     * Native Query com funcoes de agregacao MySQL:
     * - COUNT(*): Total de avaliacoes
     * - AVG(rating): Media de notas
     * - MIN(rating): Menor nota
     * - MAX(rating): Maior nota
     *
     * IMPORTANTE: Retorna Object[] com [count, avg, min, max].
     *
     * @param productId ID do produto
     * @return Array com estatisticas [count, avg, min, max]
     */
    @Query(value = "SELECT COUNT(*), AVG(rating), MIN(rating), MAX(rating) " +
            "FROM product_reviews WHERE product_id = ?1",
            nativeQuery = true)
    Object[] getReviewStatistics(Long productId);

    /**
     * Busca produtos mais bem avaliados usando SQL nativo.
     *
     * Native Query com JOIN, GROUP BY, ORDER BY e LIMIT:
     * - JOIN entre product_reviews e products
     * - AVG(rating): Media das avaliacoes
     * - COUNT(*): Quantidade de avaliacoes
     * - HAVING COUNT(*) >= 3: Produtos com pelo menos 3 avaliacoes
     * - ORDER BY DESC: Ordena do melhor para o pior
     * - LIMIT: Retorna apenas os top N
     *
     * Retorna Object[] com [product_id, product_name, avg_rating, review_count].
     *
     * @param limit Quantidade de produtos a retornar
     * @return Lista de arrays [product_id, product_name, avg_rating, review_count]
     */
    @Query(value = "SELECT p.id, p.name, AVG(pr.rating) as avg_rating, COUNT(*) as review_count " +
            "FROM product_reviews pr " +
            "JOIN products p ON pr.product_id = p.id " +
            "GROUP BY p.id, p.name " +
            "HAVING COUNT(*) >= 3 " +
            "ORDER BY avg_rating DESC " +
            "LIMIT ?1",
            nativeQuery = true)
    List<Object[]> findTopRatedProducts(int limit);

    // ==================== SPECIFICATIONS ====================
    // Os metodos de Specification sao herdados de JpaSpecificationExecutor:
    // - findAll(Specification<ProductReview> spec)
    // - findOne(Specification<ProductReview> spec)
    // - count(Specification<ProductReview> spec)
    // - exists(Specification<ProductReview> spec)
    //
    // Uso:
    // productReviewRepository.findAll(ProductReviewSpecifications.byUser(userId));
    // productReviewRepository.findAll(ProductReviewSpecifications.byProduct(productId));
    //
    // Composicao (AND, OR):
    // productReviewRepository.findAll(
    //     Specification.where(ProductReviewSpecifications.byProduct(productId))
    //         .and(ProductReviewSpecifications.ratingGreaterThan(4))
    // );
    //
    // Veja a classe ProductReviewSpecifications para exemplos de implementacao.
}
