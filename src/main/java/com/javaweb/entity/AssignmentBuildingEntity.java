package com.javaweb.entity;

import javax.persistence.*;

@Entity(name = "assignmentbuilding")
public class AssignmentBuildingEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
//    id bigint AI PK

    @Column("ma")
    staffid bigint
    buildingid bigint
    createddate datetime
    modifieddate datetime
    createdby varchar(255)
    modifiedby varchar(255)

}
