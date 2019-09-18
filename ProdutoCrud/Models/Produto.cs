using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace ProdutoCrud.Models
{
    public class Produto
    {
        [Key]
        public int ProdutoID { get; set; }
        [Column(TypeName = "nvarchar(250)")]
        [Required(ErrorMessage = "O campo acima é obrigatório!")]
        [DisplayName("Nome do Produto")]
        public string ProdutoNome { get; set; }
        [Required(ErrorMessage = "O campo acima é obrigatório!")]
        [DisplayName("Preço do Produto")]
        public decimal ProdutoPreco { get; set; }
        [DisplayName("Estoque do Produto")]
        public int ProdutoEstoque { get; set; }
    }
}
