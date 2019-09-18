using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using ProdutoCrud.Models;

namespace ProdutoCrud.Controllers
{
    public class ProdutoesController : Controller
    {
        private readonly ProdutoContext _context;

        public ProdutoesController(ProdutoContext context)
        {
            _context = context;
        }

        // GET: Produtoes
        public async Task<IActionResult> Index()
        {
            return View(await _context.Produtos.ToListAsync());
        }

        // GET: Produtoes/Create
        public IActionResult AdicionarOuEditar(int id = 0)
        {
            if (id == 0)
                return View(new Produto());
            else
                return View(_context.Produtos.Find(id));
        }

        // POST: Produtoes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> AdicionarOuEditar([Bind("ProdutoID,ProdutoNome,ProdutoPreco,ProdutoEstoque")] Produto produto)
        {
            if (ModelState.IsValid)
            {
                if (produto.ProdutoID == 0)
                    _context.Add(produto);
                else
                    _context.Update(produto);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(produto);
        }
        // GET: Produtoes/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            var prod =await _context.Produtos.FindAsync(id);
            _context.Produtos.Remove(prod);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

    }
}
