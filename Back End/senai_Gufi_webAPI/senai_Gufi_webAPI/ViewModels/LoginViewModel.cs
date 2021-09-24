using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace senai_Gufi_webAPI.ViewModels
{
    /// <summary>
    /// Classe responsável pelo modelo de Login
    /// </summary>
    public class LoginViewModel
    {
        [Required(ErrorMessage = "Informe o E-mail do Usuário!")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Informe o Senha do Usuário!")]
        public string Senha { get; set; }
    }
}
