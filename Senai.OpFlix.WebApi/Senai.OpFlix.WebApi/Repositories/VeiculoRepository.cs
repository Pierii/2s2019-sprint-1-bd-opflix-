using Senai.OpFlix.WebApi.Domains;
using Senai.OpFlix.WebApi.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.OpFlix.WebApi.Repositories
{
    public class VeiculoRepository : IVeiculoRepository
    {
        public List<Veiculos> Listar()
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                return ctx.Veiculos.ToList();
            }
        }

        public void Cadastrar(Veiculos veiculo)
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                ctx.Veiculos.Add(veiculo);
                ctx.SaveChanges();
            }
        }

        public void Atualizar(Veiculos veiculo)
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                Veiculos veiculoBuscado = ctx.Veiculos.FirstOrDefault(x => x.IdVeiculo == veiculo.IdVeiculo);
                veiculoBuscado.Veiculo = veiculo.Veiculo;
                ctx.Veiculos.Update(veiculoBuscado);
                ctx.SaveChanges();
            }
        }

        public Veiculos BuscarPorId(int id)
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                return ctx.Veiculos.FirstOrDefault(x => x.IdVeiculo == id);
            }
        }
    }
}
