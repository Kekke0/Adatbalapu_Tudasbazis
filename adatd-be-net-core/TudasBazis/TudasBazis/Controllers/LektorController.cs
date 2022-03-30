using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Oracle.ManagedDataAccess.Client;

namespace TudasBazis.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LektorController : ControllerBase
    {
        [HttpGet(Name = "Lektor")]
        public String Get()
        {
            List<Array> arrays = new List<Array>();
            String connectionString = "User Id=EN;Password=jelszaw;Data Source=localhost/xe";
            String queryString = "select * from lektor";
            using (OracleConnection connection = new OracleConnection(connectionString))
            {
                OracleCommand command = new OracleCommand(queryString, connection);
                command.Connection.Open();
                command.ExecuteNonQuery();

                command.CommandText = queryString;
                OracleDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    string nev = (string)reader["NEV"];
                    string id = (string)reader["ID"];
                    string email = (string)reader["EMAIL"];
                    string szakterulet = (string)reader["SZAKTERULET"];
                    string intezet = (string)reader["INTEZET"];
                    string tudfok = (string)reader["TUDOMANYOS_FOKOZAT"];
                    String[] sor = new string[6] { nev, id, email, szakterulet, intezet, tudfok };
                    arrays.Add(sor);
                }
            }

            return Newtonsoft.Json.JsonConvert.SerializeObject(arrays);
        }
    }
}
