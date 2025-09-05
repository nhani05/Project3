package com.javaweb.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "assignmentbuilding")
public class AssignmentBuildingEntity extends BaseEntity {

    @ManyToOne
    @JoinColumn(name = "buildingid")
    private BuildingEntity buildingEntity;

    @ManyToOne
    @JoinColumn(name = "staffid")
    private UserEntity userEntity;

    public BuildingEntity getBuildingEntity() {
        return buildingEntity;
    }

    public void setBuildingEntity(BuildingEntity buildingEntity) {
        this.buildingEntity = buildingEntity;
    }

    public UserEntity getUserEntity() {
        return userEntity;
    }

    public void setUserEntity(UserEntity userEntity) {
        this.userEntity = userEntity;
    }
    //    staffid bigint
//    buildingid bigint
//    createddate datetime
//    modifieddate datetime
//    createdby varchar(255)
//    modifiedby varchar(255)

}
