﻿using Microsoft.EntityFrameworkCore;
using Senai.OpFlix.WebApi.Domains;
using Senai.OpFlix.WebApi.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.OpFlix.WebApi.Repositories
{
    public class CategoriaRepository : ICategoriaRepository
    {
        public List<Categorias> Listar()
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                return ctx.Categorias.ToList();
            }
        }

        public void Cadastrar(Categorias categoria)
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                ctx.Categorias.Add(categoria);
                ctx.SaveChanges();
            }
        }

        public void Atualizar(Categorias categoria)
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                Categorias categoriaBuscada = ctx.Categorias.FirstOrDefault(x => x.IdCategoria == categoria.IdCategoria);
                categoriaBuscada.Categoria = categoria.Categoria;
                ctx.Categorias.Update(categoriaBuscada);
                ctx.SaveChanges();
            }
        }

        public Categorias BuscarPorId(int id)
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                return ctx.Categorias.FirstOrDefault(x => x.IdCategoria == id);
            }
        }
    }
}
