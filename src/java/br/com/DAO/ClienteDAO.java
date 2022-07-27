/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.DAO;

import br.com.DTO.ClienteDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author sala19a
 */
public class ClienteDAO {
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<ClienteDTO> lista = new ArrayList<>();
    
    
    public void cadastrarCliente(ClienteDTO objClienteDTO) throws ClassNotFoundException{
        String sql = "insert into clientes(nome) values (?)";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objClienteDTO.getNome());
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
        }
        
        }
    
        public ArrayList<ClienteDTO> PesquisarCliente() throws ClassNotFoundException{
            String sql = "select * from clientes";
            con = new ConexaoDAO().conexaoBD();
            
            try {
                pstm = con.prepareStatement(sql);
                rs = pstm.executeQuery(sql);
                
                while(rs.next()){
                ClienteDTO objClienteDTO = new ClienteDTO();
                objClienteDTO.setId(rs.getInt("id"));            
                objClienteDTO.setNome(rs.getString("nome"));
                
                lista.add(objClienteDTO);
                
                }
            } catch (Exception e) {
            }
            return lista;
        }
    
    
    
    }    
    

