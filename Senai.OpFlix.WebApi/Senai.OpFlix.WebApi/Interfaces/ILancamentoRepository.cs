using Senai.OpFlix.WebApi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.OpFlix.WebApi.Interfaces
{
    interface ILancamentoRepository
    {
        List<Lancamentos> Listar();

        Lancamentos BuscarPorId(int id);

        List<Lancamentos> BuscarPorCategoria(int categoria);

        List<Lancamentos> BuscarPorData(DateTime data);

        void Cadastrar(Lancamentos lancamentos);

        void Atualizar(Lancamentos lancamentos);

        void Deletar(int id);

        
    }
}
