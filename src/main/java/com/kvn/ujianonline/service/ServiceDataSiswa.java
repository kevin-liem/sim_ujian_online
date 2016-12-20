package com.kvn.ujianonline.service;

import com.kvn.ujianonline.dao.DaoUser;
import com.kvn.ujianonline.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Novan on 19/12/2016.
 */
@Service
public class ServiceDataSiswa {
    @Autowired
    private DaoUser daoUser;

    public DaoUser getDao() {
        return daoUser;
    }

    public void save(User user) {
        daoUser.save(user);
    }

    public boolean update(User user) {
        User oldUser = daoUser.findOne(user.getId_user());
        if(oldUser != null){
            oldUser.setUsername(user.getUsername());
            daoUser.save(oldUser);
            oldUser.setNisn(user.getNisn());
            daoUser.save(oldUser);
            oldUser.setJurusan(user.getJurusan());
            daoUser.save(oldUser);
            return true;
        }
        return false;
    }

    public List<User> getAll() {
        return daoUser.findAll();
    }

    public User getById(Long userId) {
        return daoUser.findOne(userId);
    }

    public void delete(Long userId) {
        daoUser.delete(userId);
    }
}
