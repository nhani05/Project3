package com.javaweb.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "role")
public class RoleEntity extends BaseEntity {

    private static final long serialVersionUID = -6525302831793188081L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "code")
    private String code;
    @ManyToMany(mappedBy = "roleEntities")
    private List<UserEntity> userEntities = new ArrayList<UserEntity>();

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    //----------------------------------------------------------------------------------------
    public List<UserEntity> getUserEntities() {
        return userEntities;
    }

    public void setUserEntities(List<UserEntity> userEntities) {
        this.userEntities = userEntities;
    }


    @Override
    public Long getId() {
        return id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

//

}


//    @ManyToMany(mappedBy = "roles", fetch = FetchType.LAZY)
//    private List<UserEntity> user = new ArrayList<>();

//    @OneToMany(mappedBy="roles",fetch = FetchType.LAZY)
//    private List<UserRoleEntity> userRoleEntities = new ArrayList<>();

//    public List<UserEntity> getUsers() {
/// /        return user;
/// /    }
/// /
/// /    public void setUsers(List<UserEntity> users) {
/// /        this.user = users;
/// /    }