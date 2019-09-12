using Senai.OpFlix.WebApi.Domains;
using Senai.OpFlix.WebApi.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.OpFlix.WebApi.Repositories
{
    public class LancamentoRepository : ILancamentoRepository
    {
        public List<Lancamentos> Listar()
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                return ctx.Lancamentos.ToList();
            }
        }

        public void Cadastrar(Lancamentos lancamento)
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                ctx.Lancamentos.Add(lancamento);
                ctx.SaveChanges();
            }
        }

        public void Atualizar(Lancamentos lancamento)
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                Lancamentos lancamentoBuscado = ctx.Lancamentos.FirstOrDefault(x => x.IdLancamento == lancamento.IdLancamento);
                lancamentoBuscado.IdCategoria = lancamento.IdCategoria;
                lancamentoBuscado.Titulo = lancamento.Titulo;
                lancamentoBuscado.Sinopse = lancamento.Sinopse;
                lancamentoBuscado.TempoDuracao = lancamento.TempoDuracao;
                lancamentoBuscado.IdFormato = lancamento.IdFormato;
                lancamentoBuscado.IdVeiculos = lancamento.IdVeiculos;
                lancamentoBuscado.DataLancamento = lancamento.DataLancamento;

                ctx.Lancamentos.Update(lancamentoBuscado);
                ctx.SaveChanges();
            }
        }

        public Lancamentos BuscarPorId(int id)
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                return ctx.Lancamentos.FirstOrDefault(x => x.IdLancamento == id);
            }
        }

        public void Deletar(int id)
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                Lancamentos LancamentoBuscado = ctx.Lancamentos.Find(id);
                ctx.Lancamentos.Remove(LancamentoBuscado);
                ctx.SaveChanges();
            }
        }
    }
}
